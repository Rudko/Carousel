//
//  LoginViewController.swift
//  Carousel
//
//  Created by Grigory Rudko on 10/24/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    // Alert when either passwordTextField or emailTextField is empty
    let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .alert)
    
    // Alert controller when entered email or password is wrong
    let typeAgainAlertController = UIAlertController(title: "Sign In Failed", message: "Please enter a valid email and password", preferredStyle: .alert)
    
    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        // handle response here.
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.isHidden = true
        scrollView.contentSize = scrollView.frame.size
        
        // Set the content insets
        scrollView.contentInset.bottom = 100
        
        scrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        // Why is it should be inside viewDidLoad??
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
        
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        
        if passwordTextField.text!.isEmpty || emailTextField.text!.isEmpty {
            delay(1.0, closure: {
                self.present(self.alertController, animated: true) {
                    
                }
                self.alertController.addAction(self.OKAction)
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            })
            
            
            
            
            
        } else if emailTextField.text == "grigoryrudko@gmail.com" && passwordTextField.text == "abanamat" {
            delay(1.0, closure: {
                //            performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                
            })
            
            
        } else {
            delay(1.0, closure: {
                self.present(self.typeAgainAlertController, animated: true) {
                    
                }
                self.alertController.addAction(self.OKAction)
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
                
                
            })
        }
        
    }
    
    
    
    
    
}
