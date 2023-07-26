//
//  SettingsView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 25/7/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var numberOfQuestion = 6
    @State var learningEnable: Bool = true
    @State var dailyReminderEnabled = false
    @State var dailyReminderTime = Date(timeIntervalSince1970: 0)
    
    var body: some View {
        List {
            Text("Settings")
                .font(.largeTitle)
                .padding(.bottom, 8)
            
            Section(header: Text("Appearance")) {
            }
            
            Section("Game") {
                VStack(alignment: .leading) {
                    Stepper(
                        "Number of Questions: \(numberOfQuestion)",
                        value: $numberOfQuestion,
                        in: 3...20
                    )
                    
                    Text("Any change will affect the next game")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                Toggle("Learning Enabled", isOn: $learningEnable)
            }
            
            Section("Notifications") {
                HStack {
                    Toggle("Daily Reminder", isOn: $dailyReminderEnabled)
                    DatePicker(
                        "", selection: $dailyReminderTime,
                        displayedComponents: .hourAndMinute
                    )
                    .disabled(dailyReminderEnabled == false)
                    .datePickerStyle(.compact)
                }
            }
            .onChange(
                of: dailyReminderEnabled,
                perform: { _ in configureNotification() }
            )
            
            .onChange(
                of: dailyReminderTime,
                perform: { _ in configureNotification() }
            )
        }
    }
    
    func configureNotification() {
        if dailyReminderEnabled {
            LocalNotifications.shared.createReminder(
                time: dailyReminderTime)
        } else {
            LocalNotifications.shared.deleteReminder()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
