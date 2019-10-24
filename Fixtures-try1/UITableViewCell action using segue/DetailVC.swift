//
//  DetailVC.swift
//  UITableViewCell action using segue
//
//  Created by Devansh Shah on 23/10/19.
//  Copyright © 2019 Devansh Shah. All rights reserved.
//
import UIKit

class DetailVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var lblSports: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
  
    
//    @IBOutlet weak var img: UIImageView!
    var product: Sports?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblSports.text = "Fixtures for \((product?.sportName)!) under the category \((product?.sportcategory)!)"
        
        tableView.separatorColor = UIColor(white: 0.95, alpha: 1)
        tableView.dataSource = self
        tableView.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        img.layer.cornerRadius = img.frame.size.width / 2
//              img.clipsToBounds = true
        return 8
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        
      
//        if( indexPath.row % 2 == 0){
//            cell.backgroundColor=UIColor.black
//        }
//        else{
//            cell.backgroundColor=UIColor.white
//            
//        }
        
//        img.layer.cornerRadius = img.frame.size.width / 2
//        img.clipsToBounds = true
        
        return cell
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
