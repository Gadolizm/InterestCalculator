//
//  CategoryListView.swift
//  InterestCalculator
//
//  Created by Gado on 13/12/2022.
//

import SwiftUI

struct CategoryListView: View {
    
    private let categoriesList: [InterestCategory]

    @State var selectedInterestCategoryID: String
    private let itemSelected: (_ selectedSubCategory: InterestCategory) -> Void
    
    
    init(
        subCategoriesList: [InterestCategory],
        selectedSubCategoryID: String,
        itemSelected: @escaping (_ selectedSubCategory: InterestCategory) -> Void
    ) {
        self.categoriesList = subCategoriesList
        self.selectedInterestCategoryID = selectedSubCategoryID
        self.itemSelected = itemSelected
    }
    
    var body: some View {
        

        ScrollViewReader { proxy in
            HStack{
                ForEach(categoriesList, id: \.id) { category in
                    
                    InterestCategoryView(isSelected: (selectedInterestCategoryID == String(category.id ?? 0) ) ? true : false, interestCategory: category, action: {
                        itemSelected(category)
                        self.selectedInterestCategoryID = "\(category.id ?? 0)"
                    })
   
                }
            }
            
        }

    }
}

//struct CategoryListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryListView()
//    }
//}
