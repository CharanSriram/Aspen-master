//
//  PersonDashListView.swift
//  Aspen
//
//  Created by Charan Sriram on 4/26/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct PersonDashListView: View {
    
    private var number = 1;
    private var name = "Bob Ross"
    
    var body: some View {
        HStack {
            ZStack{
                Rectangle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                    .shadow(radius: 20)
                Text("\(number)")
                    .font(.custom("Cabin-Bold", size: 20))
                    .foregroundColor(.black)
            }
            ZStack{
                Rectangle()
                    .frame(width: 325, height: 45)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .shadow(radius: 20)
                Text(name)
                    .font(.custom("Cabin-SemiBold", size: 18))
                    .foregroundColor(.black)
                    .frame(width: 275, alignment: .leading)
                

            }
        }
    }
}

struct PersonDashListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDashListView()
    }
}
