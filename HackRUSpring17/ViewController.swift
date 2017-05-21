//
//  ViewController.swift
//  HackRUSpring17
//
//  Created by Rajvi Mehta on 4/22/17.
//  Copyright © 2017 Rajvi Mehta. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    var menuObj:JSON = nil;
    @IBOutlet weak var hiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func butt(_ sender: UIButton) {
        
        Alamofire.request("https://rumobile.rutgers.edu/1/rutgers-dining.txt").responseJSON { response in
              // result of response serialization
            
            if let blah = response.value {
                    do {
                        self.menuObj = JSON(blah);
                        
                        for (key,subJson):(String, JSON) in self.menuObj {
                            //Do something you want
                            
                            print(subJson["location_name"]);
                            
                            for(key,mealJson):(String, JSON) in subJson["meals"] {
                                
                                print(mealJson);
                            }
                        }
                        
                //print(json?.keys.first);
                    }
                catch {
                    print("whoops");
                }
            }
            
            
            
        }
        

        hiLabel.text = "bye";
    }

}

