//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 04/10/2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    @Published var alertIem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertIem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertIem = AlertContext.invalidEmail
            return false
        }
        
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("Changes have been saved")
    }
}
