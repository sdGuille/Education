//
//  RegisterView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 27/7/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            VStack {
                WelcomeMessageView()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
