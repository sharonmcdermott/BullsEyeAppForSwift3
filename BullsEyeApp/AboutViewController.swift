//
//  AboutViewController.swift
//  BullsEyeApp
//
//  Created by Sharon's Mac on 5/15/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye",
                                                                ofType: "html") {
            if let htmlData = NSData(contentsOfFile: htmlFile) {
                let baseURL = NSURL(fileURLWithPath:
                                            NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html",
                textEncodingName: "UTF-8", baseURL: baseURL)
            }
            
        }
    }
    
    @IBAction func Close(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
