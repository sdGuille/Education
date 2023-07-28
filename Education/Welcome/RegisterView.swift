//
//  RegisterView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 27/7/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name....", text: $name)
                .bordered()
            Spacer()
        }
        .padding()
        .background(WelcomeBackgroundImage())
        
    }
}

struct KuchiTextStyle: TextFieldStyle {
    public func _body(
        configuration: TextField<Self._Label>) -> some View {
            return configuration
        }
}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
