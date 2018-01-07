//
//  Book.swift
//  BookManager
//
//  Created by Qi Jsb on 2018/01/03.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import Foundation

struct Book{
    var name:String? // ? -> nilを許容する
    var genre:String? // ? -> nilを許容する
    var author:String? // ? -> nilを許容する
    
    func bookPrint() {
        print("Name : \(name!)") // ! -> unwrappingする
        print("Genre : \(genre!)") // ! -> unwrappingする
        print("Author : \(author!)") // ! -> unwrappingする
        print("===========")
    }
}
