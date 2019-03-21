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
        
        
        self.students = []
        
    }
    

    @IBAction func btnSave(_ sender: UIButton) {
        
        let id = self.txtId.text!
        let name = self.txtName.text!
        let gender = self.txtGender.text!
        let course = self.courses[self.pkCourses.selectedRow(inComponent: 0)]
       let email = self.txtEmail.text!
        
        students.append(Student(id: id , name: name, gen: gender, course: course, mail: email, dob: Date(), m1: 0.0, m2: 0.0, m3: 0.0, m4: 0.0, m5: 1))
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let StuDetails = sb.instantiateViewController(withIdentifier: "StuDetails") as! StudentResultViewController
    

        
        self.present(StuDetails, animated: true)
        
        
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
