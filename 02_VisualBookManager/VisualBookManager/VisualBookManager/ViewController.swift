//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Qi Jsb on 2018/01/06.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初期化コード
        let book1 = Book(name: "Hamlet", genre: "Tragedy", author: "William Shakespeare")
        let book2 = Book(name: "For Whom the Bell Tolls", genre: "Novel", author: "Ernest Hemingway")
        let book3 = Book(name: "Crime and Punishment", genre: "Novel", author: "Fyodor Dostoyevsky")
        
        myBookManager.register(bookObject: book1)
        myBookManager.register(bookObject: book2)
        myBookManager.register(bookObject: book3)
        
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func registerAction(_ sender: Any) {
        if (nameTextField.text?.isEmpty)! {
            outputTextView.text = "title is invalid"
            return;
        }
        if (authorTextField.text?.isEmpty)! {
            outputTextView.text = "author is invalid"
            return;
        }
        if (genreTextField.text?.isEmpty)! {
            outputTextView.text = "genre is invalid"
            return;
        }
        
        var bookTemp = Book()
        bookTemp.name = nameTextField.text
        bookTemp.author = authorTextField.text
        bookTemp.genre = genreTextField.text
        myBookManager.register(bookObject: bookTemp)
        
        outputTextView.text = "\(bookTemp.name!) has been registered." // ! -> unwrappingする
        countLabel.text = "\(myBookManager.countBooks())"
        
        nameTextField.text = ""
        authorTextField.text = ""
        genreTextField.text = ""
    }
    
    @IBAction func searchAction(_ sender: Any) {
        if(nameTextField.text!.isEmpty) {
            outputTextView.text = "title is invalid"
            return;
        }
        let resultBook = myBookManager.searchBook(name: nameTextField.text!) // ! -> unwrappingする
        if resultBook != nil {
            outputTextView.text = resultBook
        }else {
            outputTextView.text = "we don't have book that you search."
        }
    }
    
    @IBAction func removeAction(_ sender: Any) {
        if(nameTextField.text!.isEmpty) {
            outputTextView.text = "title is invalid"
            return;
        }
        myBookManager.removeBook(name: nameTextField.text!) // ! -> unwrappingする
        outputTextView.text = "\(nameTextField.text!) has removed." // ! -> unwrappingする
        countLabel.text = "\(myBookManager.countBooks())"
        
        nameTextField.text = ""
        authorTextField.text = ""
        genreTextField.text = ""
    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

