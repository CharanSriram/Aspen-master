//
//  UniqueCompetition.swift
//  Aspen
//
//  Created by Charan Sriram on 4/26/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct UniqueCompetition: View {

    var competitionBox: CompetitionDisplays = CompetitionDisplays()
    var title: String = "Competition Name"
    
    var body: some View {
        VStack {
            TitleBarNonIcon(titleContent: title)
            competitionBox
            List {
                PersonDashListView()
                PersonDashListView()
                PersonDashListView()
                PersonDashListView()
                PersonDashListView()
                PersonDashListView()

                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct UniqueCompetition_Previews: PreviewProvider {
    static var previews: some View {
        UniqueCompetition()
    }
}
