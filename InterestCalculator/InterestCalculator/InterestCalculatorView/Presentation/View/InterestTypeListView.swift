//
//  InterestTypeListView.swift
//  InterestCalculator
//
//  Created by Gado on 14/12/2022.
//

import SwiftUI

struct InterestTypeListView: View {
    
    private let interestTypeList: [InterestType]
    @State var selectedInterestTypeID: Int
    private let itemSelected: (_ selectedType: InterestType) -> Void
    
    
    init(
        interestTypeList: [InterestType],
        selectedInterestTypeID: Int = 0,
        itemSelected: @escaping (_ selectedType: InterestType) -> Void
    ) {
        self.interestTypeList = interestTypeList
        self.selectedInterestTypeID = selectedInterestTypeID
        self.itemSelected = itemSelected
    }
    
    var body: some View {
        ScrollViewReader { proxy in
            VStack{
                ForEach(interestTypeList, id: \.id) { type in
                    
                    InterestTypeView(isSelected: (selectedInterestTypeID == type.id) ? true : false, interestType: type, action: { itemSelected(type)
                        selectedInterestTypeID = type.id
                    })
                    
                }
            }
        }
        
    }
}

struct InterestTypeListView_Previews: PreviewProvider {
    static var previews: some View {
        InterestTypeListView(interestTypeList: [], selectedInterestTypeID: 0, itemSelected: { selectedType in  } )
    }
}
