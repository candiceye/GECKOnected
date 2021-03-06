//
//  FeedViewController.swift
//  GECKOnected
//
//  Created by Candice Ye on 8/15/17.
//  Copyright © 2017 Candice Ye. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        let wallpaper = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        wallpaper.image = #imageLiteral(resourceName: "FeedViewControllerSCREEN")
        wallpaper.contentMode = .scaleAspectFill
        view.addSubview(wallpaper)
        
        let addNewSocial = UIButton(frame: CGRect(x: view.frame.width * 330/375, y: view.frame.height * 35/667, width: view.frame.width * 24.35/375, height: view.frame.height * 24.35/667))
        addNewSocial.setImage(#imageLiteral(resourceName: "addSocialButton"), for: UIControlState.normal)
        addNewSocial.addTarget(self, action: #selector(feedToNewSocial), for: .touchUpInside)
        view.addSubview(addNewSocial)
    }
    
    //Segue Functions
    func feedToNewSocial() {
        self.performSegue(withIdentifier: "feedToNewSocial", sender: self)
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
