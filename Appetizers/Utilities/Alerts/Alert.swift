//
//  Alert.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 03/10/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - Network Alerts
    static let invalidData = AlertItem(
        title: Text("Server error"),
        message: Text("The data received from the server was invalid"),
        dismissButton: .default(Text("Ok")))
    static let invalidResponse = AlertItem(
        title: Text("Server error"),
        message: Text("Invalid response from the server."),
        dismissButton: .default(Text("Ok")))
    static let invalidURL = AlertItem(
        title: Text("Server error"),
        message: Text("There was an issue connecting to the server"),
        dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(
        title: Text("Server error"),
        message: Text("Unable to complete your request at this time"),
        dismissButton: .default(Text("Ok")))
    
    // MARK: - Account Alerts
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all fields in the form have been filled out"),
        dismissButton: .default(Text("Ok")))
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email in correct"),
        dismissButton: .default(Text("Ok")))
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved"),
        dismissButton: .default(Text("Ok")))
    static let invalidUserData = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or retrieving your profile"),
        dismissButton: .default(Text("Ok")))
}
