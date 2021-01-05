//
//  GradientBorderLongButton.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct GradientBorderLongButton: View {
    var body: some View {
        Button(
            action: {
                
        })
        {
            ZStack {
                Rectangle()
                    .frame(width: 350, height: 60)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .overlay(
                        RoundedRectangle(cornerRadius: 35)
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                    .shadow(radius: 20)
                Text("Host Portal")
                    .font(.custom("Cabin-Regular", size: 20))
                    .foregroundColor(.black
                )
            }
        }
    }
}

struct GradientBorderLongButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientBorderLongButton()
    }
}
