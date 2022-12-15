//
//  InterestType.swift
//  InterestCalculator
//
//  Created by Gado on 14/12/2022.
//

import Foundation

struct InterestType{
    var id: Int = 0
    var type: InterestPeriod?
    var name: InterestPeriod.RawValue?
    var description: String?
    var isHighestInterest: Bool?
    var percentage: Double = 0.0
}

enum InterestPeriod: String {
    case Daily
    case Monthly
    case Quarterly
    
    var percent: Double {
        switch self {
        case .Daily:
            return 0.2
        case .Monthly:
            return 0.3
        case .Quarterly:
            return 0.4
        }
    }
}
