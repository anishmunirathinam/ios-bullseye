//
//  BETextView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import SwiftUI

struct BESliderLabelTextView: View {

    var text: String

    var body: some View {
        Text(text)
            .frame(width: 35)
    }
}

struct BETargetLabelTextView: View {

    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct BEInstructionLabelTextView: View {

    var text: String
    
    var body: some View {
        Text(text)
            .kerning(2.0)
            .bold()
            .font(.footnote)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
    }
}

struct BETextView_Previews: PreviewProvider {
    static var previews: some View {
        BESliderLabelTextView(text: "Slider")
    }
}
