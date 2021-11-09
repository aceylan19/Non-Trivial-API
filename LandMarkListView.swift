//
//  LandMarkListView.swift
//  Travel Book v1.0
//
//  Created by Aleyna  Ceylan on 11/8/21.
//

import SwiftUI

struct LandMarkListView: View {
    var body: some View {
        NavigationView{
            List(landMarkArray){ landMark in
                NavigationLink(destination: LandMarkDetail()){
                    Text(landMark.name)
                }
            }

            
        }
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()
    }
}
