//
//  InterestCalculatorView.swift
//  InterestCalculator
//
//  Created by Gado on 11/12/2022.
//

import SwiftUI

struct InterestCalculatorView: View {
    
    @State private var moneyValue: String = ""
    @State private var totalMoney: Int = 0
    @StateObject var viewModel: InterestViewModel = .init()

    
    
    var categoryList = [
        InterestCategory(id: 0, category: .amount, name: Category.amount.rawValue),
        InterestCategory(id: 1, category: .interest, name: Category.interest.rawValue)
    ]
    
    var categoryMoneyList = [
        InterestCategory(id: 0, name: nil, moneyCategory: .one, moneyName: MoneyCategory.one.rawValue),
        InterestCategory(id: 1, name: nil, moneyCategory: .two, moneyName: MoneyCategory.two.rawValue),
        InterestCategory(id: 2, name: nil, moneyCategory: .three, moneyName: MoneyCategory.three.rawValue),
        InterestCategory(id: 3, name: nil, moneyCategory: .four, moneyName: MoneyCategory.four.rawValue)
    ]
    
    var interestTypeList = [
        InterestType(id: 0, type: .Daily, name: "Daily", description: "Receive your interest in daily bases"),
        InterestType(id: 1, type: .Monthly,  name: "Monthly", description: "Receive your interest at the end of each month"),
        InterestType(id: 2, type: .Quarterly,  name: "Quarterly", description: "Receive your interest at the end of each quarter", isHighestInterest: true)
    ]
    
    var body: some View {
        
        ScrollView{
            VStack {
                
                VStack(spacing: 10) {
                    Text("Interest Calculator")
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .padding()
                    Text("Let’s calculate by selecting one of the two options:")
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                    Text("“Total amount” enables you to add the amount to be deposited, interest will be calculated automatically & vice versa.")
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding()
                    
                    
                }
                CategoryListView(subCategoriesList: categoryList, selectedSubCategoryID: "0", itemSelected: { selectedSubCategory in
                    viewModel.interestCategory = selectedSubCategory.category
                    viewModel.calculateTotal()

                })
                .padding()
                VStack(alignment: .center, spacing: 16){
                    TextField("1000", text: $moneyValue)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Divider()
                        .frame(width: 100.0)
                        .background(.black)
    
                    CategoryListView(subCategoriesList: categoryMoneyList, selectedSubCategoryID: "0", itemSelected: { selectedSubCategory in
                        moneyValue = selectedSubCategory.moneyName
                        viewModel.interestMoneyCategory = selectedSubCategory.moneyCategory
                        viewModel.calculateTotal()
                    })
                }
                .frame(width: 343, height: 150)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray .opacity(0.1), lineWidth: 2.5)
                        .shadow(color: .gray, radius: 12, x: 0, y: 0)
                )
                
                Text("How do you like to receive your interest?")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .foregroundColor(.black)
                    .padding()
                VStack{
                    
                    InterestTypeListView(interestTypeList: interestTypeList, selectedInterestTypeID: 0) { itemSelected in
                        guard let type = itemSelected.type else {return}
                        viewModel.interestPeriodType = type
                        viewModel.calculateTotal()
                    }
                    
//                    HStack{
//                        VStack(alignment: .leading, spacing: 10){
//                            Text("Daily")
//                                .fontWeight(.heavy)
//                                .font(.system(size: 15))
//                                .frame(alignment: .leading)
//                            Text("Receive your interest in daily bases")
//                                .font(.body)
//                                .foregroundColor(.gray)
//                        }
//                        Image(uiImage: UIImage(named: "RadioButton")!)
//                    }
//
//                    .padding(.leading)
//                    .frame(width: 328, height: 85, alignment: .leading)
//                    .cornerRadius(12)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 16)
//                            .stroke(.gray, lineWidth: 1)
//                            .shadow(color: .black, radius: 12, x: 0, y: 0)
//                    )
//                    HStack{
//                        VStack(alignment: .leading, spacing: 10){
//                            Text("Monthly")
//                                .fontWeight(.heavy)
//                                .font(.system(size: 15))
//                            Text("Receive your interest at the end of each month")
//                                .font(.body)
//                                .foregroundColor(.gray)
//                        }
//
//                        Image(uiImage: UIImage(named: "RadioButton")!)
//
//                    }
//                    .padding(.leading)
//
//                    .frame(width: 328, height: 85, alignment: .leading)
//                    .cornerRadius(12)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 16)
//                            .stroke(.gray, lineWidth: 1)
//                            .shadow(color: .black, radius: 12, x: 0, y: 0)
//                    )
//
//                    HStack{
//                        VStack(alignment: .leading, spacing: 7){
//                            HStack{
//                                Text("Quarterly")
//                                    .fontWeight(.heavy)
//                                    .font(.system(size: 15))
//
//                                    .multilineTextAlignment(.leading)
//                                    .font(.body)
//                                Text("Highest interest")
//                                    .padding(.all, 5)
//                                    .fontWeight(.light)
//                                    .font(.system(size: 15))
//                                    .foregroundColor(.white)
//                                    .background(Color.gray)
//                                    .cornerRadius(9)
//
//                            }
//                            .padding(.top, 3.0)
//                            Text("Receive your interest at the end of each quarter")
//                                .font(.body)
//                                .foregroundColor(.gray)
//
//                        }
//                        Image(uiImage: UIImage(named: "RadioButton")!)
//
//                    }
//                    .padding(.leading)
//                    .frame(width: 328, height: 85, alignment: .leading)
//                    .cornerRadius(12)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 16)
//                            .stroke(.gray, lineWidth: 1)
//                            .shadow(color: .black, radius: 12, x: 0, y: 0)
//                    )
                }
                
                VStack(alignment: .center, spacing: 10){
                    HStack{
                        Text("Receive at the end of term*")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                        
                        Text(String( viewModel.totalAmount ) + " EGP")
                            .fontWeight(.heavy)
                    }
                    HStack{
                        Spacer()
                        Text("+0 EGP")
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.gray)
                            .padding(.trailing, 45)
                    }

                    
                    VStack(spacing: 10){
                        Text("\u{2022} The interest amount might be changed in case of any transactions or fees past over the account.")
                            .fontWeight(.ultraLight)
                            .font(.system(size: 14))
                        Text("\u{2022} The interest amount might be changed in case of any transactions or fees past over the account.")
                            .fontWeight(.ultraLight)
                            .font(.system(size: 14))


                    }
                    .padding(.leading)
                    .frame(width: 328, height: 105)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16).fill(.gray
                            .opacity(0.1))

                    )
                    
                    Button(action: {
                        print("Button tapped")
                  
                    }) {
                        Text("Open saving account")
                            .font(.system(size: 18))
                            .foregroundColor(.white)

                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .fontWeight(.heavy)
                    .cornerRadius(25)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)

                }
            }

            Spacer()
        }
        .padding(.top, 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InterestCalculatorView()
    }
}
