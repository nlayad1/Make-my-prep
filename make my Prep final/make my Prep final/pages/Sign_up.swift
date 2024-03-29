import SwiftUI

struct Sign_Up: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var password: String = ""
    @State private var cPassword: String = ""
    @State private var showPassword: Bool = false
    @State private var gender: String = ""
    @State private var age: Double = 0
    @State private var allergy: String = "Picker"
    @State private var showCPassword: Bool = false
    @State private var showErrorAlert: Bool = false 
    
    init(email: String = "", fullName: String = "", password: String = "", cPassword: String = "", showPassword: Bool = false, gender: String = "", age: Double = 0, allergy: String = "Picker", showCPassword: Bool = false) {
        _email = State(initialValue: email)
        _fullName = State(initialValue: fullName)
        _password = State(initialValue: password)
        _cPassword = State(initialValue: cPassword)
        _showPassword = State(initialValue: showPassword)
        _gender = State(initialValue: gender)
        _age = State(initialValue: age)
        _allergy = State(initialValue: allergy)
        _showCPassword = State(initialValue: showCPassword)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("CDE92FA0-A9F8-4E89-ADC6-932E4F68D3F1")
                    .resizable()
                    .frame(
                        width: 396,
                        height: 855
                    )
                
                ZStack {
                    RoundedRectangle(
                        cornerRadius: 11.976,
                        style: .circular
                    )
                    .fill(Color(hue: 0, saturation: 0, brightness: 1, opacity: 1))
                    .frame(
                        width: 303,
                        height: 609
                    )
                    .padding([.bottom], 59)
                    
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
                        VStack(spacing: 12) {
                            VStack(alignment: .leading) {
                                Text("Full Name")
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
                                    
                                    TextField(" ", text: $fullName)
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
                                        .textContentType(.name)
                                        .autocorrectionDisabled(true)
                                }
                            }
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
                                                .foregroundColor(Color(uiColor: .systemBlue))
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
                                VStack(alignment: .leading) {
                                    Text("Confirm Password")
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
                                        
                                        if showPassword == false {
                                            SecureField(" ", text: $cPassword)
                                                .padding([.leading], 10)
                                                .frame(
                                                    width: 265,
                                                    height: 29
                                                )
                                                .textFieldStyle(.automatic)
                                                .autocorrectionDisabled(true)
                                                .textContentType(.newPassword)
                                                .font(.system(size: 13, weight: .regular, design: .default))
                                        }
                                        if showPassword == true {
                                            TextField(" ", text: $cPassword)
                                                .padding([.leading], 10)
                                                .font(.system(size: 13, weight: .regular, design: .default))
                                                .frame(
                                                    width: 265,
                                                    height: 30
                                                )
                                                .keyboardType(.default)
                                                .textContentType(.password)
                                                .autocorrectionDisabled(true)
                                                .foregroundColor(Color(uiColor: .systemBlue))
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
                                VStack {
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
                            }
                            HStack(spacing: 14) {
                                VStack(alignment: .leading) {
                                    Text("Gender")
                                        .font(.system(size: 13, weight: .regular, design: .default))
                                    
                                    ZStack {
                                        RoundedRectangle(
                                            cornerRadius: 5,
                                            style: .circular
                                        )
                                        .fill(Color(hue: 0, saturation: 0, brightness: 0.851, opacity: 1))
                                        .frame(
                                            width: 123,
                                            height: 28
                                        )
                                        
                                        Picker("Gender", selection: $gender) {
                                            Text("Choose")
                                            Text("Male").tag("Option 1")
                                            Text("Female").tag("Option 2")
                                        }
                                        .font(.system(size: 13, weight: .regular, design: .default))
                                    }
                                }
                                VStack(alignment: .leading) {
                                    Text("Age")
                                        .font(.system(size: 13, weight: .regular, design: .default))
                                    
                                    ZStack {
                                        RoundedRectangle(
                                            cornerRadius: 5,
                                            style: .circular
                                        )
                                        .fill(Color(hue: 0, saturation: 0, brightness: 0.851, opacity: 1))
                                        .frame(
                                            width: 123,
                                            height: 28
                                        )
                                        
                                        TextField(" ", value: $age, format: .number)
                                            .frame(
                                                width: 123,
                                                height: 28
                                            )
                                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -9))
                                            .keyboardType(.numberPad)
                                    }
                                }
                            }
                            .padding(2)
                            
                            VStack(spacing: 4) {
                                Text("Allergies")
                                    .font(.system(size: 13, weight: .regular, design: .default))
                                
                                ZStack {
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .circular
                                    )
                                    .fill(Color(hue: 0, saturation: 0, brightness: 0.851, opacity: 1))
                                    .frame(
                                        width: 165,
                                        height: 28
                                    )
                                    
                                    Picker("Allergy", selection: $allergy) {
                                        Text("Choose")
                                        Text("Gluten").tag("Option 1")
                                        Text("Dairy").tag("Option 2")
                                        Text("Nuts ").tag("Option 3")
                                        Text("Shellfish").tag("Option 4")
                                        Text("Eggs").tag("Option 5")
                                        Text("Soy").tag("Option 6")
                                        Text("Fish").tag("Option 7")
                                        Text("Mustard").tag("Option 8")
                                        Text("Sesame").tag("Option 9")
                                        Text("Celery").tag("Option 10")
                                    }
                                    .frame(
                                        width: 165,
                                        height: 28
                                    )
                                    .font(.system(size: 13, weight: .regular, design: .default))
                                    .pickerStyle(.menu)
                                }
                            }
                            Spacer(minLength: 24)
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
                                .layoutPriority(0)
                                
                                Button(action: sign_Up) {
                                    Text("Sign Up!")
                                        .font(.system(size: 44, weight: .regular, design: .default))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .alert(isPresented: $showErrorAlert) {
                                            Alert(title: Text("Error"), message: Text("Passwords don't match. Please try again."), dismissButton: .default(Text("OK")))
                                        } // Display error alert if showErrorAlert is true
                        }
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                        .toolbarBackground(.hidden, for: .navigationBar, .tabBar)
                    }
                   
                    
                    
                    func sign_Up() {
                        // Check if passwords match
                        if password =! cPassword {
                            showErrorAlert = true
                        }
                        
                        // Create a user object
                        let user = User(fullName: fullName, email: email, password: password, gender: gender, age: age)
                        
                        // Save the user data
                        DataManager().saveUser(user)
                        
                        // Dismiss the sign-up view
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}
