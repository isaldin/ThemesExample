//
// Created by saldin on 30/07/16.
// Copyright (c) 2016 sald.in. All rights reserved.
//

import Foundation
import UIKit

struct FlatTheme: Theme
{
    var auth: Module.Auth {
        let passwordField = Module.Auth.StartScreen.PasswordField(margins: UIEdgeInsetsMake(12,12,12,12))
        let startScreen = Module.Auth.StartScreen(width: 12, passwordField: passwordField)
        let confirmScreen = Module.Auth.ConfirmPasswordScreen(bg: UIImage(named: "")!)

        return Module.Auth(startScreen: startScreen, confirmPasswordScreen: confirmScreen)
    }

    var documentsList: Module.DocumentsList {
        let pickType = Module.DocumentsList.PickType(cellHeigt: 12.0)
        return Module.DocumentsList(pickType: pickType)
    }

}