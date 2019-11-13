//
//  FactoryPatterns.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/9.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation
// ，定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
protocol AirconditonalProduct:CustomStringConvertible {
    var name:String { get set }
    func use()
}

protocol Factory {
    func createProduct() -> AirconditonalProduct?
}


class Gree:AirconditonalProduct,CustomStringConvertible {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func use() {
        print(self)
    }
    
    var description: String {
        return "\(String(describing: self.name))"
    }
 
}

class GreeFactory: Factory {
    func createProduct() -> AirconditonalProduct? {
        let gree = Gree(name: "格力空调")
        return gree
    }
  
}



class MeiDi:AirconditonalProduct,CustomStringConvertible {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func use() {
        print(self)
    }
    
    var description: String {
        return "\(String(describing: self.name))"
    }
 
}

class MeiDiFactory: Factory {
    func createProduct() -> AirconditonalProduct? {
        let meidi = MeiDi(name: "美的空调")
        return meidi
    }
}


class FactoryPattern: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let greeFactory = GreeFactory()
        let gree = greeFactory.createProduct()
        gree?.use()
        
        let meidiFactory = MeiDiFactory()
        let meidi = meidiFactory.createProduct()
        meidi?.use()
    }
}
