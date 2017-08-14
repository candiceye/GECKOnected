//
//  ViewController.swift
//  GECKOnected
//
//  Created by Candice Ye on 8/14/17.
//  Copyright © 2017 Candice Ye. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
