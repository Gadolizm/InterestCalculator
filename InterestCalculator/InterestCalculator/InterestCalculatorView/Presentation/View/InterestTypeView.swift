//
//  InterestTypeView.swift
//  InterestCalculator
//
//  Created by Gado on 14/12/2022.
//

import SwiftUI

struct InterestTypeView: View {
    
    
    var isSelected: Bool = false
    private let interestType: InterestType
    private let action: () -> Void
    
    init(
        isSelected: Bool,
        interestType: InterestType,
        action: @escaping () -> Void
    ) {
        self.isSelected = isSelected
        self.interestType = interestType
        self.action = action
    }
    
    var body: some View {

            HStack{
                VStack(alignment: .leading, spacing: 7){
                    HStack{
                        Text(interestType.name ?? "")
                            .fontWeight(.heavy)
                            .font(.system(size: 15))
                        
                            .multilineTextAlignment(.leading)
                            .font(.body)
                        if interestType.isHighestInterest ?? false{
                            Text("Highest interest")
                                .padding(.all, 5)
                                .fontWeight(.light)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(9)
                        }
                        
                    }
                    .padding(.top, 3.0)
                    Text(interestType.description ?? "")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                }
                Image(uiImage: UIImage(named: isSelected ? "selectedRadioButton" : "RadioButton")!)
                    .onTapGesture {
//                        isSelected.toggle()
                        action()
                    }
                
            }
            .padding(.leading)
            .frame(width: 328, height: 100, alignment: .leading)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}

struct InterestTypeView_Previews: PreviewProvider {
    static var previews: some View {
        InterestTypeView(isSelected: false, interestType: InterestType(), action: { })
    }
}
