//
//  GradientButtonStyle.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20) .stroke(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing), lineWidth: 5)
            )

        
    }
    
}

struct GradientFullButtonStyle: ButtonStyle {
    
    var top: CGFloat = 10
    var leading: CGFloat = 30
    var bottom: CGFloat = 10
    var trailing: CGFloat = 30
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing))
            .background(LinearGradient(gradient: Gradient(colors: [Color("LightOrange"), Color("Purple")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20, corners: .allCorners)
        

    }
}

