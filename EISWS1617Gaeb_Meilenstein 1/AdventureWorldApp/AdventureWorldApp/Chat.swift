//
//  Chat.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//  Fach:Entwicklung interaktiver Systeme
//  Prof: Prof. Dr. K. Fischer und Prof. Dr. G. Hartmann
//  Betreuer: Franz-L. Jaspers
//

import UIKit
import WebKit



class Chat: UIViewController, UIWebViewDelegate,  UITextFieldDelegate {
   
    @IBOutlet weak var webViewChat: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewChat.delegate = self
        webViewChat.keyboardDisplayRequiresUserAction = true
        webViewChat.frame  = self.view.frame
        
        
        let url = NSBundle.mainBundle().URLForResource("chat", withExtension: "html")
        let request = NSURLRequest(URL: url!)
        webViewChat.loadRequest(request)
      
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
