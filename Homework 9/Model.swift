//
//  Model.swift
//  Homework 9
//
//  Created by Danil Morozenko on 30.08.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let mail: String
    let phone: String
    
}


extension Person {
    static func getPerson() -> [Person] {
        let dateExample = DataManager()
        let namesShuffled = dateExample.namesCollection.shuffled()
        let surnamesShuffled =  dateExample.surnamesCollection.shuffled()
        let phonesShuffled =  dateExample.phonesCollection.shuffled()
        let mailsShuffled = dateExample.mailsCollection.shuffled()
        return [
//            Person(name: dateExample.namesCollection.randomElement() ?? "",
//                   surname: dateExample.surnamesCollection.randomElement() ?? "",
//                   mail: dateExample.mailsCollection.randomElement() ?? "" ,
//                   phone: dateExample.phonesCollection.randomElement() ?? "" ),
//
//            Person(name: dateExample.namesCollection.randomElement() ?? "",
//                   surname: dateExample.surnamesCollection.randomElement() ?? "",
//                   mail: dateExample.mailsCollection.randomElement() ?? "" ,
//                   phone: dateExample.phonesCollection.randomElement() ?? "" ),
//
//            Person(name: dateExample.namesCollection.randomElement() ?? "",
//                   surname: dateExample.surnamesCollection.randomElement() ?? "",
//                   mail: dateExample.mailsCollection.randomElement() ?? "" ,
//                   phone: dateExample.phonesCollection.randomElement() ?? "" )
            
            Person(name: namesShuffled[0] ,
                   surname: surnamesShuffled[0],
                   mail: mailsShuffled[0] ,
                   phone: phonesShuffled[0] ),
            
            Person(name: namesShuffled[1],
                   surname: surnamesShuffled[1],
                   mail: mailsShuffled[1] ,
                   phone: phonesShuffled[1] ),
            
            Person(name: namesShuffled[2],
                   surname: surnamesShuffled[2],
                   mail: mailsShuffled[2] ,
                   phone: phonesShuffled[2] )
        ]
    
    }
}








