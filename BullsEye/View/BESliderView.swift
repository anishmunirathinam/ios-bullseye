//
//  BESliderView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import SwiftUI

struct BESliderView: View {

    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            BESliderLabelTextView(text: "1")
            Slider(value: $sliderValue, in: 1...100)
            BESliderLabelTextView(text: "100")
        }
    }
}

struct BESliderView_Previews: PreviewProvider {
    static var previews: some View {
        BESliderView(sliderValue: .constant(50.0))
    }
}
