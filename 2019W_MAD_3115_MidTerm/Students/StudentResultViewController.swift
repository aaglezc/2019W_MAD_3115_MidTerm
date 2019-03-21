//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController , UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var vtStu: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let student  = self.students[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell

        
        
         cell.textLabel?.text = student.stdId
         cell.detailTextLabel?.text = student.stdName
        
        return cell
    }
    
    
    var students : [Student] = []
    
    
    

    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.vtStu.delegate = self
        self.vtStu.dataSource = self
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
