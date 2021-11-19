//
//  StudentFile.swift
//  practice app
//
//  Created by Kanna Dinesh on 11/18/21.
//

import UIKit

class StudentFile  {
    var nameofStudent : String
    var classofStudent : String
    var sectionofStudent : String
    var telugu : Int
    var hindi : Int
    var english : Int
    var maths : Int
    var science : Int
    var social : Int
    var games : Int
    
    init( nameofStudent : String , classofStudent : String , sectionofStudent : String , telugu : Int , hindi : Int , english : Int , maths : Int , science : Int , social : Int , games : Int  ) {
        self.nameofStudent = nameofStudent
        self.classofStudent = classofStudent
        self.sectionofStudent = sectionofStudent
        self.telugu = telugu
        self.hindi = hindi
        self.english = english
        self.maths = maths
        self.science = science
        self.social = social
        self.games = games
    }
    enum SubjectCodes : Int {
        case telugu = 10001
        case hindi = 10002
        case english = 10003
        case maths = 10004
        case science = 10005
        case social = 10006
        case games = 10007
    }
    func totalMarksPercentage () -> Float{
        let totalMarks = 700
        let percentage = Float(telugu + hindi + english + maths + science + social + games) / Float(totalMarks)
        return (percentage) * 100
    }
    func grading () -> String{
        let percentage = totalMarksPercentage()
        if percentage > 90.0 {
            return "Grade 'A'"
        }
        if percentage < 90.0 && percentage > 75.0 {
            return "Grade 'B"
        }
        if percentage < 75.0 && percentage > 50.0{
            return "Grade 'C'"
        }
        if percentage < 50.0 {
            return "Grade 'E'"
        }
        return ""
    
    }
    func percentageInSubject(subCode : SubjectCodes){
        switch subCode{
        case.telugu :
            print("Percentage In Telugu :" , telugu , "%" , "Code is :" , subCode.rawValue)
            
        case.hindi :
            print("percentage In Hindi :" , hindi , "%" , "Code is :" , subCode.rawValue)
            
        case.english :
            print("Percentage In English :" , english , "%" , "Code is :" , subCode.rawValue)
            
        case.maths :
            print("Percentage In Maths :" , maths , "%" , "Code is :" , subCode.rawValue)
            
        case.science :
            print("Precentage In Science :" , science , "%" , "Code is :" , subCode.rawValue)
            
        case.social :
            print("Percentage In Social :" , social , "%" , "Code is :" , subCode.rawValue)
            
        case.games :
            print("Percentage In Games :" , games , "%" , "Code is :" , subCode.rawValue)
            }
    }
    func studentQualified () -> Bool{
        var iPass : Bool
        var count = 0
        if telugu > 75 {
            count += 1
        }
        if hindi > 75 {
            count += 1
        }
        if english > 75 {
            count += 1
        }
        if maths > 75 {
            count += 1
        }
        if science > 75 {
            count += 1
        }
        if social > 75 {
            count += 1
        }
        if (count == 4 && games > 90 || count == 6) {
            iPass = true
        }else{
            iPass = false
        }
        return iPass
    }
}




