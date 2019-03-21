//
//  Student.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Student {
    
    var stdId : String
    var stdName : String
    var stdGender : String
    var stdCourseName : String
    var stdEmail : String
    var stdDOB : Date
    var stdMark1: Double
    var stdMark2: Double
    var stdMark3: Double
    var stdMark4: Double
    var stdMark5: Double
    var stdTotalMarks : Double
    {
        return self.stdMark1 + self.stdMark2 + self.stdMark3 + self.stdMark4 + self.stdMark5
    }
    var stdPercentage : Double
    {
        return self.stdTotalMarks / 5
    }
    var stdGrade: String
    
    
    init()
    {
        self.stdId = String()
        
        self.stdName = String()
        self.stdGender = String()
        self.stdCourseName = String()
        self.stdEmail = String()
        self.stdDOB = Date()
        self.stdMark1 = 0.0
        self.stdMark2 = 0.0
        self.stdMark3 = 0.0
        self.stdMark4 = 0.0
        self.stdMark5 = 0.0
        self.stdGrade = String()
        
        
    }
    
    init(id: String, name:String, gen:String,course:String,mail:String,dob:Date,
        m1:Double,m2:Double,m3:Double,m4:Double,m5:Double)
    {
        self.stdId = id
        self.stdName = name
        self.stdGender = gen
        self.stdCourseName = course
        self.stdEmail = mail
        self.stdDOB = Date()
        self.stdMark1 = m1
        self.stdMark2 = m2
        self.stdMark3 = m3
        self.stdMark4 = m4
        self.stdMark5 = m5
        self.stdGrade = ""

    }
    
    func CalcGrade() -> String
    {
        if self.stdPercentage >= 95 { return  "A+" }
        if self.stdPercentage  >= 85 && self.stdPercentage < 95 { return  "A+" }
        if self.stdPercentage  >= 75 && self.stdPercentage < 85
        { return  "B+" }
        if self.stdPercentage  >= 65 && self.stdPercentage < 75
        { return  "B" }
        if self.stdPercentage  >= 55 && self.stdPercentage < 65 { return  "C+" }
        if self.stdPercentage  >= 50 && self.stdPercentage < 55 { return  "C" }
        if self.stdPercentage  >= 45 && self.stdPercentage < 50 { return  "D" }
        if self.stdPercentage  < 45 { return  "Fail" }
        else { return "" }
    }
    
 
}
/*
 if per >= 95 then result = "A+"
 if per >=85 and per < 95 then result = "A"
 if per >=75 and per < 85 then result = "B+"
 if per >=65 and per < 75 then result = "B"
 if per >=55 and per < 65 then result = "C+"
 if per >=50 and per < 55 then result = "C"
 if per >=45 and per < 50 then result = "D+"
 if per <45 then result = “FAIL
 
 */
