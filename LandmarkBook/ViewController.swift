//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Mertcan Ünek on 6.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarImages = [UIImage]()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNames.append("bigben")
        landmarkNames.append("eyfel")
        landmarkNames.append("kremlin")
        landmarkNames.append("tajmahal")
        
        landmarImages.append(UIImage(named: "bigben")!)
        landmarImages.append(UIImage(named: "eyfel")!)
        landmarImages.append(UIImage(named: "kremlin")!)
        landmarImages.append(UIImage(named: "tajmahal")!)
        

    }
    
    // numberOfRowsInSection --> determines the number of cells in any partition. Here we indicate that there are 10 cells in any partition.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count    }
    
    // cellForRowAt --> used to determine which data to show for each cell. Here we create a UITableViewCell object for each cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    

}

