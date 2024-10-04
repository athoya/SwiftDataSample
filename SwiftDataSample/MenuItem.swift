//
//  MenuItem.swift
//  SwiftDataSample
//
//  Created by Athoya on 01/10/24.
//

import Foundation
import SwiftData

@Model
class MenuItem: Hashable {
    var menuName: String
    var price: String
    
    init(menuName: String, price: String) {
        self.menuName = menuName
        self.price = price
    }
}
