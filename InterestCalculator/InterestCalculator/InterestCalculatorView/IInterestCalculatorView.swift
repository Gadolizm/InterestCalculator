//
//  InterestCalculatorView.swift
//  InterestCalculator
//
//  Created by Gado on 11/12/2022.
//

import SwiftUI

struct InterestCalculatorView: View {
    var body: some View {
        ZStack {
//                Color(.orange).opacity(0.2).edgesIgnoringSafeArea(.all)

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

                    Spacer()
                }

            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
