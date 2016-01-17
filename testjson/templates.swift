//
//  template.swift
//  poem
//
//  Created by 陈敏华 on 1/17/16.
//  Copyright © 2016 陈敏华. All rights reserved.
//

import Foundation

let templates = [
    // 五言绝句， 平起式， 正格：
    // 平平仄仄平（ 韵）
    // 仄仄仄平平（ 韵）
    // 仄仄平平仄
    // 平平仄仄平（ 韵）
    ["A2-/A2+/B1-/，", "A2+/A2-/B1-/。", "A2+/A2-/A1+/，", "A2-/A2+/B1-/。"],
    
    // 五言绝句， 仄起式， 偏格：
    // 仄仄平平仄
    // 平平仄仄平（ 韵）
    // 平平平仄仄
    // 仄仄仄平平（ 韵）
    ["A2+/A2-/A1+/，", "A2-/A2+/B1-/。", "A2-/A2+/A1+/，", "A2+/A2-/B1-/。" ],
    ["A2+/A2-/A1+/，", "A2-/A2+/B1-/。", "A2-/A1-/A2+/，", "A2+/A1+/B2-/。" ],
    
    // 五言绝句， 平起式， 偏格：
    // 平平平仄仄
    // 仄仄仄平平（ 韵）
    // 仄仄平平仄
    // 平平仄仄平（ 韵）
    ["A2-/A2+/A1+/，", "A2+/A2-/B1-/。", "A2+/A2-/A1+/，", "A2-/A2+/B1-/。" ],
    
    // 七言绝句， 仄起式， 正格：
    // 仄仄平平仄仄平（ 韵）
    // 平平仄仄仄平平（ 韵）
    // 平平仄仄平平仄
    // 仄仄平平仄仄平（ 韵）
    ["A2+/A2-/A2+/B1-/，", "A2-/A2+/A2-/B1-/。", "A2-/A2+/A2-/A1+/，", "A2+/A2-/A2+/B1-/。" ],
    
    // 七言绝句， 平起式， 正格：
    // 平平仄仄仄平平（ 韵）
    // 仄仄平平仄仄平（ 韵）
    // 仄仄平平平仄仄
    // 平平仄仄仄平平（ 韵）
    ["A2-/A2+/A2-/B1-/，", "A2+/A2-/A2+/B1-/。", "A2+/A2-/A2+/A1+/，", "A2-/A2+/A2-/B1-/。" ],
    ["A2-/A2+/A2-/B1-/，", "A2+/A2-/A2+/B1-/。", "A2+/A2-/A1-/A2+/，", "A2-/A2+/A1+/B2-/。" ],
    
    // 七言绝句， 仄起式， 偏格：
    // 仄仄平平平仄仄
    // 平平仄仄仄平平（ 韵）
    // 平平仄仄平平仄
    // 仄仄平平仄仄平（ 韵）
    ["A2+/A2-/A2+/A1+/，", "A2-/A2+/A2-/B1-/。", "A2-/A2+/A2-/A1+/，", "A2+/A2-/A2+/B1-/。" ],
    ["A2+/A2-/A1+/A2+/，", "A2-/A2+/A1+/B2-/。", "A2-/A2+/A2-/A1+/，", "A2+/A2-/A2+/B1-/。" ],
    
    // 七言绝句， 平起式， 偏格：
    // 平平仄仄平平仄
    // 仄仄平平仄仄平（ 韵）
    // 仄仄平平平仄仄
    // 平平仄仄仄平平（ 韵）
    ["A2-/A2+/A2-/A1+/，", "A2+/A2-/A2+/B1-/。", "A2+/A2-/A2-/A1+/，", "A2-/A2+/A2-/B1-/。" ],
    ["A2-/A2+/A2-/A1+/，", "A2+/A2-/A2+/B1-/。", "A2+/A2-/A1-/A2+/，", "A2-/A2+/A1-/B2-/。" ],
    
    // 卜算子
    // 仄仄仄平平，
    // 仄仄平平仄。
    // 仄仄平平仄仄平，
    // 仄仄平平仄。
    // 仄仄仄平平，
    // 仄仄平平仄。
    // 仄仄平平仄仄平，
    // 仄仄平平仄。
    ["A2+/A2-/A1-/，", "A2+/A2-/B1+/。", "A2+/A2-/A2+/A1-/，", "A2+/A2-/B1-/。",
        "A2+/A2-/A1-/，", "A2+/A2-/B1+/。", "A2+/A2-/A2+/A1-/，", "A2+/A2-/B1-/。"
    ],
    
    // 捣练子
    // 平仄仄，
    // 仄平平。
    // 仄仄平平仄仄平。
    // 仄仄平平平仄仄，
    // 平平仄仄仄平平。
    ["A1-/A2+/，", "A1+/B2-/，", "A2+/A2-/A2+/B1-/。",
        "A2+/A2-/A1-/B2+/，", "A2-/A2+/A1+/B2-/。",
    ],
    
    // 浪淘沙
    // 仄仄仄平平，仄仄平平。平平仄仄仄平平。仄仄平平平仄仄，仄仄平平。
    // 仄仄仄平平，仄仄平平。平平仄仄仄平平。仄仄平平平仄仄，仄仄平平。
    ["A2+/A1+/B2-/，", "A2+/B2-/。", "A2-/A2+/A2-/B1-/。", "A2+/A2-/A2+/B1+/。", "A2+/B2-/。" ],
    
    // 木兰花
    // 平平仄仄，仄仄平平平仄仄。仄仄平平，仄仄平平仄仄平。
    // 平平仄仄，仄仄平平平仄仄。仄仄平平，仄仄平平仄仄平。
    ["A2-/A2+/，", "A2+/B2-/A1-/B2+/。", "A2+/A2-/。", "A2+/A2-/A2+/B1-/。", ],
    
]
