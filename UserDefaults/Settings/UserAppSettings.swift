//
//  UserAppSettings.swift
//  UserDefaults
//
//  Created by Илья Желтиков on 09.11.2021.
//

import Foundation

struct ControlQuestion: Codable {
    let question: String
    let answer: String
}

struct UserSettings: Codable {
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    var autoLogin: Bool
    var faceID: Bool
    let controlQuestion: [ControlQuestion]
}

enum Keys {
    static let appSettings = "appSettings"
}
