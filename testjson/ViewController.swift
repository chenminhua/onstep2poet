//
//  ViewController.swift
//  testjson
//
//  Created by 陈敏华 on 1/17/16.
//  Copyright © 2016 陈敏华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var poemLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poemLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        poemLabel.numberOfLines = 0
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func generator(sender: UIButton) {
        let date = datePicker.date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "YYYYMMdd"
        let dateString = formatter.stringFromDate(date)
        
        let path:String = NSBundle.mainBundle().pathForResource("data", ofType: "json")!
        
        let nsurl = NSURL(fileURLWithPath: path)
        let nsdata: NSData = NSData(contentsOfURL: nsurl)!
        let json = JSON(data: nsdata)
        
        var p = PoemBuilder()
        p.BirthdayParser(dateString)
        let temp = p.getTemplate()
        let templateCount = p.countTemplate(temp)
        print(templateCount)
        
        var templateData = Dictionary<String, Array<String>>()
        
        for (key,count) in templateCount{
            
            let type = (key as NSString).substringWithRange(NSMakeRange(0, 1))
            let length = (key as NSString).substringWithRange(NSMakeRange(1, 1))
            let pz = (key as NSString).substringWithRange(NSMakeRange(2, 1))
            if type == "A"{
                let words: Array<JSON> = json[type][length][pz].arrayValue
                templateData[key] = p.buildTemplateArray(words, count: count)
                
                
            }else{
                let words: Array<JSON> = json[type][p.day % json["B"].count][length][pz].arrayValue
                templateData[key] = p.buildTemplateArray(words, count: count)
            }
            
        }
       
    
        print(p.render(temp, templateData: templateData))
        poemLabel.text = p.render(temp, templateData: templateData)
        
    }


}

