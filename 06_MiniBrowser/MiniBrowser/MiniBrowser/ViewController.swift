//
//  ViewController.swift
//  MiniBrowser
//
//  Created by Qi Jsb on 2018/01/12.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBOutlet weak var mainWebView: WKWebView!
    
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainWebView.navigationDelegate = self
        urlTextField.delegate = self
        
        let initialURLString = "https://www.facebook.com"
        let myURL = URL(string: initialURLString)
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURLString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(textField.text!)"
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(textField.text!)"
        }
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        
        return true
    }
    

    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let index = bookMarkSegmentedControl.selectedSegmentIndex
        let titleString = bookMarkSegmentedControl.titleForSegment(at: index)
        let urlString = "https://www.\(titleString!).com"
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    
    @IBAction func stopLoadAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
    
}

