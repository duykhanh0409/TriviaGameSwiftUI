//
//  Extensions.swift
//  TriviaGameSwiftUI
//
//  Created by Khanh Nguyen on 09/05/2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle()-> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
