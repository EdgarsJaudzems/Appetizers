//
//  Appetizer.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 03/10/2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0111,
                                           name: "Test Appetizer",
                                           description: "This is a description for a test appetizer",
                                           price: 20.01,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 80,
                                           carbs: 90)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                        name: "Test Appetizer One",
                                        description: "This is a description for a test appetizer",
                                        price: 20.01,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 80,
                                        carbs: 90)
    
    static let orderItemTwo = Appetizer(id: 2,
                                        name: "Test Appetizer Two",
                                        description: "This is a description for a test appetizer",
                                        price: 20.01,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 80,
                                        carbs: 90)
    
    static let orderItemThree = Appetizer(id: 3,
                                          name: "Test Appetizer Three",
                                          description: "This is a description for a test appetizer",
                                          price: 20.01,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 80,
                                          carbs: 90)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
