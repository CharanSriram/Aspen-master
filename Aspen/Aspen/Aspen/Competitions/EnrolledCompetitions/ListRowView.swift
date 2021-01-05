//
//  ListRowView.swift
//  Aspen
//
//  Created by Charan Sriram on 4/25/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct ListRowView: View {
    
    
    
    
    //Firebase
    
    //Json
        //Name, Rank
    
    // Firebase
    
    var body: some View {
        List {
            ListView(name: "Verizon's Competitions", rank: "1")
            ListView()
            ListView()

        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}
