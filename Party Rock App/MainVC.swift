//
//  ViewController.swift
//  Party Rock App
//
//  Created by Hiteyjit Gujral on 9/12/17.
//  Copyright © 2017 TheEmeraldHunter. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var PartyRocks = [PartyRock]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) -> UITableViewCell {
  
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Party Cell", for: indexPath) as? PartyCell{
        
        }
        
        return UITableViewCell()
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return PartyRocks.count
    }


}

