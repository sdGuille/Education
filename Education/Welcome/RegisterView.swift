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
                TextField("Type your name", text: $name)
                Spacer()
            }.background(WelcomeBackgroundImage())
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
