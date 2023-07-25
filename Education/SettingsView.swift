//
//  SettingsView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 25/7/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Text("Settings")
                .font(.largeTitle)
                .padding(.bottom, 8)
            
            Section(header: Text("Appearance")) {
            }
            
            Section("Game") {
            }
            
            Section("Notifications") {
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
