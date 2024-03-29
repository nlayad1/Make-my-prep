//
//  login_sign.swift
//  make my Prep final
//
//  Created by User on 28/03/2024.
//import pages
import SwiftUI

struct Login_Sign_up: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("CDE92FA0-A9F8-4E89-ADC6-932E4F68D3F1")
                    .resizable()
                    .frame(
                        width: 396,
                        height: 875      
                    )

                VStack {
                    VStack(spacing: 162) {
                        VStack {
                            Image("Make_my_Prep_Logo-removebg-preview")
                                .resizable()
                                .frame(
                                    width: 191,
                                    height: 191
                                )
                                .scaledToFit()

                            Text("MAKE MY PREP")
                                .font(.system(size: 40, weight: .semibold, design: .default))
                                .foregroundColor(Color(hue: 0.288, saturation: 0.134, brightness: 0.643, opacity: 1))
                                .shadow(
                                    color: Color(hue: 0, saturation: 0, brightness: 0, opacity: 0.333),
                                    radius: 1,
                                    x: 0,
                                    y: 0
                                )
                        }
                        VStack(spacing: 19) {
                            NavigationLink {
                                Log_In()
                                

                            } label: {
                                ZStack {
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .circular
                                    )
                                    .fill(Color(uiColor: .white))
                                    .shadow(
                                        color: Color(hue: 0, saturation: 0, brightness: 0, opacity: 0.333),
                                        radius: 25,
                                        x: 26,
                                        y: 21
                                    )
                                    .frame(
                                        width: 284,
                                        height: 59
                                    )

                                    Text("Log In")
                                        .font(.system(size: 33, weight: .regular, design: .default))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.298, saturation: 0.248, brightness: 0.522, opacity: 1))
                                }
                            }
                            NavigationLink {
                                Sign_Up()
                                

                            } label: {
                                ZStack {
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .circular
                                    )
                                    .fill(Color(hue: 0.298, saturation: 0.248, brightness: 0.522, opacity: 1))
                                    .frame(
                                        width: 284,
                                        height: 59
                                    )
                                    .shadow(
                                        color: Color(hue: 0, saturation: 0, brightness: 0, opacity: 0.333),
                                        radius: 9,
                                        x: 5,
                                        y: 4
                                    )

                                    Text("Sign Up")
                                        .font(.system(size: 33, weight: .regular, design: .default))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(uiColor: .white))
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }

}
#Preview{
    Login_Sign_up()
}

