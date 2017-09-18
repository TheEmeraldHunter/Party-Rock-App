//
//  PartyCell.swift
//  Party Rock App
//
//  Created by Hiteyjit Gujral on 9/16/17.
//  Copyright © 2017 TheEmeraldHunter. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    //@IBOutlet weak var VideoTitle: UILabel!

    @IBOutlet weak var VideoTitle: UILabel!
    
    @IBOutlet weak var VideoPreviewImage: UIImageView!
    
   // @IBOutlet weak var VideoPreviewImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func UptadeUI(partyRock: PartyRock) {
VideoTitle.text = partyRock.videoTitle
   //TODO: Set image from url
    }


}


