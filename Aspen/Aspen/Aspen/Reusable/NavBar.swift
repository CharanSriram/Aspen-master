//
//  NavBar.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct NavBar: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    @State var camera = "camera"
    @State var home = "house.fill"
    @State var group = "person.3"

    
    func path(in rect: CGRect) -> Path {
           let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
           return Path(path.cgPath)
       }
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(30, corners: [.topLeft, .topRight])
                        .frame(height: 100)
                        .shadow(radius: 15, y: -10)
                    HStack {
                        NavigationLink(destination: CameraPageVMainView()){
                                Image(systemName: camera)
                                    .foregroundColor(.white)
                                    .font(.custom("Cabin-Bold", size: 20))
                            
                        }
                        Spacer()
                        NavigationLink(destination: HomeView()){
                                Image(systemName: home)
                                    .foregroundColor(.white)
                                    .font(.custom("Cabin-Bold", size: 20))
                            
                        }
                        Spacer()
                        NavigationLink(destination: Competitions()){
                                Image(systemName: group)
                                    .foregroundColor(.white)
                                    .font(.custom("Cabin-Bold", size: 20))
                            
                            
                        }
                        
                    }.padding(.horizontal, 60)
                }
            }
        }
        
        
    }
    
    
    
 
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( NavBar(radius: radius, corners: corners) )
    }
}




struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}


