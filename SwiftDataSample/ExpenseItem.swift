//
//  MenuItem.swift
//  SwiftDataSample
//
//  Created by Athoya on 01/10/24.
//

import Foundation
import SwiftData

@Model
class ExpenseItem: Hashable {
    var menuName: String
    var price: Int
    
    init(menuName: String, price: Int) {
        self.menuName = menuName
        self.price = price
    }
}
