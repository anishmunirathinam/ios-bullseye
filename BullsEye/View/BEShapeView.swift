//
//  BEShapeView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import SwiftUI

struct BERoundedView: View {

    var systemName: String

    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("BETextColor"))
            .background(
                Circle()
                    .strokeBorder(Color("BEButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 56.0, height: 56.0)
            )
            .padding()
    }
}

struct BERoundedFilledView: View {

    var systemName: String

    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("BETextFilledColor"))
            .background(
                Circle()
                    .frame(width: 56.0, height: 56.0)
            )
            .padding()
    }
}

struct BERoundedRectangleView: View {

    var title: String
    var text: String

    var body: some View {
        VStack(spacing: 5.0) {
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(Color("BETextColor"))
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color("BEButtonStrokeColor"), lineWidth: 2.0)
                .frame(width: 68.0, height: 56.0)
                .overlay(
                    Text(text)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BETextColor"))
                )
        }
    }
}

struct BEShapeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BERoundedView(systemName: "list.dash")
            BERoundedFilledView(systemName: "list.dash")
            BERoundedRectangleView(title: "SCORE", text: "999")
        }
    }
}
