//
//  GameCreationViewController.swift
//  MobileCrewManager
//
//  Created by Michael Frain on 11/12/15.
//  Copyright © 2015 Michael Frain. All rights reserved.
//

import UIKit

class GameCreationViewController: UIViewController {
    @IBOutlet var textFieldHomeTeam: UITextField!
    @IBOutlet var textFieldAwayTeam: UITextField!
    @IBOutlet var textFieldReferee: UITextField!
    @IBOutlet var textFieldUmpire: UITextField!
    @IBOutlet var textFieldHeadLines: UITextField!
    @IBOutlet var textFieldLineJudge: UITextField!
    @IBOutlet var textFieldFieldJudge: UITextField!
    @IBOutlet var textFieldSideJudge: UITextField!
    @IBOutlet var textFieldBackJudge: UITextField!
    @IBOutlet var textFieldCenterJudge: UITextField!
    @IBOutlet var textFieldObserver: UITextField!
    @IBOutlet var stackViewCrew: UIStackView!
    @IBOutlet var buttonScheduledDate: CustomizableButton!
    
    var scheduledDate: Date?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    @IBAction func unwindFromDateSelectionController(_ sender: UIStoryboardSegue) {
        if scheduledDate != nil {
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateString = formatter.string(from: scheduledDate!)
            buttonScheduledDate.setTitle(dateString, for: UIControlState())
            buttonScheduledDate.setTitleColor(UIColor.black, for: UIControlState())
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "DateSelectionSegue":
                if scheduledDate != nil {
                    let destination = segue.destination as! DateSelectionViewController
                    destination.selectedDate = scheduledDate
                }
                
            default:
                break
            }
        }
    }

}
