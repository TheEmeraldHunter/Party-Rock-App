//
//  ViewController.swift
//  Party Rock App
//
//  Created by Hiteyjit Gujral on 9/12/17.
//  Copyright © 2017 TheEmeraldHunter. All rights reserved.
//
import Foundation
import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var PartyRocks = [PartyRock]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p1 = PartyRock(imageURL: "https://i2.wp.com/360vr-videos.com/wp-content/uploads/2016/06/redfoo-lights-out-official-360-music-video-youtube-thumbnail.jpg?resize=320%2C180&ssl=1", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
       
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/CdLhdrNgGu4/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lets Get Ridiculus")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/KQ6zr6kCPj8/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Anthem")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/tWyuglGCKgE/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
   
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/SkTt9k4Y-a8/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sorry For Party Rocking")
        
        
        PartyRocks.append(p1)
        PartyRocks.append(p2)
        PartyRocks.append(p3)
        PartyRocks.append(p4)
        PartyRocks.append(p5)

        
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

