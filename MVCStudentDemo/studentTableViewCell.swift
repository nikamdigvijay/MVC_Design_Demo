//
//  studentTableViewCell.swift
//  MVCStudentDemo
//
//  Created by Digvijay Nikam on 09/11/22.
//

import UIKit

class studentTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var studentRollNolable: UILabel!
    
    @IBOutlet weak var studentFirstNamelabel: UILabel!
    
    @IBOutlet weak var studentLastNamelabel: UILabel!
    
    @IBOutlet weak var studentMarklabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
