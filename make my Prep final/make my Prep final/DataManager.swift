//
//  DataManager.swift
//  make my Prep final
//
//  Created by User on 29/03/2024.
//

import Foundation

struct User {
    let fullName: String
    let email: String
    let password: String
    let gender: String
    let age: Double
}

class DataManager {
    func saveUser(_ user: User) {
        let fileName = "\(user.email).txt"
        let filePath = getDocumentsDirectory().appendingPathComponent(fileName)
        
        do {
            let userData = "\(user.fullName)\n\(user.email)\n\(user.password)\n\(user.gender)\n\(user.age)"
            try userData.write(to: filePath, atomically: true, encoding: .utf8)
        } catch {
            print("Error saving user data: \(error.localizedDescription)")
        }
    }
    
    func getUser(email: String) -> User? {
        let fileName = "\(email).txt"
        let filePath = getDocumentsDirectory().appendingPathComponent(fileName)
        
        do {
            let userData = try String(contentsOf: filePath)
            let components = userData.components(separatedBy: "\n")
            guard components.count == 5 else { return nil }
            let fullName = components[0]
            let userEmail = components[1]
            let password = components[2]
            let gender = components[3]
            let age = Double(components[4]) ?? 0.0
            return User(fullName: fullName, email: userEmail, password: password, gender: gender, age: age)
        } catch {
            print("Error retrieving user data: \(error.localizedDescription)")
            return nil
        }
    }
    
    private func getDocumentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}
