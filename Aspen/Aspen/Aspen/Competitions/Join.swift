//
//  Join.swift
//  Aspen
//
//  Created by Charan Sriram on 4/26/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct Join: View {
    var body: some View {
        VStack{
            TitleBarNonIcon(titleContent: "Join")
                .padding(.bottom, 20)
            List {
                CompetitionDisplaysWithButton(header: "Join!")
                CompetitionDisplaysWithButton(header: "Join!")
                CompetitionDisplaysWithButton(header: "Join!")
                CompetitionDisplaysWithButton(header: "Join!")

            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Join_Previews: PreviewProvider {
    static var previews: some View {
        Join()
    }
}
