//
//  ExplanationViewController.swift
//  ComunicationUIKIt-SwiftUI
//
//  Created by Raffaele Martone on 29/03/23.
//

import UIKit

class ExplanationViewController: UIViewController {
    
    @IBOutlet weak var ExplanationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ExplanationLabel.text = "-UIControlEventTouchCancel : A system event canceling the current touches for the control. \n\n -UIControlEventTouchDown : A touch-down event in the control. \n\n -UIControlEventTouchDownRepeat : A repeated touch-down event in the control; for this event the value of the UITouch tapCount method is greater than one. \n\n -UIControlEventTouchDragEnter : An event where a finger is dragged into the bounds of the control. \n\n -UIControlEventTouchDragExit : An event where a finger is dragged from within a control to outside its bounds. \n\n -UIControlEventTouchDragInside : An event where a finger is dragged inside the bounds of the control. \n\n -UIControlEventTouchDragOutside : An event where a finger is dragged just outside the bounds of the control. \n\n -UIControlEventTouchUpInside : A touch-up event in the control where the finger is inside the bounds of the control. \n\n -UIControlEventTouchUpOutside : A touch-up event in the control where the finger is outside the bounds of the control."
        // Do any additional setup after loading the view.
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
