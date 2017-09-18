//
//  ViewController.swift
//  Party Rock App
//
//  Created by Hiteyjit Gujral on 9/12/17.
//  Copyright © 2017 TheEmeraldHunter. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var PartyRocks = [PartyRock]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p1 = PartyRock(imageURL: "", videoURL: "", videoTitle: "")
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Party Cell", for: indexPath) as? PartyCell{
            
            let partyRock = PartyRocks[indexPath.row]
            
            cell.UptadeUI(partyRock: partyRock)
            
            return cell
            
        }else {
        
        return UITableViewCell()
            
        }
        
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PartyRocks.count
    }

    
    
}

