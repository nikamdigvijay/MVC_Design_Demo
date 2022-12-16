//
//  secondViewController.swift
//  MVCStudentDemo
//
//  Created by Digvijay Nikam on 09/11/22.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var studentRollNolabel: UITextField!
    
    @IBOutlet weak var studentFirstName: UITextField!
    
    @IBOutlet weak var studentLastName: UITextField!
    
    @IBOutlet weak var studentMark: UITextField!
     
    var delegateOnSVC : BackDataPassing?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK:- IBAction on Button use to add same new Records
    
    @IBAction func ClickBtnToAddRecords(_ sender: Any) {
        guard let delegate = delegateOnSVC else {
            print("Delegate Note Created")
            return
        }
    
//MARK:  Use Alert Dailoge Box
        
        if (self.studentRollNolabel.text!.isEmpty) {
            let wrongRollNo = UIAlertController(title: "Alert", message: "please enter the Roll No", preferredStyle: UIAlertController.Style.alert)
            wrongRollNo.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(wrongRollNo, animated: true, completion: nil)
        }else if (self.studentFirstName.text!.isEmpty){
            let wrongFirstName = UIAlertController(title: "Alert", message: "Please enter the First Name", preferredStyle: UIAlertController.Style.alert)
            wrongFirstName.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(wrongFirstName, animated: true, completion: nil)
        }else if (self.studentLastName.text!.isEmpty){
            let wrongLastName = UIAlertController(title: "Alert", message: "Please enter the Last Name", preferredStyle: UIAlertController.Style.alert)
            wrongLastName.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(wrongLastName, animated: true, completion: nil)
        }else if (self.studentMark.text!.isEmpty){
            let wrongMark = UIAlertController(title: "Alert", message: "Please enter the Mark", preferredStyle: UIAlertController.Style.alert)
            wrongMark.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(wrongMark, animated: true, completion: nil)
        }
    
//MARK:- assign data from secondViewController textField
        
        let RollNo = self.studentRollNolabel.text
        let StudRollNo = Int(RollNo!) ?? 0
        
        let FirstName = self.studentFirstName.text ?? "Default Value"
        let LastName = self.studentLastName.text ?? "Default Value"
        
        let Mark = self.studentMark.text
        let StudMark = Float(Mark!) ?? 0.0
        
        delegate.passingDataToFirstViewController(student: Student(studRollNo: StudRollNo, studFirstName: FirstName, studLastName: LastName, studMark: StudMark))
        navigationController?.popViewController(animated: true)
    }
}
