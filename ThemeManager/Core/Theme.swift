//
// Created by saldin on 30/07/16.
// Copyright (c) 2016 sald.in. All rights reserved.
//

import Foundation
import UIKit

protocol Theme
{
    var auth: Module.Auth { get }
    var documentsList: Module.DocumentsList { get }
}

// MARK: Modules
enum Module
{
    struct Auth
    {
        let startScreen: StartScreen
        let confirmPasswordScreen: ConfirmPasswordScreen
    }

    struct DocumentsList
    {
        let pickType: PickType
    }
}

// MARK: Auth
extension Module.Auth
{
    struct StartScreen
    {
        let width: CGFloat
        let height: CGFloat
        let passwordField: PasswordField

        init(width: CGFloat = 12, height: CGFloat = 15, passwordField: PasswordField)
        {
            self.init(width: width, height: height, passwordField: passwordField)
        }
    }

    struct ConfirmPasswordScreen
    {
        let bg: UIImage
    }
}

extension Module.Auth.StartScreen
{
    struct PasswordField
    {
        let margins: UIEdgeInsets
    }
}

// MARK: DocumentsList
extension Module.DocumentsList
{
    struct PickType
    {
        let cellHeigt: CGFloat
    }
}

//----------------------------------------------------------------------------------------------------------------------

struct ThemeManager
{
    static var currentTheme: Theme = FlatTheme()
}







