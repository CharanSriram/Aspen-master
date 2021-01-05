//
//  Create.swift
//  Aspen
//
//  Created by Charan Sriram on 4/26/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct Create: View {
    
    @State var isSpread: Bool = false
    @State private var username: String = ""
    @State private var companyName: String = ""
    @State private var description: String = ""
    @State private var prizes: String = ""
    @State private var competitions = [
        CompetitionDisplays(header: "Competition Name", width: 350, height: 200),
        CompetitionDisplays(header: "Competition Name", width: 350, height: 200),
        CompetitionDisplays(header: "Competition Name", width: 350, height: 200),
        CompetitionDisplays(header: "Competition Name", width: 350, height: 200)
    ]

    
    var body: some View {
               
        VStack {
            TitleBarNonIcon(titleContent: "Create")
            ZStack {
                if (!self.isSpread) {
                    BackgroundRectState1()
                }
                else if (self.isSpread){
                    ZStack{
                        BackgroundRectState2()
                        VStack{
                            Button(action:{
                                withAnimation {
                                    self.isSpread.toggle()
                                }
                            }){
                                ZStack{
                                    Circle()
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: 2))
                                    Image(systemName: "arrow.down")
                                        .font(.custom("Cabin-Regular", size: 25))
                                        .foregroundColor(.black)
                                }
                            }.padding(.bottom, 20)
                            VStack{
                                TextField("Competition Name", text: $username)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 50)
                                    .font(.custom("Cabin-Regular", size: 20))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                TextField("Company/Individual Name", text: $companyName)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 50)
                                    .font(.custom("Cabin-Regular", size: 20))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                TextField("Description", text: $description)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 50)
                                    .font(.custom("Cabin-Regular", size: 20))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                TextField("Prizes", text: $prizes)
                                    .foregroundColor(.black)
                                    .padding(EdgeInsets(top: 0, leading: 50, bottom: 50, trailing: 50))
                                    .font(.custom("Cabin-Regular", size: 20))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                Button(
                                action:{
                                    self.competitions.insert(CompetitionDisplays(header: self.username, description: self.description), at: 0)
                                }){
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 150, height: 45)
                                            .foregroundColor(.white)
                                            .cornerRadius(25)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 25)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                                            .shadow(radius: 20)
                                        Text("Create")
                                            .font(.custom("Cabin-Bold", size: 20))
                                            .foregroundColor(.black
                                        )
                                    }
                                }
                            }
                            
                        }
                    }
                    
                }
                Button(action: {
                    withAnimation{
                        self.isSpread.toggle()
                    }
                }) {
                    if(!self.isSpread) {
                        Text("Host A Competition")
                            .font(.custom("Cabin-Regular", size:18))
                            .foregroundColor(.black)
                            .frame(width: 350, height: 55)
                    }
                    
                }
            }.padding(.vertical, 40)
            Text("Competitions You're Hosting:")
                .font(.custom("Cabin-SemiBold", size: 16))
                .frame(width: 350, alignment: .leading)
            List {
                ForEach(competitions, id: \.self) {competition in
                    competition
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundRectState1: View {
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 55)
            .foregroundColor(.white)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
            .shadow(radius: 20)
    }
}

struct BackgroundRectState2: View {
    var body: some View {
        
        Rectangle()
            .frame(width: 350, height: 400)
            .foregroundColor(.white)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
            .shadow(radius: 20)
    }
}




struct Create_Previews: PreviewProvider {
    static var previews: some View {
        Create()
    }
}
