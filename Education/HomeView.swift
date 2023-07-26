//
//  HomeView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 26/7/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
                .tag(2)
        }
        .accentColor(.orange)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
