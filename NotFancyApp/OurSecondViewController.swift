//
//  OurSecondViewController.swift
//  NotFancyApp
//
//  Created by Anthony Tulai on 2018-02-28.
//  Copyright © 2018 Anthony Tulai. All rights reserved.
//

import UIKit

class OurSecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var petImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changePictureButtonPressed(_ sender: UIButton) {
        changeImage()
        changeName()
    }
    
    private func changeImage() {
        if petImageView.image == #imageLiteral(resourceName: "cat") {
            petImageView.image = #imageLiteral(resourceName: "dog")
            self.view.backgroundColor = UIColor(displayP3Red: 1.0, green: 25/255.0, blue: 25/255.0, alpha: 0.5)
        } else {
            petImageView.image = #imageLiteral(resourceName: "cat")
            self.view.backgroundColor = .blue
        }
    }
    
    private func changeName() {
        if nameLabel.text == "Carlos" {
            nameLabel.text = "Bob"
        } else {
            nameLabel.text = "Carlos"
        }
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
