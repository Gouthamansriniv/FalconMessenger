//
//  ContactsDetailController.swift
//  Pigeon-project
//
//  Created by Roman Mizin on 8/7/17.
//  Copyright © 2017 Roman Mizin. All rights reserved.
//

import UIKit

class ContactsDetailController: UITableViewController {
  
  
  var contactName = String()
  
  var contactPhoneNumbers = [String]()

  
    override func viewDidLoad() {
        super.viewDidLoad()
      title = "Info"
      view.backgroundColor = .white
      extendedLayoutIncludesOpaqueBars = true
      tableView.separatorStyle = .none
    }

  
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
      if section == 0 {
        return 1
      } else if section == 1 {
        return contactPhoneNumbers.count
      } else {
        return 1
      }
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let identifier = "cell"
      let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .default, reuseIdentifier: identifier)
       cell.textLabel?.textColor = .black
      
      if indexPath.section == 0 {
        cell.imageView?.image = UIImage(named: "UserpicIcon")
        cell.textLabel?.text = contactName
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
      } else if indexPath.section == 1 {
        
        cell.textLabel?.text = contactPhoneNumbers[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 17)
      } else {
        
        cell.textLabel?.textColor = PigeonPalette.pigeonPaletteBlue
        cell.textLabel?.text = "Invite to Pigeon"
        cell.textLabel?.font = UIFont.systemFont(ofSize: 17)
      }

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      if indexPath.section == 0 {
        return 100
      } else {
        return 50
      }
    }
  
}
