//
//  ScoreView.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 2/8/23.
//

import SwiftUI

class Box<T> {
    var wrappedValue: T
    init(initialValue value: T) {
        self.wrappedValue = value
    }
}


struct ScoreView: View {
    @State var numberOfAnswered = 0
    var numberOfQuestions = 5
    
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
        ScoreView()
    }
}
