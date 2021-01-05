//
//  BlackBoxDisplay.swift
//  Aspen
//
//  Created by Charan Sriram on 4/26/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct BlackBoxDisplay: View {

    
    var header: String = "Filler"
    var description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    var width: CGFloat = 350
    var height: CGFloat = 200
    
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: self.height)
                .foregroundColor(Color("NavyGray"))
                .cornerRadius(10)
                .padding(.horizontal, 1)
            VStack(alignment: .leading) {
                Text(header)
                    .foregroundColor(.white)
                    .font(.custom("Cabin-Bold", size: 24))
                    .padding(.bottom, 5)
                Text(description)
                    .foregroundColor(.white)
                    .font(.custom("Cabin-Regular", size: 14))
            }.frame(width: (self.width - 50), height: (self.height - 50), alignment: .topLeading)
            
        }
    }
}

struct BlackBoxDisplay_Previews: PreviewProvider {
    static var previews: some View {
        BlackBoxDisplay()
    }
}
