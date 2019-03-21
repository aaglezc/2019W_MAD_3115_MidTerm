//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by Art Fred Glez on 2019-03-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {

    var student : Student = Student()
    
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblCou: UILabel!
    @IBOutlet weak var lblM1: UILabel!
    @IBOutlet weak var lblM2: UILabel!
    @IBOutlet weak var lblM3: UILabel!
    @IBOutlet weak var lblM4: UILabel!
    @IBOutlet weak var lblM5: UILabel!
    @IBOutlet weak var lblTot: UILabel!
    @IBOutlet weak var lblPer: UILabel!
    @IBOutlet weak var lblGrad: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var fails = 0
        
        lblID.text = self.student.stdId
        lblName.text = self.student.stdName
        lblEmail.text = self.student.stdEmail
        lblCou.text = self.student.stdCourseName
        if self.student.stdMark1 < 45
        {
            lblM1.textColor = UIColor.red
            fails += 1
            
        }
        lblM1.text = "\(self.student.stdMark1)"
        if self.student.stdMark2 < 45
        {
            lblM2.textColor = UIColor.red
            fails += 1
            
        }
        lblM2.text = "\(self.student.stdMark2)"
        if self.student.stdMark3 < 45
        {
            lblM3.textColor = UIColor.red
            fails += 1
            
        }
        lblM3.text = "\(self.student.stdMark3)"
        if self.student.stdMark4 < 45
        {
            lblM4.textColor = UIColor.red
            fails += 1
            
        }
        lblM4.text = "\(self.student.stdMark4)"
        if self.student.stdMark5 < 45
        {
            lblM5.textColor = UIColor.red
            fails += 1
            
        }
        lblM5.text = "\(self.student.stdMark5)"
        lblTot.text = "Total Marks: \(self.student.stdTotalMarks)"
        lblPer.text = "Percentage: \(self.student.stdPercentage)"
        
        let g = self.student.CalcGrade()
        lblGrad.text = "Grade: \(g)"
        
        if fails >= 2 || self.student.stdPercentage < 45
        {
           lblGrad.text = "Fail"
            lblGrad.textColor = UIColor.red
            
        }
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
