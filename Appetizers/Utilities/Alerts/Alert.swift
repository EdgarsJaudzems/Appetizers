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
}
