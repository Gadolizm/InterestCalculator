//
//  InterestCategoryView.swift
//  InterestCalculator
//
//  Created by Gado on 13/12/2022.
//

import SwiftUI

struct InterestCategoryView: View {
    
    var isSelected: Bool
    private let interestCategory: InterestCategory
    private let action: () -> Void
    
    init(
        isSelected: Bool,
        interestCategory: InterestCategory,
        action: @escaping () -> Void
    ) {
        self.isSelected = isSelected
        self.interestCategory = interestCategory
        self.action = action
    }
    
    var body: some View {
        VStack{
            Button(
                action: {
                    action()
                },label: {
                    Text(interestCategory.name ?? interestCategory.moneyName)
                        .foregroundColor(isSelected ? .white : .black)
                        .font(.system(size: 14))
                }

            )
            .padding(.all, 10.0)
            .background(isSelected ? .blue : .white)
            .cornerRadius(17)

        }
        
    }
}

//struct InterestCategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InterestCategoryView()
//    }
//}
