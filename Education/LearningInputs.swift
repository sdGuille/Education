//
//  PraticeView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 1/8/23.
//

import SwiftUI

struct LearningInputs: View {
    @State var amount: Double = 0
    @State var quantity = 0.0
    @State var password = ""
    
    var body: some View {
        VStack{
            
            SecureField.init("Enter your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Text("0")
                Slider(
                    value: $amount,
                    in: 0.0 ... 10.0,
                    step: 0.5
                )
                
                Text("10")
            }
            Text("\(amount.formatted())")
//            Spacer()
            Stepper("Quantity: \(quantity.formatted())", value: $quantity, in: 0 ... 10, step: 0.50)
        }
    }
}

struct PraticeView_Previews: PreviewProvider {
    static var previews: some View {
        LearningInputs()
    }
}
