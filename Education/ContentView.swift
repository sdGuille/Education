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
    @State private var text = ""
    
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
                }
                Section("Multiply by:") {
//                    Stepper("\(multiplicationTable)", value: $multiplicationTable, in: 2...12)
                    Picker("Pick a number:", selection: $multiplicationTable) {
                        ForEach(multiplicationTable..<13, id: \.self) { number in
                            Text("\(number)")
                        }
                    }
                }
                Section("Result:") {
                    Text("\(result)")
                }
            }
            .navigationTitle("Education")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}