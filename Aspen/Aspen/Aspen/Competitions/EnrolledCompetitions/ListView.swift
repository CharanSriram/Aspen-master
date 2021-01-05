//
//  ListView.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct ListView: View{
    
    var name: String = "Amazon"
    var rank: String = "9"
    @State var showingDetail = false

    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 70)
                .foregroundColor(Color("NavyGray"))
                .cornerRadius(10, corners: .allCorners)
                .padding(.horizontal, 1)
                
            HStack {
                VStack{
                    Text(name)
                        .font(.custom("Cabin-Bold", size: 20))
                        .foregroundColor(.white)
                        .frame(width: 250, alignment: .leading)
                    Text("Rank \(rank)")
                        .font(.custom("Cabin-Italic", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 250, alignment: .leading)
                }
                Button(action: {
                    self.showingDetail.toggle()
                }
                ){
                    Image(systemName: "arrow.right")
                        .font(.custom("Cabin-Bold", size: 24))
                        .foregroundColor(.white)
                }.sheet(isPresented: $showingDetail) {
                    UniqueCompetition()
                }.buttonStyle(GradientFullButtonStyle(top: 15, leading: 20, bottom: 15, trailing: 20))
                
            }
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
