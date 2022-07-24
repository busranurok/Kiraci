//
//  Enums.swift
//  Kiraci
//
//  Created by BusranurOK on 21.07.2022.
//

import SwiftUI

enum Pages: String {

    case dashboard = "Ana sayfa"
    case myBuildings = "Mülklerim"
    case myBuildingsContracts = "Mülklerime Ait Sözleşmeler"
    case paymentInformation = "Ödeme Bilgisi"
    case corporateAccount = "Kurumsal Hesap"
    case settings = "Ayarlar"
    
}

enum DashboardPages: String {
    
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
