//
//  ContentView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 21/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var multiplicationTable = 2
    @State private var numberOfRound = 5
    @State private var roundAnswers = [Int]()
    @State private var correctAnswer = 0
    @State private var userNumber = 0
    
    var body: some View {
        NavigationStack {
            Stepper("Table", value: $multiplicationTable, step: 2)
                .labelsHidden()
            
            TextField("Enter a number", value: $userNumber, format: .number)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
