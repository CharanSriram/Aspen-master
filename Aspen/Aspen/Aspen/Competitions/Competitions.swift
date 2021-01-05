//
//  Competitions.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI


struct DataModel: Identifiable {
    var id: String
    let name: String
    let rank: Int
}



struct Competitions: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var createModel: Bool = false
    @State private var modelSelection = 1
    
    let data: [DataModel] = [
        .init(id: "0", name: "Amazon", rank: 1),
        .init(id: "1", name: "Adidas", rank: 3),
        .init(id: "2", name: "Nike", rank: 2)
    ]
    
    var rank = "99"
 
    var body: some View {
        NavigationView{
            
            
            VStack {
                TitleBarNonIcon(titleContent: "Competitions", location: "competitions")
                ZStack{
                    Rectangle()
                        .frame(height: 150)
                        .foregroundColor(Color("NavyGray"))
                        .cornerRadius(10)
                        .offset(y: 10)
                        .padding()
                        .shadow(radius: 20)
                    HStack{
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                            Image(systemName: "person.3.fill")
                                .font(.custom("Cabin-Regular", size: 30))
                        }
                        Spacer()
                        VStack{
                            Text("Global Ranking")
                                .font(.custom("Cabin-SemiBold", size: 30))
                                .foregroundColor(.white)
                            Text("#\(rank)")
                                .font(.custom("Cabin-Italic", size: 20))
                                .foregroundColor(.white)

                        }
                        
                        }.padding(.horizontal, 50).offset(y: 10)
                     
                }
                HStack {
                    Text("Your\nCompetitions")
                        .font(.custom("Cabin-Bold", size: 20))
                        .lineLimit(nil)
                    Spacer()
                    Button(
                        action: {
                            self.modelSelection = 1
                            self.createModel = true
                    })
                    {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 45)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                                .shadow(radius: 20)
                            Text("Join")
                                .font(.custom("Cabin-Regular", size: 16))
                                .foregroundColor(.black
                            )
                        }
                    }
                    
                    Button(
                        action: {
                            self.createModel = true
                            self.modelSelection = 2
                    })
                    {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 45)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                                .shadow(radius: 20)
                            Text("Create")
                                .font(.custom("Cabin-Regular", size: 16))
                                .foregroundColor(.black
                            )
                        }
                    }
                }.padding(.horizontal, 30)
                    .sheet(isPresented: $createModel, content: {
                        if(self.modelSelection == 1) {
                            Join()
                        }
                        if (self.modelSelection == 2) {
                            Create()
                        }
                    })
                List {
                    ListView(name: "Verizon's Competitions", rank: "1")
                    ListView()
                    ListView()

                }
                
                Spacer()
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
                            Button(action: {self.presentationMode.wrappedValue.dismiss()}){
                                    Image(systemName: "house")
                                        .foregroundColor(.white)
                                        .font(.custom("Cabin-Bold", size: 20))
                                
                            }
                            Spacer()
                            NavigationLink(destination: Competitions()){
                                    Image(systemName: "person.3.fill")
                                        .foregroundColor(.white)
                                        .font(.custom("Cabin-Bold", size: 20))
                                
                                
                            }
                            
                        }.padding(.horizontal, 60)
                    }
             }

                
            }.edgesIgnoringSafeArea(.all)
        }.navigationBarHidden(true)
    }
}

struct Competitions_Previews: PreviewProvider {
    static var previews: some View {
        Competitions()
    }
}
