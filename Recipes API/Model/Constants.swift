//
//  Constants.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/9/25.
//

import Foundation
import SwiftUI

struct Constants{
    static let titleFont: Font = Font(UIFont(name: "Helveitca-Neue", size: 30) ?? UIFont.systemFont(ofSize: 30))
    
    static let textFont: Font = Font(UIFont(name: "Helveitca-Neue", size: 15) ?? UIFont.systemFont(ofSize: 15))
    
    static let backgroundColor = Color(Color(red: 240/255, green: 177/255, blue: 117/255))
}

extension Color{
    static let backgroundGreen = Color("background")
    static let fontBlue = Color("font")
    static let borderColor = Color("border")
}

