import os
import shutil
from fastai.vision import *
from fastai.metrics import error_rate
from pathlib import Path


def DirectoryMaking() :
	labels = ['cardboard', 'glass', 'metal', 'paper', 'plastic', 'trash']
	if(not os.path.exists('data/test')):
		os.makedirs('data/test')
	for label in labels:
		trainFolder = os.path.join('data','train',label)
		if(not os.path.exists(trainFolder)):
			os.makedirs(trainFolder)
		validFolder = os.path.join('data','valid',label)
		if (not os.path.exists(validFolder)):
			os.makedirs(validFolder)

		random.seed(1)
		numFiles = len(os.listdir(os.path.join('originalData', label)))
		allFileNums = list(range(1, numFiles + 1))
		trainFileNums = random.sample(list(range(1, numFiles + 1)), int(.5 * numFiles))
		remainingFileNums = list(set(allFileNums) - set(trainFileNums))
		validFileNums = random.sample(remainingFileNums, int(0.5 * len(remainingFileNums)))
		testFileNums = list(set(remainingFileNums) - set(validFileNums))

		trainFileNamesInDirectory = [label+str(i)+".jpg" for i in trainFileNums]
		trainFileNames = [os.path.join('originalData', label, name) for name in trainFileNamesInDirectory]
		for file in trainFileNames:
			shutil.copy(file, os.path.join("data", "train", label))

		validFileNamesInDirectory = [label+str(i)+".jpg" for i in validFileNums]
		validFileNames = [os.path.join('originalData', label, name) for name in validFileNamesInDirectory]
		for file in validFileNames:
			shutil.copy(file, os.path.join("data", "valid",label))

		testFileNamesInDirectory = [label + str(i) + ".jpg" for i in testFileNums]
		testFileNames = [os.path.join('originalData', label, name) for name in testFileNamesInDirectory]
		for file in testFileNames:
			shutil.copy(file, ("data/test"))

def run():
	DirectoryMaking()
	mainDirectory = Path(os.getcwd())/"data"
	allImages = ImageDataBunch.from_folder(mainDirectory, test="test", bs=20)
	learn = cnn_learner(allImages, models.resnet34, metrics=[accuracy, error_rate])
	learn.fit(10)
	learn.export("SaveModel.pkl")

if __name__ == '__main__':
    run()
