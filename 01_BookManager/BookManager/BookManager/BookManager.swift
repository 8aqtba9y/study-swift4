//
//  BookManager.swift
//  BookManager
//
//  Created by Qi Jsb on 2018/01/03.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]() // mutableArray
    
    func register(bookObject:Book) {
//        bookList.append(book)
        bookList += [bookObject]
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name: \(bookTemp.name!)\n" // ! -> unwrappingする
            strTemp += "Genre: \(bookTemp.genre!)\n" // ! -> unwrappingする
            strTemp += "Author: \(bookTemp.author!)\n" // ! -> unwrappingする
            strTemp += "===========\n"
        }
        return strTemp
    }
    
    func countBooks() -> Int {
        return bookList.count
    }
    
    func searchBook(name:String) -> String? { // String? -> avalable nil
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name: \(bookTemp.name!)\n" // ! -> unwrappingする
                strTemp += "Genre: \(bookTemp.genre!)\n" // ! -> unwrappingする
                strTemp += "Author: \(bookTemp.author!)\n" // ! -> unwrappingする
                strTemp += "===========\n"
                return strTemp
            }
        }
        
        return nil
    }
    
    func removeBook(name:String) {
        for (index, value) in bookList.enumerated() {
            if value.name! == name { // ! -> unwrappingする
                bookList.remove(at: index)
            }
        }
    }
}
