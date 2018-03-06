//
//  ViewController.swift
//  ImageDownloader
//
//  Created by Qi Jsb on 2018/03/06.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    var downloadTask: URLSessionDownloadTask!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func downloadAction(_ sender: Any) {
        self.imgView.image = nil
        self.progressView.setProgress(0.0, animated: false)
        self.indicatorView.startAnimating()
        
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: OperationQueue.main)
        
        let url = URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!
//        downloadTask = session.downloadTask(with: url)
        downloadTask = session.downloadTask(with: url, completionHandler: { (location, response, error) -> Void in
            print("location: \(String(describing: location))")
            let dataTemp:Data = try! Data(contentsOf: location!)
            self.imgView.image = UIImage(data: dataTemp)
            self.indicatorView.stopAnimating()
        })
        downloadTask.resume()
    }
    
    /* Closure Expression Syntax
     { (<#parameters#>) -> <#return type#> in
        <#statements#>
     }
     
        Example
        reversedNames = names.sorted(by: { (s1:String, s2:String) -> Bool in
            return s1 > s2
        })
     */
    
    @IBAction func suspendAction(_ sender: Any) {
        downloadTask.suspend()
    }
    
    @IBAction func resumeAction(_ sender: Any) {
        downloadTask.resume()
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        downloadTask.cancel()
        self.progressView.setProgress(0.0, animated: false)
        self.indicatorView.stopAnimating()
    }
    
    
// MARK: - URLSessionDownloadDelegate
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
//        print("location: \(location)")
//        let dataTemp:Data = try! Data(contentsOf: location)
//        self.imgView.image = UIImage(data: dataTemp)
//        self.indicatorView.stopAnimating()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
//        print("totalBytesWritten/totalBytesExpectedToWrite: \(totalBytesWritten)/\(totalBytesExpectedToWrite), bytesWritten: \(bytesWritten)")
//        let progress:Float = Float(totalBytesWritten)/Float(totalBytesExpectedToWrite)
//        self.progressView.setProgress(progress, animated: true)
    }
    
}

