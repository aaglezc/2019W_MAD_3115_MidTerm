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
    var stdTotalMarks : Double = 0
    var stdPercentage : Double = 0
    var stdGrade: Double = 0
    
    init(id: String, name:String, gen:String,course:String,mail:String,dob:Date,
        m1:Double,m2:Double,m3:Double,m4:Double,m5:Double)
    {
        self.stdId = id
        self.stdName = name
        self.stdGender = gen
        self.stdCourseName = course
        self.stdEmail = mail
        self.stdDOB = dob
        self.stdMark1 = m1
        self.stdMark2 = m2
        self.stdMark3 = m3
        self.stdMark4 = m4
        self.stdMark5 = m5

    }
 
}
