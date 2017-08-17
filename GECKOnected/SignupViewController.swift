//
//  SignupViewController.swift
//  GECKOnected
//
//  Created by Candice Ye on 8/14/17.
//  Copyright © 2017 Candice Ye. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        let wallpaper = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        wallpaper.image = #imageLiteral(resourceName: "SignupViewControllerSCREEN")
        wallpaper.contentMode = .scaleAspectFill
        view.addSubview(wallpaper)
        
        let backToLoginButton = UIButton(frame: CGRect(x: view.frame.width * 14/375, y: view.frame.height * 33/667, width: view.frame.width * 116/375, height: view.frame.height * 30/667))
        backToLoginButton.setImage(#imageLiteral(resourceName: "backToLogin"), for: UIControlState.normal)
        backToLoginButton.addTarget(self, action: #selector(signupToLogin), for: .touchUpInside)
        view.addSubview(backToLoginButton)
        
        let fullnameTextField = UITextField(frame: CGRect(x: view.frame.width * 31/375, y: view.frame.height * 221/667, width: view.frame.width * 314/375, height: view.frame.height * 28/667))
        fullnameTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
        view.addSubview(fullnameTextField)
        
        let emailTextField = UITextField(frame: CGRect(x: view.frame.width * 31/375, y: view.frame.height * 289/667, width: view.frame.width * 314/375, height: view.frame.height * 28/667))
        emailTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
        view.addSubview(emailTextField)
        
        let usernameTextField = UITextField(frame: CGRect(x: view.frame.width * 31/375, y: view.frame.height * 357/667, width: view.frame.width * 314/375, height: view.frame.height * 28/667))
        usernameTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
        view.addSubview(usernameTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: view.frame.width * 31/375, y: view.frame.height * 425/667, width: view.frame.width * 314/375, height: view.frame.height * 28/667))
        passwordTextField.textColor = UIColor(red: 68/255, green: 192/255, blue: 255/255, alpha: 1)
        view.addSubview(passwordTextField)
        
        let signupButton = UIButton(frame: CGRect(x: view.frame.width * 115/375, y: view.frame.height * 508/667, width: view.frame.width * 143/375, height: view.frame.height * 43/667))
        signupButton.setImage(#imageLiteral(resourceName: "signupButton"), for: UIControlState.normal)
        signupButton.addTarget(self, action: #selector(signupToFeed), for: .touchUpInside)
        view.addSubview(signupButton)
    }
    
    //Segue Functions
    func signupToLogin() {
        self.performSegue(withIdentifier: "signupToLogin", sender: self)
    }
    
    func signupToFeed() {
        self.performSegue(withIdentifier: "signupToFeed", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
