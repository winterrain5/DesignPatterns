//
//  DecoratorPatterns.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/12.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation

protocol Product {
    var name: String { get set }
    var price: Int { get set }
}

protocol Salteable:Product {
    func salted() -> Self
}

extension Salteable {
    func salted() -> Self {
        var newProduct = self
        newProduct.name = "加盐 \(name)"
        newProduct.price = price + 1
        return newProduct
    }
}

struct Snack: CustomStringConvertible,Salteable {
    var name: String
    var price: Int
    
    var description: String {
        return "\(name):\(price)元"
    }
    
}

// 动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。
// swift中更适合用协议来实现
class DecoratorPattern:BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let snack = Snack(name: "馒头", price: 1)
        let solted = snack.salted()
        print(solted)
    }
}
