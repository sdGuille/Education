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
    
    @State private var factoreOne = 0
    @State private var factorTwo = 0
    @State private var answer = 0
    
    var result: Int {
        userNumber * multiplicationTable
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Text("Welcome to multiply operations")
                    Section("Enter your number:") {
                        TextField("", value: $userNumber, format: .number)
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
                    Section("Practice") {
                        Text("\(factoreOne) x \(factorTwo)")
                    }
                    
                    Section("Result") {
                        Text("\(answer)")
                    }
        
                    Button("Next Question") {
                        askQuestion()
                    }
                    NavigationLink("Settings", destination: SettingsView())
                }
            }
            .onAppear(perform: askQuestion)
            
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
    
    func askQuestion() {
        factoreOne = Int.random(in: 0...12)
        factorTwo = Int.random(in: 0...12)
        answer = factoreOne * factorTwo
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
