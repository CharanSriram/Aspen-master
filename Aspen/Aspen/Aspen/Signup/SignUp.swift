//
//  SignUp.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct SignUp: Shape {
   
    @State private var username: String = ""
    @State private var password: String = ""
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
    var body: some View {
        VStack {
        Spacer()
        ZStack {
            Rectangle()
                .cornerRadius(30, corners: [.topLeft, .topRight])
                .frame(height: 500)
            VStack {
                VStack{
                    VStack{
                        HStack{
                            Text("Username")
                                .foregroundColor(.white)
                                .font(.custom("Cabin-Bold", size: 20))
                            Spacer()
                        }.padding(.horizontal)
                        //Text field
                        TextField("Type here", text: $username)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .font(.custom("Cabin-Regular", size: 20))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.padding(.bottom)
                    VStack{
                        HStack{
                            Text("Password")
                                .foregroundColor(.white)
                                .font(.custom("Cabin-Bold", size: 20))
                            Spacer()
                        }.padding(.horizontal)
                        SecureField("Type here", text: $password)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .font(.custom("Cabin-Regular", size: 20))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                }.padding(.top, 50)
                
                VStack {
                    Button(action: {
                        
                    }){
                        Text("Sign In")
                            .font(.custom("Cabin-SemiBold", size: 18))
                    }.buttonStyle(GradientButtonStyle())
                    
                    HStack {
                        Spacer()
                        Rectangle()
                            .frame(width: 100, height: 1)
                            .foregroundColor(.white)
                        Text("OR")
                            .font(.custom("Cabin-Regular", size: 15))
                            .foregroundColor(.white)
                        Rectangle()
                            .frame(width: 100, height: 1)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    Button(action: {
                        
                    }){
                        Text("Sign Up")
                            .font(.custom("Cabin-SemiBold", size: 18))
                    }.buttonStyle(GradientFullButtonStyle())
                }.padding(.top, 30)
            }
        
            }
            
        }.edgesIgnoringSafeArea(.all)

        
    }
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
