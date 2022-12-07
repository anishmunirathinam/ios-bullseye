//
//  ContentView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 06/12/22.
//

import SwiftUI

struct BEContentView: View {

    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .kerning(2.0)
                .bold()
                .font(.footnote)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
            Text("79")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                Slider(value: .constant(50.0), in: 1...100)
                Text("100")
            }
            Button {
                print("Hit me!")
                showAlert = true
            } label: {
                Text("Hit Me")
            }
            .alert("🎉 Score", isPresented: $showAlert) {
                
            } message: {
                Text("Your score will be displayed here!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BEContentView()
    }
}
