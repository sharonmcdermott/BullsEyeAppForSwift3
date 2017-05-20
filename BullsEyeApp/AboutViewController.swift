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
        
        if let htmlFile = Bundle.main.path(forResource: "BullsEye",
                                                                ofType: "html") {
            if let htmlData = try? Data(contentsOf: URL(fileURLWithPath: htmlFile)) {
                let baseURL = URL(fileURLWithPath:
                                            Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html",
                textEncodingName: "UTF-8", baseURL: baseURL)
            }
            
        }
    }
    
    @IBAction func Close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
