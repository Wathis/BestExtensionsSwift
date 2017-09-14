//
//  getXTimeAgoFromDate.swift
//
//  Created by Mathis Delaunay on 2017.
//  Copyright © 2017 Wathis. All rights reserved.
//

extension NSDate {
    func getXTimeAgoFromDate(date : NSDate) -> String {
        var data = ""
        let secondsNow = Int(self.timeIntervalSince1970)
        let secondsPost = Int(date.timeIntervalSince1970)
        let secondFromNowToPost = secondsNow - secondsPost
        let minute = 60
        let hour = minute * 60
        let day = hour * 24
        let week = day * 7
        let month = week * 4
        let year = month * 12
        
        if secondFromNowToPost < minute {
            data += "just now"
        } else if (secondFromNowToPost < hour) {
            let minutes = Int(secondFromNowToPost / minute)
            data += "\(minutes) " + (minutes == 1 ? "minute" : "minutes") + " ago"
        } else if (secondFromNowToPost < day) {
            let hours = Int(secondFromNowToPost / hour)
            data += "\(hours) " + (hours == 1 ? "hour" : "hours") + " ago"
        } else if (secondFromNowToPost < week){
            let days = Int(secondFromNowToPost / day)
            data += "\(days) " + (days == 1 ? "day" : "days") + " ago"
        } else if (secondFromNowToPost < month) {
            let weeks = Int(secondFromNowToPost / week)
            data += "\(weeks) " + (weeks == 1 ? "week" : "weeks") + " ago"
        } else if (secondFromNowToPost < year) {
            let months = Int(secondFromNowToPost / month)
            data += "\(months) " + (months == 1 ? "month" : "months") + " ago"
        } else {
            let years = Int(secondFromNowToPost / year)
            data += "\(years) " + (years == 1 ? "year" : "years") + " ago"
        }
        
        // [...]
        
        return data
    }
}
