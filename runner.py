import re
import os
import io
from PIL import Image as Imager
from fastai.vision import *

def identifyImage(imageBytes):
	learn = load_learner(os.getcwd(), "SaveModel.pkl")
	image = Imager.open(io.BytesIO(imageBytes))
	image.save("image1",format="jpeg")
	img = open_image("image1").resize(512)
	results = learn.predict(img)
	classifier = int(re.search(r'\d+', str(results[1])).group())
	return str(classifier)

def run(imagePath):
	learn = load_learner(os.getcwd(), "SaveModel.pkl")
	image = open_image(imagePath).resize(512)
	results = learn.predict(image)
	print(results)
	classifier = int(re.search(r'\d+', str(results[1])).group())
	print(classifier)

if __name__ == '__main__':
	run(os.path.join(os.getcwd(),"data","test","glass71.jpg"))