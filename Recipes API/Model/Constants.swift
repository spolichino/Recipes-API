//
//  Constants.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/9/25.
//

import Foundation
import SwiftUI

struct Constants{
    static let titleFont: Font = Font(UIFont(name: "Helveitca-Neue", size: 35) ?? UIFont.systemFont(ofSize: 30))
    
    static let textFont: Font = Font(UIFont(name: "Helveitca-Neue", size: 22) ?? UIFont.systemFont(ofSize: 15))
    
    static let backgroundColor = Color(Color(red: 245/255, green: 214/255, blue: 142/255))
}

extension Color{
    static let backgroundGreen = Color("background")
    static let fontBlue = Color("font")
    static let borderColor = Color("border")
}

