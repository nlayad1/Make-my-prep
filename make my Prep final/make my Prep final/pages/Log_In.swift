//
//  Log_In.swift
//  make my Prep final
//
//  Created by User on 28/03/2024.
//

import SwiftUI

struct Log_In: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showPassword: Bool
    @State private var password: String
    @State private var email: String

    init(showPassword: Bool = false, password: String = "", email: String = "") {
        _showPassword = State(initialValue: showPassword)
        _password = State(initialValue: password)
        _email = State(initialValue: email)
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Image("CDE92FA0-A9F8-4E89-ADC6-932E4F68D3F1")
                    .resizable()
                    .frame(
                        width: 396,
                        height: 875
                    )

                ZStack {
        
                    RoundedRectangle(
                        cornerRadius: 26.205,
                        style: .circular
                    )
                    .fill(Color(hue: 0, saturation: 0, brightness: 1, opacity: 1))
                    .frame(
                        width: 303,
                        height: 502
                    )
                    .padding([.bottom], 145)
                    
                    HStack {
                        HStack {
                                            Button(action: {
                                                presentationMode.wrappedValue.dismiss()
                                            }) {
                                                Back_Button()
                                                    .layoutPriority(1)
                                            }
                                            .position(x: 49, y: 782)
                                        }
                    }

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 100) {
                            Spacer(minLength: -5)
                                .frame(
                                    height: 32
                                )

                            VStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Email Adress")
                                        .font(.system(size: 13, weight: .regular, design: .default))

                                    ZStack {
                                        RoundedRectangle(
                                            cornerRadius: 0,
                                            style: .circular
                                        )
                                        .fill(Color(hue: 0, saturation: 0, brightness: 0.851, opacity: 1))
                                        .frame(
                                            width: 265,
                                            height: 30
                                        )

                                        TextField(" ", text: $email)
                                            .padding([.leading], 10)
                                            .font(.system(size: 13, weight: .regular, design: .default))
                                            .frame(
                                                width: 265,
                                                height: 30
                                            )
                                            .background(alignment: .center) {
                                                RoundedRectangle(
                                                    cornerRadius: 2,
                                                    style: .circular
                                                )
                                                .stroke(Color(uiColor: .systemGray), lineWidth: 1)
                                            }
                                            .keyboardType(.default)
                                            .autocorrectionDisabled(true)
                                    }
                                }
                                VStack(alignment: .leading) {
                                    Text("Password")
                                        .font(.system(size: 13, weight: .regular, design: .default))

                                    ZStack {
                                        RoundedRectangle(
                                            cornerRadius: 0,
                                            style: .circular
                                        )
                                        .fill(Color(hue: 0, saturation: 0, brightness: 0.851, opacity: 1))
                                        .frame(
                                            width: 265,
                                            height: 30
                                        )

                                        if showPassword == true {
                                            TextField(" ", text: $password)
                                                .font(.system(size: 13, weight: .regular, design: .default))
                                                .padding([.leading], 10)
                                                .frame(
                                                    width: 265,
                                                    height: 30
                                                )
                                                .background(alignment: .center) {
                                                    RoundedRectangle(
                                                        cornerRadius: 2,
                                                        style: .circular
                                                    )
                                                    .stroke(Color(uiColor: .systemGray), lineWidth: 1)
                                                }
                                                .keyboardType(.default)
                                                .autocorrectionDisabled(true)
                                                .foregroundColor(Color(uiColor: .black))
                                        }
                                        if showPassword == false {
                                            SecureField(" ", text: $password)
                                                .padding([.leading], 10)
                                                .frame(
                                                    width: 265,
                                                    height: 29
                                                )
                                                .autocorrectionDisabled(true)
                                                .font(.system(size: 13, weight: .regular, design: .default))
                                        }
                                    }
                                    .background(alignment: .center) {
                                        RoundedRectangle(
                                            cornerRadius: 2,
                                            style: .circular
                                        )
                                        .stroke(Color(uiColor: .systemGray), lineWidth: 1)
                                    }
                                }
                                HStack {
                                    Button {
                                        showPassword.toggle()
                                    } label: {
                                        HStack {
                                            Checkbox(isChecked: $showPassword)
                                            Text("Show password")
                                                .font(.system(size: 13, weight: .regular, design: .default))
                                        }
                                    }
                                    .buttonStyle(.plain)
                                    .layoutPriority(1)
                                }
                            }
                            NavigationLink {
                                //Home()

                            } label: {
                                ZStack {
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .circular
                                    )
                                    .fill(Color(hue: 0.298, saturation: 0.248, brightness: 0.522, opacity: 1))
                                    .frame(
                                        width: 224,
                                        height: 85
                                    )
                                    .shadow(
                                        color: Color(hue: 0, saturation: 0, brightness: 0, opacity: 0.333),
                                        radius: 10,
                                        x: 0,
                                        y: 0
                                    )

                                    Text("Log In!")
                                        .font(.system(size: 44, weight: .regular, design: .default))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(uiColor: .white))
                                }
                            }
                            .layoutPriority(0)
                        }
                        .frame(
                            width: 302,
                            height: 496
                        )
                        .position(x: 198, y: 356)
                    }
                }
            }
            .navigationBarBackButtonHidden(false)
            .navigationBarHidden(false)
            .toolbarBackground(.hidden, for: .navigationBar, .tabBar)
        }
    }
}

