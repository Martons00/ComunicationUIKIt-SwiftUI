//
//  ViewController.swift
//  ComunicationUIKIt-SwiftUI
//
//  Created by Raffaele Martone on 28/03/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var SwiftView: UIView!
    
    @IBOutlet weak var UIKItView: UIView!
    var newGesture : String = ""
    
    @IBSegueAction func SwiftUISegue(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIPortraitView())
    }
    
    func updateGesture(gesture: String){
        newGesture = gesture
        NotificationCenter.default.post(name: NSNotification.Name("StringToPass"), object: nil, userInfo: ["string": gesture])
    }
    
    @IBAction func TouchCancel(_ sender: Any) {
        updateGesture(gesture: "Touch Cancel")
        print(newGesture)
    }
    
    @IBAction func TouchDown(_ sender: Any) {
        updateGesture(gesture: "Touch Down")
        print(newGesture)
    }
    
    @IBAction func TouchDownRepeat(_ sender: Any) {
        updateGesture(gesture: "Touch Down Repeat")
        print(newGesture)
    }
    
    @IBAction func TouchDragEnter(_ sender: Any) {
        updateGesture(gesture: "Touch Drag Enter")
        print(newGesture)
    }
    
    @IBAction func TouchDragExit(_ sender: Any) {
        updateGesture(gesture: "Touch Drag Exit")
        print(newGesture)
    }
    
    @IBAction func TouchDragInside(_ sender: Any) {
        updateGesture(gesture: "Touch Drag Inside")
        print(newGesture)
    }
    
    @IBAction func TouchDragOutside(_ sender: Any) {
        updateGesture(gesture: "Touch Drag Outside")
        print(newGesture)
    }
    
    @IBAction func TouchUpInside(_ sender: Any) {
        updateGesture(gesture: "Touch Up Inside")
        print(newGesture)
    }
    
    @IBAction func TouchUpOutside(_ sender: Any) {
        updateGesture(gesture: "Touch Up Outside")
        print(newGesture)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIKItView.layer.cornerRadius = 10
        SwiftView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }


}

