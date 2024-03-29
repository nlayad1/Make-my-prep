//
//  Login:Sign_Back.swift
//  make my Prep final
//
//  Created by User on 28/03/2024.
//

import SwiftUI

struct Back_Button: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(uiColor: .black))
                .frame(
                    width: 55,
                    height: 55
                )
                .frame(
                    width: 100,
                    height: 100
                )
                .overlay(alignment: .center) {
                    Image(systemName: "arrow.turn.down.left")
                        .font(.system(size: 36, weight: .regular, design: .default))
                        .foregroundColor(Color(uiColor: .white))
                }
                .shadow(
                    color: Color(hue: 0, saturation: 0, brightness: 0, opacity: 0.333),
                    radius: 5.5,
                    x: 0,
                    y: 0
                )
        }
    }
}
