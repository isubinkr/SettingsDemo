//
//  ViewController.swift
//  SettingsDemo
//
//  Created by Subin Kumar on 30/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var lab = ["Screen Time", "General", "Accessibility", "Privacy & Security", "Passwords", "Safari", "News", "Translate", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center", "Developer"]
    
    var img = ["pic1", "pic2", "pic3", "pic4", "pic5", "pic6", "pic7", "pic8", "pic9", "pic10", "pic11", "pic12", "pic13", "pic14", "pic15"]
    
    @IBOutlet weak var myTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTable.dataSource = self
        myTable.delegate = self
        
        myTable.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: "cellcustom")
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lab.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cellcustom", for: indexPath) as! SettingsCell
        cell.CustomImageView.image = UIImage(named: img[indexPath.row])
//        cell.CustomImageView.image = UIImage(systemName: "airplane")
        cell.CustomLabelView.text = lab[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Settings"
    }


}

