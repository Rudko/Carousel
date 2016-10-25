//
//  IntroViewController.swift
//  Carousel
//
//  Created by Grigory Rudko on 10/24/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    scrollView.contentSize = introImageView.frame.size

       scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
