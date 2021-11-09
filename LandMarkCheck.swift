//
//  LandMarkCheck.swift
//  Travel Book v1.0
//
//  Created by Aleyna  Ceylan on 11/8/21.
//

import SwiftUI

struct landMarkCheckModel: Identifiable{
    var id = UUID()
    var name: String
    var description: String
}

var travelPoint_1 = landMarkCheckModel(name: "Catalhoyuk", description: "Neolithic and Chalcolithic proto-city settlement in southern Anatolia")

var travelPoint_2 = landMarkCheckModel(name: "Gobeklitepe", description: " Neolithic archaeological site near the city of Şanlıurfa in Southeastern Anatolia")

var travelPoint_3 = landMarkCheckModel(name: "Duluk", description: " The oldest known mathematical operations have been found in this city.")


var landMarkArray = [travelPoint_1,travelPoint_2,travelPoint_3]
