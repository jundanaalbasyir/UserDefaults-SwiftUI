//
//  UserSetting.swift
//  UserDefaults
//
//  Created by Jundana Al-Basyir on 25/05/21.
//

import SwiftUI

struct UserSetting: View {
    @ObservedObject var userSettings = UserSettingViewModel()
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $userSettings.username)
                    Toggle(isOn: $userSettings.isPrivate) {
                        Text("Private Account")
                    }
                    Picker(selection: $userSettings.ringtone, label: Text("Ringtone")) {
                        ForEach(userSettings.ringtones, id: \.self) { ringtone in
                            Text(ringtone)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct UserSetting_Previews: PreviewProvider {
    static var previews: some View {
        UserSetting()
    }
}
