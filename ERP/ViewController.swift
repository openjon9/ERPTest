//
//  ViewController.swift
//  ERP
//
//  Created by 蛋蛋 on 2018/5/24.
//  Copyright © 2018年 蛋蛋. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController ,WKNavigationDelegate{
    let mURL = "http://erp.coder.com.tw/"
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
       if let murl = URL(string: mURL){
          let request = URLRequest(url: murl)
            myWebView.load(request)
        }
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

