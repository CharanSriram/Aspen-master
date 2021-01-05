//
//  CameraPageVMainView.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI
import UIKit

final class CameraViewController: UIViewController {
    let cameraController = CameraController()
    var previewView: UIView!
    
    override func viewDidLoad() {
                    
        previewView = UIView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        previewView.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(previewView)
        
        cameraController.prepare {(error) in
            if let error = error {
                print(error)
            }
            
            try? self.cameraController.displayPreview(on: self.previewView)
        }
        
    }
}


extension CameraViewController : UIViewControllerRepresentable{
    public typealias UIViewControllerType = CameraViewController
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<CameraViewController>) -> CameraViewController {
        return CameraViewController()
    }
    
    public func updateUIViewController(_ uiViewController: CameraViewController, context: UIViewControllerRepresentableContext<CameraViewController>) {
    }
}

struct CameraPageVMainView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
        NavigationView{
            ZStack{
                
                    VStack {

                        VStack {
                            ZStack {
                                Rectangle()
                                    .cornerRadius(30, corners: [.topLeft, .topRight])
                                    .frame(height: 100)
                                    .shadow(radius: 15, y: -10)
                                HStack {
                                    Button(action:{}){
                                        Image(systemName: "camera.fill")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin-Bold", size: 20))
                                    }
                                    Spacer()
                                    Button(action:{self.presentationMode.wrappedValue.dismiss()}){
                                        Image(systemName: "house")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin-Bold", size: 20))
                                    }
                                    Spacer()
                                    NavigationLink(destination: Competitions()){
                                            Image(systemName: "person.3")
                                                .foregroundColor(.white)
                                                .font(.custom("Cabin-Bold", size: 20))


                                    }

                                }.padding(.horizontal, 60)
                            }
                        }
                    }
                
                    Image("PlasticTemp")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                Spacer()
                Button(action: {
                        
                }){
                ZStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                    .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2))
                    Image(systemName: "camera")
                        .font(.custom("Cabin-Regular", size: 25))
                        .foregroundColor(.black)
                    }
                }.padding(.bottom, 29).position(x: 275, y: 800)
            }.edgesIgnoringSafeArea(.all)
            
        }
        
        
        
    }
}

struct CameraPageVMainView_Previews: PreviewProvider {
    static var previews: some View {
        CameraPageVMainView()
    }
}
