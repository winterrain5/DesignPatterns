//
//  Prototype.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation

class Programmer {
    var name:String?
    var age:Int?
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    public func clone() -> Programmer {
        return self
    }
}

// 用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
class PrototypePattern:BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = Programmer(name: "李雷", age: 18)
        print(dump(a))
        
        let b = a.clone()
        b.name = "韩梅梅"
        print(dump(b))
    }
}
