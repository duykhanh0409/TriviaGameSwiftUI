//
//  PrimaryButton.swift
//  TriviaGameSwiftUI
//
//  Created by Khanh Nguyen on 08/05/2023.
//

import SwiftUI

struct PrimaryButton: View {
    var text:String
    var backgroundColor: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(backgroundColor)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Button")
    }
}
