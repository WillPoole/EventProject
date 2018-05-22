//
//  EventClass.swift
//  EventLocator
//
//  Created by William Poole on 2018-05-11.
//  Copyright © 2018 William Poole. All rights reserved.
//

import Foundation

class EventClass
{
    
    var eventName: String                           //Name of Event Displayed
    var eventPassword: String                       //Optional: Password to be allowed access to event
    var eventID: int                                //Unique Event ID
    var active: bool                                //Is the event active
    var eventVisible: bool                          //Private vs Public
    var maxUsers: int                               //Max number of people allowed to be invited
    var presentUsers: int                           //Current number of people
    var usersInvited: Array<UserClass> = Array()    //Users that host invited
    var usersGoing: Array<UserClass> = Array()      //Users that have indicated they are going
    var usersPresent: Array<UserClass> = Array()    //Users that are at the event
    var hostID: UserClass
    var location: GMSMarker()
    
    
    
    
    init(eventName:String,eventPassword:String,eventID:int,active:bool,access:bool,maxUsers:int,presentUsers:int,hostID:UserClass,locationL:GMSarker())
    {
        self.eventName = eventName
        self.eventPassword = eventPassword
        self.eventID = eventID
        self.active = active
        self.access = access
        self.maxUsers = maxUsers
        self.presentUsers = presentUsers
        self.hostID = hostID
    }
    
    
    
    func inviteUsers( usersInvitedByHost: Array<UserClass> = Array()){  //Array of Users Host has invited
            usersInvited = usersInvitedByHost
    }
    
    func userAttending( userAttending:UserClass){                       //Adds user to list of users taht have indicated they are going
        usersGoing.append(userAttending)
        presentUsers++                                                  //Increments present user count
        if(presentUsers == maxUsers){                                   //If event has reached max user attending notify host
            hostID.sendMessage(hostID, "Event has reached capacity") }
        if(presentUsers > maxUsers){                                    //If event has exceded max user attending notify host
            hostID.sendMessage(hostID, "Event is over capacity") }
    }
    
    //Need to implement geolocation to determine how many users are present to create presentuser function
    
    
    func eventVisibility(privateChange:bool){       //Changes privacy of event according to user choice
        eventVisible = privateChange
    }
    
    
    
    
}
