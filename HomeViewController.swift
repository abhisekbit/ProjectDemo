//
//  ViewController.swift
//  ProjectDemo
//
//  Created by Abhisek Das on 06/08/16.
//  Copyright © 2016 Abhisek Das. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //Initialization
    
    
    @IBOutlet weak var HomeTableView: UITableView!
    
    
//    var ItemHome = ["TSO Availability","Control M Availability","DB2 Subsystem","FileAid for IMS","MQ Infrastructure Availabilty","Percentage of CICS transaction up", "IMS Online Region","CICS Online Region","Corba Tester","Corba Infrastructure","NS browser availability"]
    
    var ItemHome = ["One","Two","Three","Four","Five","Six", "Seven","Eight","Nine","Ten","Eleven"]
    
    var ItemRag = ["Red","Green","Red","Green","Red","Green","Red","Green","Red","Green","Green"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemHome.count
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let HomeTableCell = tableView.dequeueReusableCellWithIdentifier("HomeTableCell", forIndexPath: indexPath) as! HomeTableCellTableViewCell
        HomeTableCell.lbl_HomeItem.text = ItemHome[indexPath.row]
        HomeTableCell.img_Home_color.image = UIImage(named: ItemRag[indexPath.row])
        
        return HomeTableCell

    }

}

