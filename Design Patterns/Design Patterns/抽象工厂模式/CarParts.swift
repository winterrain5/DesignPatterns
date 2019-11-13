//
//  CarParts.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation

enum Cars {
    case COMPACT
    case SPROTS
    case SUV
}

extension Cars:CustomStringConvertible {
    var description: String{
        var text = ""
        switch self {
        case .COMPACT:
            text = "小轿车"
        case .SPROTS:
            text = "跑车"
        case .SUV:
            text = "越野车"
        }
        return text
    }
}

class Car :CustomStringConvertible{
    var carType:Cars
    var suspension:Suspension?
    var drive:Drivetrain?
    
    init(carType:Cars) {
        // 抽象工厂类根据车的类型获取具体工厂类
        let concreateFactory = CarFactory.getFactory(car: carType)
        self.suspension = concreateFactory?.createSuspension()
        self.drive = concreateFactory?.createDrivetrain()
        self.carType = carType
    }
    
    var description: String {
        return "这是一辆\(self.carType),拥有\(String(describing: self.suspension)),采用\(String(describing: self.drive))"
    }
}
