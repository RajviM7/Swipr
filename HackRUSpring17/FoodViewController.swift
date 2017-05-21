//
//  FoodViewController.swift
//  HackRUSpring17
//
//  Created by Rajvi Mehta on 4/23/17.
//  Copyright © 2017 Rajvi Mehta. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class FoodViewController : UITableViewController {
    
    
    var lunch:JSON = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        lunch = menuData[0]["meals"][1]["genres"];
        print(menuData[1]["meals"][1]["genres"][0]["items"][0]);
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (lunch.array?.count)!;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath) as! FoodCell
        

        var wtf = menuData[0]["meals"][1]["genres"][indexPath.row]["items"][0];
        
        cell.title.text = wtf.stringValue;
        
        
        return cell
    }


}
class FoodCell : UITableViewCell {
    @IBOutlet weak var title: UILabel!
    
}
