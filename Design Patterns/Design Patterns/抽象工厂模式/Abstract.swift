//
//  Abstract.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation

// 抽象工厂类 抽象工厂类应只包含选择具体工厂的逻辑
class CarFactory {
    func createSuspension() -> Suspension {
        fatalError("Not implemented")
    }
    
    func createDrivetrain() -> Drivetrain {
        fatalError("Not impletementd")
    }
    
    static func getFactory(car:Cars) -> CarFactory? {
        var factory:CarFactory?
        switch car {
        case .COMPACT:
            factory = CompactCarFactory()
        case .SPROTS:
            factory = SportsCarFactory()
        case .SUV:
            factory = SUVCarFactory()
        }
        return factory
    }
    
}
