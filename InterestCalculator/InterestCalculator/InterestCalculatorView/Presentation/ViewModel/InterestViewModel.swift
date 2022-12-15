//
//  InterestViewModel.swift
//  InterestCalculator
//
//  Created by Gado on 14/12/2022.
//

import Foundation

class InterestViewModel : ObservableObject{
    
    
    var interestCategory = Category.amount
    var interestMoneyCategory = MoneyCategory.one
    var interestPeriodType = InterestPeriod.Daily
    
    init(interestCategory: Category = Category.amount, interestMoneyCategory: MoneyCategory = MoneyCategory.one, interestType: InterestPeriod = InterestPeriod.Daily) {
        self.interestCategory = interestCategory
        self.interestMoneyCategory = interestMoneyCategory
        self.interestPeriodType = interestType
    }
    
    @Published var totalAmount = 0.0
    
    func calculateTotalAmount(moneyAmount: Double, percent: Double){
        totalAmount = (moneyAmount * percent) + moneyAmount + 10000
    }
    
    func calculateTotalPercent(moneyAmount: Double, percent: Double){
        totalAmount = (moneyAmount * percent) + moneyAmount
    }
     
    func calculateTotal() {
        switch interestCategory
        {
        case .amount:
            switch interestMoneyCategory {
            case .one:
                switch interestPeriodType {
                case .Daily:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)

                case .Monthly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Quarterly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                }
            case .two:
                switch interestPeriodType {
                case .Daily:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Monthly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Quarterly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                }
            case .three:
                switch interestPeriodType {
                case .Daily:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Monthly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Quarterly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                }
            case .four:
                switch interestPeriodType {
                case .Daily:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Monthly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                case .Quarterly:
                    calculateTotalAmount(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                }
            }
        case .interest:
            switch interestMoneyCategory {
                case .one:
                    switch interestPeriodType {
                    case .Daily:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)

                    case .Monthly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Quarterly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    }
                case .two:
                    switch interestPeriodType {
                    case .Daily:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Monthly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Quarterly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    }
                case .three:
                    switch interestPeriodType {
                    case .Daily:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Monthly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Quarterly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    }
                case .four:
                    switch interestPeriodType {
                    case .Daily:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Monthly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    case .Quarterly:
                        calculateTotalPercent(moneyAmount: (Double(interestMoneyCategory.rawValue) ?? 0.0), percent: interestPeriodType.percent)
                    }
                }
        }
        
        
    }
}
