//
//  InterestCategory.swift
//  InterestCalculator
//
//  Created by Gado on 13/12/2022.
//

import Foundation

struct InterestCategory {
    var id: Int?
    var category: Category = .amount
    var name: Category.RawValue? = ""
    var moneyCategory: MoneyCategory = .one
    var moneyName: MoneyCategory.RawValue = ""
}

enum Category: String {
    case amount = "By Amount"
    case interest = "By interest"
}


enum MoneyCategory: String {
    case one = "1000"
    case two = "2000"
    case three = "3000"
    case four = "4000"
}
