//
//  Checkbox.swift
//  make my Prep final
//
//  Created by User on 28/03/2024.
//

import SwiftUI

struct Checkbox: View {
    @Binding private var isChecked: Bool

    init(isChecked: Binding<Bool> = .constant(true)) {
        _isChecked = isChecked
    }

    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 4,
                style: .circular
            )
            .fill(Color(uiColor: .systemBackground))
            .frame(
                width: 28,
                height: 28
            )

            RoundedRectangle(
                cornerRadius: 4,
                style: .circular
            )
            .stroke(Color(uiColor: .systemGray), lineWidth: 1)
            .frame(
                width: 28,
                height: 28
            )

            if isChecked == true {
                Image(systemName: "checkmark")
                    .foregroundColor(Color(hue: 0.078, saturation: 0.688, brightness: 0.792, opacity: 1))
                    .font(.system(size: 17, weight: .semibold, design: .default))
            }
        }
    }
}

