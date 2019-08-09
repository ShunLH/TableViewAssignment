//
//  ViewController.swift
//  TableViewAssignment
//
//  Created by AcePlus Admin on 8/7/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit
struct Person {
	var name : String
	var address : String
	var foodieType : String
	var isFollow : Bool
	var image : UIImage
	
}

class ViewController: UIViewController {

	@IBOutlet weak var tableViewFriendList: UITableView!
	let friendList :[Person]  = [Person.init(name: "Lisanne Viscaal", address: "Edinburgh", foodieType: "Gold Foodies", isFollow: true,image:#imageLiteral(resourceName: "Girl3")),
								 Person.init(name: "Tsutsui Ichiha", address: "Andries",foodieType:  "Silver Foodies", isFollow: false,image:#imageLiteral(resourceName: "Girl2")),
								 Person.init(name: "GvozdenBoskovsky", address: "Kiandra Lowe", foodieType: "Gold Foodies", isFollow: true,image:#imageLiteral(resourceName: "Girl1")),
								 Person.init(name: "Sampson Totton", address: "Maria Trofimova", foodieType: "Silver Foodies", isFollow: false,image:#imageLiteral(resourceName: "Girl4")),
								 Person.init(name: "Elwin Sharvill", address: "Munich", foodieType: "Gold Foodies", isFollow: false,image:#imageLiteral(resourceName: "Boy"))]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableViewFriendList.dataSource = self
		let nib = UINib(nibName: FriendListTableViewCell.identifier, bundle: nil)
		tableViewFriendList.register(nib, forCellReuseIdentifier: FriendListTableViewCell.identifier)
		tableViewFriendList.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)
	}


}
extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return friendList.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: FriendListTableViewCell.identifier, for: indexPath) as! FriendListTableViewCell
		let person = friendList[indexPath.row]
		cell.ivPicture.image = person.image
		cell.lblName.text = person.name
		cell.foodieType.text = person.foodieType
		cell.lblAddress.text = person.address
		
		return cell
	}
	
	
}
