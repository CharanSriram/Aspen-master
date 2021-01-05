//
//  TitleBar.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct TitleBar: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    var titleContent: String = "Home"
    var fileName: String = "person.crop.circle.fill"
    
    @Binding var showingModel : Bool;
    @State var location: String = "";


    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
    var body: some View {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .cornerRadius(30, corners: [.bottomRight])
                        .frame(height: 150)
                        .shadow(radius: 15, y: 15)
                    HStack {
                        Text(titleContent)
                            .font(.custom("Cabin-Bold", size: 40))
                            .fontWeight(.heavy)
                        Spacer()
                        Button(action: {
                                if(self.location == "signup"){
                                    self.showingModel.toggle()
                                }
                            
                        }) {
                            Image(systemName: fileName)
                                .font(.custom("Cabin-Bold", size: 40))
                                .foregroundColor(.black)
                        }
                    }.padding(36).offset(y: 35)
                }
                Spacer()
                
                
            }.edgesIgnoringSafeArea(.all)

            
        
    }
}


