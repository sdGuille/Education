//
//  RegisterView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 27/7/23.
//

import SwiftUI

struct RegisterView: View {

    @FocusState var nameFieldFocused: Bool
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name....", text: $userManager.profile.name)
                .focused($nameFieldFocused)
                .submitLabel(.done)
                .bordered()
            HStack {
                Spacer()
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundColor(
                        userManager.isUserNameValid() ? .green : .red)
                    .padding(.trailing)
            }
            Button(action: self.registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("Ok")
                        .font(.body)
                        .bold()
                }
            }
            .disabled(!userManager.isUserNameValid())
            .bordered()
            Spacer()
        }
        .padding()
        .background(WelcomeBackgroundImage())
        
    }
}

extension RegisterView {
    func registerUser() {
        userManager.persistProfile()
    }
}

struct KuchiTextStyle: TextFieldStyle {
    public func _body(
        configuration: TextField<Self._Label>) -> some View {
            return configuration
        }
}

struct RegisterView_Previews: PreviewProvider {
    static let user = UserManager(name: "Guille")
    
    static var previews: some View {
        RegisterView()
            .environmentObject(user)
    }
}
