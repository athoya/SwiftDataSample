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
    var expenseName: String
    var amount: Double
    
    init(expenseName: String, amount: Double) {
        self.expenseName = expenseName
        self.amount = amount
    }
}
