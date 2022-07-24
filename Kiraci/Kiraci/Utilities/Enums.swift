//
//  Enums.swift
//  Kiraci
//
//  Created by BusranurOK on 21.07.2022.
//

import SwiftUI

enum Page: String {

    case dashboard = "Ana sayfa"
    case myRentedBuildings = "Kiracı Olduğum Mülkler"
    case myRentedContracts = "Kiracısı Olduğum Sözleşmeler"
    case myBuildings = "Mülklerim"
    case myBuildingsContracts = "Mülklerime Ait Sözleşmeler"
    case settings = "Ayarlar"
    case profile = "Profil"
    
}

enum DashboardPage: String {
    
    case renter = "Kiracı"
    case buildingOwner = "Mülk Sahibi"
    
}

enum Language: String, CaseIterable {
    
    case turkish = "Turkish"
    case english = "English"
    
    var flag: String {
        
        self == .turkish  ? "turkishflag" : "englishflag"
        
    }
    
}
