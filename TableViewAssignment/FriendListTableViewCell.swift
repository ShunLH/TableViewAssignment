//
//  FriendListTableViewCell.swift
//  TableViewAssignment
//
//  Created by AcePlus Admin on 8/7/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class FriendListTableViewCell: UITableViewCell {
	static let identifier = "FriendListTableViewCell"
	
	@IBOutlet weak var ivPicture: UIImageView!
	
	@IBOutlet weak var lblName: UILabel!
	
	@IBOutlet weak var lblAddress: UILabel!
	
	@IBOutlet weak var foodieType: UILabel!
	
	@IBOutlet weak var uvFollow: UIView!
	
	@IBOutlet weak var lblFollow: UILabel!
	
	@IBOutlet weak var btnFollow: UIButton!
	
	var isFollow : Bool = false
	
	override func awakeFromNib() {
        super.awakeFromNib()
		self.selectionStyle = .none
		btnFollow.layer.borderWidth = 1
		btnFollow.layer.borderColor = #colorLiteral(red: 0.1333333333, green: 0.7254901961, blue: 0.6666666667, alpha: 1)
		btnFollow.layer.cornerRadius = 12
		ivPicture.layer.cornerRadius = 50
		
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
	@IBAction func btnFollow(_ sender: Any) {
		isFollow = !isFollow
		if isFollow {
			btnFollow.backgroundColor = #colorLiteral(red: 0.1333333333, green: 0.7254901961, blue: 0.6666666667, alpha: 1)
			btnFollow.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
			
		}else {
			btnFollow.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
			btnFollow.setTitleColor(#colorLiteral(red: 0.1333333333, green: 0.7254901961, blue: 0.6666666667, alpha: 1), for: .normal)

		}
		
	}
}
