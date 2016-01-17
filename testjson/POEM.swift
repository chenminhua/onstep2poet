//
//  POEM.swift
//  testjson
//
//  Created by 陈敏华 on 1/17/16.
//  Copyright © 2016 陈敏华. All rights reserved.
//

import Foundation

struct PoemBuilder{
    var year = 1991
    var month = 11
    var day = 24
    
    mutating func BirthdayParser(Birthday: String) -> Void{
        
        year = Int((Birthday as NSString).substringWithRange(NSMakeRange(0, 4)))!
        if((Birthday as NSString).substringWithRange(NSMakeRange(4, 1)) == "0" ){
            month = Int((Birthday as NSString).substringWithRange(NSMakeRange(5, 1)))!
        }else{
            month = Int((Birthday as NSString).substringWithRange(NSMakeRange(4, 2)))!
        }
        if((Birthday as NSString).substringWithRange(NSMakeRange(6, 1)) == "0"){
            day = Int((Birthday as NSString).substringWithRange(NSMakeRange(7, 1)))!
        }else{
            day = Int((Birthday as NSString).substringWithRange(NSMakeRange(6, 2)))!
        }
        print(year)
        print(month)
        print(day)
        
        
    }
    
    func getTemplate() -> Array<String>{
        let i = (year + month) % templates.count
        print(i)
        return templates[i]
    }
    
    func buildTemplateArray(words: Array<JSON>, count: Int) -> Array<String>{
        var resultArray = [String]()
        var i = (year + month + day) % words.count
        
        while (resultArray.count != count){
            let r = words[i].rawValue
            i = (i+1) % words.count
            resultArray.append(r as! String)
        }
        return resultArray
    }
    
    func countTemplate(template: Array<String>) -> [String:Int]{
        var result: [String : Int] = Dictionary<String, Int>()
        for cent in template{
            for (var i=0; i<cent.characters.count - 1; i = i+4){
                print(cent.characters.count)
                print(cent)
                print(i)
                let word = (cent as NSString).substringWithRange(NSMakeRange(i, 3))
                if result[word] != nil{
                    result[word] = result[word]! + 1
                }else{
                    result[word] = 1
                }
            }
        }
        return result
    
    }
    
    func render(template: Array<String>, templateData: Dictionary<String, Array<String>>) -> String{
        var templatetmpData = templateData
        var result =  ""
        for t in template{
            for (var i=0; i<t.characters.count - 1; i = i+4){
                let word = (t as NSString).substringWithRange(NSMakeRange(i, 3))
                result += (templatetmpData[word]?.removeLast())!
            }
            result += String(t.characters.last!) + "\n"
        }
        return result
    }
    
    
}

