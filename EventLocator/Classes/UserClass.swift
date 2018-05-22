//
//  UserClass.swift
//  EventLocator
//
//  Created by William Poole on 2018-05-13.
//  Copyright © 2018 William Poole. All rights reserved.
//

import Foundation

class EventClass
{
    
    var userName: String                                                    //UserName Displayed
    var userPassword: String                                                //User Password
    var userPicture: UIImage                                                //User Profile Picture
    var userDescription: String                                             //User Bio
    var userID: Int                                                         //Unique User ID
    var attendingEvents: Array<EventClass> = Array()                        //Array of Events that user has set as attending
    
    
    init(userName:String,userPassword:String)                               //Constructer to make new user account
    {
        self.userName = userName                                            //Sets initial Username
        self.userPassword = userPassword                                    //Sets initial Password

    }
    
    
    
    
    
    func attendEvent(event:EventClass){                                     //Appends to list of events user has set as attending
        attendingEvents.append(event)
    }
    
    func dismissEvent(event:EventClass){                                    //Lets User Dismiss events
        var itemToRemove = event.eventID                                    //Sets EventId of event user wants to dismiss
        if let index = attendingEvents.index.eventID(of: itemToRemove) {    //Searches index of attendingEvents for EventID
            attendingEvents.remove(at: index)                               //Removes Event at index of EventID if found
        }    }
    
    
    
    func setBio(bio:String){                                                //Allows user to change description in their profile
        userDescription = bio
    }
    
    func sendMessage(recipient:UserClass, message:String){
        //Messaging Needs to be implemented
    }
    
    func changePassword(passwordChange:String){                             //Allows User to change password
        userPassword = passwordChange
    }
    
    
    
    
}
