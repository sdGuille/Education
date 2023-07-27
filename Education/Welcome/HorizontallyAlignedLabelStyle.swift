//
//  HorizontallyAlignedLabelStyle.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 27/7/23.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}
