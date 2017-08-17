//
//  DetailViewController.swift
//  GECKOnected
//
//  Created by Candice Ye on 8/15/17.
//  Copyright © 2017 Candice Ye. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        let wallpaper = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        wallpaper.image = #imageLiteral(resourceName: "DetailViewControllerSCREEN")
        wallpaper.contentMode = .scaleAspectFill
        view.addSubview(wallpaper)
        
        let backToFeed = UIButton(frame: CGRect(x: view.frame.width * 16/375, y: view.frame.height * 36/667, width: view.frame.width * 63/375, height: view.frame.height * 30/667))
        backToFeed.setImage(#imageLiteral(resourceName: "backButton"), for: UIControlState.normal)
        backToFeed.addTarget(self, action: #selector(detailToFeed), for: .touchUpInside)
        view.addSubview(backToFeed)
        
        let imInterestedButton = UIButton(frame: CGRect(x: view.frame.width * 97/375, y: view.frame.height * 548/667, width: view.frame.width * 182/375, height: view.frame.height * 45/667))
        imInterestedButton.setImage(#imageLiteral(resourceName: "imInterestedButton"), for: UIControlState.normal)
        view.addSubview(imInterestedButton)
    }
    
    //Segue Functions
    func detailToFeed() {
        self.performSegue(withIdentifier: "detailToFeed", sender: self)
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
