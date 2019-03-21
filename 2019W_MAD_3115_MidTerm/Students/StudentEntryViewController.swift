//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var txtId: UITextField!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtGender: UITextField!
    
    @IBOutlet weak var pkCourses: UIPickerView!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtM1: UITextField!
    @IBOutlet weak var txtM2: UITextField!
    @IBOutlet weak var txtM3: UITextField!
    @IBOutlet weak var txtM4: UITextField!
    @IBOutlet weak var txtM5: UITextField!
    
    
    var courses : [String] = ["Java","Data Bases","Swift","","iOS Develpomnet"]
    
    
    var students : [Student] = []
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return self.courses[row]
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pkCourses.delegate = self
        self.pkCourses.dataSource = self
        
        
        self.students = [Student]()
        
    }
    

    @IBAction func btnSave(_ sender: UIButton) {
        
        let id = self.txtId.text!
        let name = self.txtName.text!
        let gender = self.txtGender.text!
        let course = self.courses[self.pkCourses.selectedRow(inComponent: 0)]
        let email = self.txtEmail.text!
        let mk1 = self.txtM1.text!
        let mk2 = self.txtM2.text!
        let mk3 = self.txtM3.text!
        let mk4 = self.txtM4.text!
        let mk5 = self.txtM5.text!
        let mk11 = Double(mk1)
        let mk22 = Double(mk2)
        let mk33 = Double(mk3)
        let mk44 = Double(mk4)
        let mk55 = Double(mk5)
        
        //students.append(Student(id: id , name: name, gen: gender, course: course, mail: email, dob: Date(), m1: 0.0, m2: 0.0, m3: 0.0, m4: 0.0, m5: 1))
        
        let student = Student(id: id , name: name, gen: gender, course: course, mail: email, dob: Date(), m1: mk11!, m2: mk22!, m3: mk33!, m4: mk44!, m5: mk55!)
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        
        let SBStudentD = sb.instantiateViewController(withIdentifier: "SBStudentDetails") as! StudentResultViewController
    

        SBStudentD.student = student
        self.present(SBStudentD, animated: true)
        
        
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
