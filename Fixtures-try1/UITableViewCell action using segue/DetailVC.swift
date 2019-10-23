//
//  DetailVC.swift
//  UITableViewCell action using segue
//
//  Created by Devansh Shah on 23/10/19.
//  Copyright © 2019 Devansh Shah. All rights reserved.
//
import UIKit

class DetailVC: UIViewController {

    
    @IBOutlet weak var lblSports: UILabel!
    
    var product: Sports?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblSports.text = "Fixtures for \((product?.sportName)!) under the category \((product?.sportcategory)!) needs to be shown in form of cards"
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
