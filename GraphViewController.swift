//
//  GraphViewController.swift
//  ProjectDemo
//
//  Created by Abhisek Das on 06/08/16.
//  Copyright © 2016 Abhisek Das. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    
    @IBOutlet weak var Button_Right: UIButton!
    
    @IBOutlet weak var Button_Left: UIButton!
    
    
    @IBOutlet weak var Label_Middle: UILabel!
    
    @IBAction func Button_Left_Click(sender: AnyObject) {
        
        if let theTitle = Label_Middle.text
        {
            switch(theTitle)
            {
                case "SIT" : Label_Middle.text = "UT"
                case "ST"  : Label_Middle.text = "SIT"
                case "UT"  : Label_Middle.text = "ST"
                default    : Label_Middle.text = "SIT"
            
            }
        }
        
        
        
    }
    
    
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var View_Day: UIView!
    
    @IBOutlet weak var View_Month: UIView!
    
    @IBOutlet weak var View_Year: UIView!
    
    @IBAction func Segmented_Control_Click(sender: AnyObject) {
        
        switch SegmentedControl.selectedSegmentIndex {
        case 0:
            
            //self.performSegueWithIdentifier("Segway_Day", sender: self)
            
            self.View_Day.alpha = 1
            self.View_Month.alpha = 0
            self.View_Year.alpha = 0
            
            
            
            
        case 1:
            self.View_Day.alpha = 0
            self.View_Month.alpha = 1
            self.View_Year.alpha = 0
            
        case 2:
            self.View_Day.alpha = 0
            self.View_Month.alpha = 0
            self.View_Year.alpha = 1
            
            
        default:
            self.View_Day.alpha = 1
            self.View_Month.alpha = 0
            self.View_Year.alpha = 0
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Segway_Day" {
            let DayView : ContainerDayViewController = segue.destinationViewController as! ContainerDayViewController
            
            DayView.GetSegwayData = "Day"
            print ("Prepare for Segway")
        }
    }
  
    @IBAction func Button_Right_Click(sender: AnyObject) {
        
        if let theTitle = Label_Middle.text
        {
            switch(theTitle)
            {
            case "SIT" : Label_Middle.text = "ST"
            case "ST"  : Label_Middle.text = "UT"
            case "UT"  : Label_Middle.text = "SIT"
            default    : Label_Middle.text = "SIT"
                
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label_Middle.text = "SIT"
        
        self.View_Day.alpha = 1
        self.View_Month.alpha = 0
        self.View_Year.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
