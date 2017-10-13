//
//  ViewController.swift
//  firebaseWorkTest
//
//  Created by Minhas, Taalib (ELS-LON) on 13/10/2017.
//  Copyright © 2017 Minhas, Taalib (ELS-LON). All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var ref:DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var birdData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the firebase reference
        ref = Database.database().reference()
        
        // Retrieve the posts
        databaseHandle = ref?.child("birdFacts").observe(.childAdded, with: { (snapshot) in
            
            let post = snapshot.value as? String
            if let actualPost = post {
            self.birdData.append(actualPost)
                
                self.myTableView.reloadData()
                
            }
        })
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return birdData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = birdData[indexPath.row]
        
        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

