//
//  LoginViewController.swift
//  Carousel
//
//  Created by Grigory Rudko on 10/24/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        scrollView.contentSize = scrollView.frame.size
        // Set the content insets
        scrollView.contentInset.bottom = 100
        
        scrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            // Scroll the scrollview up
            self.scrollView.contentOffset.y = self.scrollView.contentInset.bottom
        }
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
        }
    }
    
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        if passwordTextField.text!.isEmpty || emailTextField.text!.isEmpty {
        let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
                print("You pressed OK")
            
            })
        }
        
        }
    
    
    
  
    
}
