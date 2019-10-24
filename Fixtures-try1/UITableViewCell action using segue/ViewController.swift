//
//  ViewController.swift
//  UITableViewCell action using segue
//
//  Created by Devansh Shah on 23/10/19.
//  Copyright © 2019 Devansh Shah. All rights reserved.
//

import UIKit

import UIKit

class Sports {
    var sportName: String?
    var sportcategory: String?

    init(prName:String, prCategory:String) {
        self.sportName = prName
        self.sportcategory = prCategory
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    
    @IBOutlet weak var tblSports: UITableView!
    var sportArray = [Sports]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            let Football = Sports(prName: "Football", prCategory: "Male")
            sportArray.append(Football)
            let Cricket = Sports(prName: "Cricket", prCategory: "Female")
            sportArray.append(Cricket)
            let Cricket2 = Sports(prName: "Cricket", prCategory: "Male")
            sportArray.append(Cricket2)
            let Tennis = Sports(prName: "Tennis", prCategory: "Mixed")
            sportArray.append(Tennis)
            let Basketball = Sports(prName: "Basketball", prCategory: "Male")
            sportArray.append(Basketball)
            let Basketball2 = Sports(prName: "Basketball", prCategory: "Female")
            sportArray.append(Basketball2)
            let Badminton = Sports(prName: "Badminton", prCategory: "Mixed")
            sportArray.append(Badminton)
            let TableTennis = Sports(prName: "Table Tennis", prCategory: "Mixed")
            sportArray.append(TableTennis)
            let Chess = Sports(prName: "Chess", prCategory: "Mixed")
            sportArray.append(Chess)
            let Archery = Sports(prName: "Archery", prCategory: "Mixed")
            sportArray.append(Archery)
            let Boxing = Sports(prName: "Boxing", prCategory: "Male")
            sportArray.append(Boxing)
            let Boxing2 = Sports(prName: "Boxing", prCategory: "Female")
            sportArray.append(Boxing2)
            let Volleyball = Sports(prName: "Volleyball", prCategory: "Male")
            sportArray.append(Volleyball)
            let Volleyball2 = Sports(prName: "Volleyball", prCategory: "Female")
            sportArray.append(Volleyball2)
            let Throwball = Sports(prName: "Throwball", prCategory: "Female")
            sportArray.append(Throwball)
           
            
            tblSports.dataSource = self
            tblSports.delegate = self

        }
        
        
        //MARK:- UITableView methods
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return sportArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "productstable")
            if cell == nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: "productstable")
            }
            
//            if( indexPath.row % 2 == 0){
//                cell?.backgroundColor=UIColor.black
//                cell?.textLabel?.textColor=UIColor.white
//                cell?.detailTextLabel?.textColor=UIColor.white
//            }
//            else{
//                cell?.backgroundColor=UIColor.white
//            }
//            else if( indexPath.row % 2 == 0){
//                cell?.backgroundColor=UIColor.orange
//            }
//            else if( indexPath.row % 5 == 0){
//                cell?.backgroundColor=UIColor.green
//            }
//            else{
//                cell?.backgroundColor=UIColor.yellow
//            }
            
            cell?.textLabel?.text = sportArray[indexPath.row].sportName
            cell?.detailTextLabel?.text = sportArray[indexPath.row].sportcategory
            
            return cell!
        }

        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showdetail", sender: self)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? DetailVC {
                destination.product = sportArray[(tblSports.indexPathForSelectedRow?.row)!]
                tblSports.deselectRow(at: tblSports.indexPathForSelectedRow!, animated: true)

            }
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


    }

