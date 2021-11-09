//
//  ViewController.swift
//  UserDefaults
//
//  Created by Илья Желтиков on 09.11.2021.
//

import UIKit

class ViewController: UIViewController {

    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userSettings = createSomeUserSettings()
        let encoder = JSONEncoder()
        let encodedUserSettings = try? encoder.encode(userSettings)
        userDefaults.set(encodedUserSettings, forKey: Keys.appSettings)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let encodedSettings = userDefaults.object(forKey: Keys.appSettings) as! Data
        let decoder = JSONDecoder()
        let userSettings = try? decoder.decode(UserSettings.self, from: encodedSettings)
        
        print(userSettings)
    }
    
    private func createSomeUserSettings() -> UserSettings {
        return UserSettings(name: "Ilya", lastName: "Zheltikov", phoneNumber: "+7(927)123-45-67", email: "izheltikov0@gmail.com", autoLogin: true, faceID: true, controlQuestion: [.init(question: "Mother's Last Name", answer: "Petrova")])
    }
}

