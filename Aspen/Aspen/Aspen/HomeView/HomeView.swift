//
//  HomeView.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI
import WebKit

struct HomeView: View {
    
    // connect isshowing to showingModel
    @State private var showingModel: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
     
        NavigationView {
            VStack {
                ZStack{
                    
                    
                    WebView(request: URLRequest(url: URL(string: "https://arcg.is/4PCj9")!))
                    TitleBar(titleContent: "Home", fileName: "person.crop.circle.fill", showingModel: $showingModel, location: "signup")
                }
                
                    VStack {
                           ZStack {
                               Rectangle()
                                   .cornerRadius(30, corners: [.topLeft, .topRight])
                                   .frame(height: 100)
                                   .shadow(radius: 15, y: -10)
                               HStack {
                                   NavigationLink(destination: CameraPageVMainView()){
                                           Image(systemName: "camera")
                                               .foregroundColor(.white)
                                               .font(.custom("Cabin-Bold", size: 20))
                                       
                                   }
                                   Spacer()
                                Button(action:{}){
                                           Image(systemName: "house.fill")
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


                    if (showingModel) {
                        SignUp()
                    }
                    else {
                    }
                    
                    
                }
            
            
            }.navigationBarTitle("Filler").navigationBarHidden(true).edgesIgnoringSafeArea(.top)

        
    }
}

struct WebView: UIViewRepresentable{
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
