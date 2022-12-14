//
//  InterestType.swift
//  InterestCalculator
//
//  Created by Gado on 14/12/2022.
//

import Foundation

struct InterestType{
    var id: Int = 0
    var type: Type?
    var name: Type.RawValue?
    var description: String?
    var isHighestInterest: Bool?
}

enum Type: String {
    case Daily
    case Monthly
    case Quarterly
}
