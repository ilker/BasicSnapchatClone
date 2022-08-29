//
//  SnapVC.swift
//  BasicSnapchatClone
//
//  Created by ILKER on 29.08.2022.
//

import UIKit

class SnapVC: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var selectedSnap : Snap?
    var selectedTime : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.text = "Time Left: \(selectedTime!)"
    }
    

}
