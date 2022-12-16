//
//  ViewController.swift
//  MVCStudentDemo
//
//  Created by Digvijay Nikam on 09/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var students : [Student] = []
    
    var SecondViewController : secondViewController = secondViewController()
    
    @IBOutlet weak var studentTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.studentTableView.dataSource = self
        self.studentTableView.delegate = self
        
        let uinib = UINib(nibName: "studentTableViewCell", bundle: nil)
        self.studentTableView.register(uinib, forCellReuseIdentifier: "studentTableViewCell")
    }
    
//MARK:- Click btn To Add New Record 
    
    @IBAction func ClickBtnToAddStudRecord(_ sender: Any) {
        SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        SecondViewController.delegateOnSVC = self
        navigationController?.pushViewController(SecondViewController, animated: true)
    
    }
    
}

//MARK:- Use extension UITableViewDataSource

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "studentTableViewCell", for: indexPath) as! studentTableViewCell
        
        let eachstudent = students[indexPath.row]
        studentTableViewCell.studentRollNolable.text = String(eachstudent.studRollNo)
        studentTableViewCell.studentFirstNamelabel.text = eachstudent.studFirstName
        studentTableViewCell.studentLastNamelabel.text = eachstudent.studLastName
        studentTableViewCell.studentMarklabel.text = String(eachstudent.studMark)
        
        return studentTableViewCell
    }
    
    
}
//MARK:- Use extension UITableViewDelegate
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

extension ViewController : BackDataPassing{
    func passingDataToFirstViewController(student: Student) {
        let studentObject = Student(studRollNo: student.studRollNo, studFirstName: student.studFirstName, studLastName: student.studLastName, studMark: student.studMark)
        
        students.append(studentObject)
        studentTableView.reloadData()
    }
    
    
}
