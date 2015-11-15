//
//  DateSelectionViewController.swift
//  MobileCrewManager
//
//  Created by Michael Frain on 11/14/15.
//  Copyright © 2015 Michael Frain. All rights reserved.
//

import UIKit

class DateSelectionViewController: UIViewController {
    @IBOutlet var datePicker: UIDatePicker!
    
    var selectedDate: NSDate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "UnwindDateSelectionSegue":
                let destination = segue.destinationViewController as! GameCreationViewController
                destination.scheduledDate = datePicker.date
                
            default:
                break
            }
        }
    }
}
