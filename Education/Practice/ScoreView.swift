//
//  ScoreView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 2/8/23.
//

import SwiftUI

struct ScoreView: View {
    @State var numberOfAnswered = 0
    /// No State property beacuese never changes and var is not needed
    let numberOfQuestions: Int
    
    var body: some View {
        Button {
            self.numberOfAnswered += 1
            print("Aswered: \(self.numberOfAnswered)")
        } label: {
            HStack {
                Text("\($numberOfAnswered.wrappedValue)/\(numberOfQuestions)")
                    .font(.caption)
                    .padding(4)
                Spacer()
                
        }

        
        
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(numberOfQuestions: 5)
    }
}
