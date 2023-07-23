//
//  ContentView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 21/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var multiplicationTable = 0
//    @State private var numberOfRound = 5
//    @State private var roundAnswers = [Int]()
    @State private var correctAnswer = 0
    @State private var userNumber = 0
    @FocusState private var amountIsFocused: Bool
    
    var result: Int {
        userNumber * multiplicationTable
    }
    
    var body: some View {
        NavigationStack {
            List {
                Text("Welcome to multiply operations")
                Section("Enter your number:") {
                    TextField("", value: $userNumber, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                }
                Section("Multiply by:") {
                    Picker("Pick a number:", selection: $multiplicationTable) {
                        ForEach(multiplicationTable..<13) { number in
                            Text("\(number)")
                        }
                        
                    }
                    .pickerStyle(.automatic)
                }
                Section("Result:") {
                    Text("\(result)")
                }
            }
            .navigationTitle("Education")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
