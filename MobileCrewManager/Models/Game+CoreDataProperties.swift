//
//  Game+CoreDataProperties.swift
//  MobileCrewManager
//
//  Created by Michael Frain on 11/12/15.
//  Copyright © 2015 Michael Frain. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Game {

    @NSManaged var homeTeam: String?
    @NSManaged var awayTeam: String?
    @NSManaged var homeScore: NSNumber?
    @NSManaged var awayScore: NSNumber?
    @NSManaged var startTime: NSDate?
    @NSManaged var endTime: NSDate?
    @NSManaged var hasOvertime: NSNumber?
    @NSManaged var extraPeriods: NSNumber?
    @NSManaged var crew: NSObject?

}
