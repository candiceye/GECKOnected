//
//  LoginViewController.swift
//  GECKOnected
//
//  Created by Candice Ye on 8/14/17.
//  Copyright © 2017 Candice Ye. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        setUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUI() {
        let wallpaper = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
            wallpaper.image = #imageLiteral(resourceName: "LoginViewControllerSCREEN")
            wallpaper.contentMode = .scaleAspectFill
            view.addSubview(wallpaper)
        
        let usernameTextField = UITextField(frame: CGRect(x: view.frame.width * 0.08, y: view.frame.height * 0.402, width: view.frame.width * 0.8, height: 15.5))
            usernameTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
            view.addSubview(usernameTextField)

        let passwordTextField = UITextField(frame: CGRect(x: view.frame.width * 0.08, y: view.frame.height * 0.505, width: view.frame.width * 0.8, height: 15.5))
            passwordTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
            view.addSubview(passwordTextField)
        
        let loginButton = UIButton(frame: CGRect(x: view.frame.width * 127/375, y: view.frame.height * 409/667, width: view.frame.width * 121/375, height: view.frame.height * 43/667))
            loginButton.setImage(#imageLiteral(resourceName: "loginButton"), for: UIControlState.normal)
            view.addSubview(loginButton)
        
        let createAccountButton = UIButton(frame: CGRect(x: view.frame.width * 88/375, y: view.frame.height * 554/667, width: view.frame.width * 199/375, height: view.frame.height * 42/667))
            createAccountButton.setImage(#imageLiteral(resourceName: "createAccountButton"), for: UIControlState.normal)
            view.addSubview(createAccountButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
