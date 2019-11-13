//
//  Concreate.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation
// 具体工厂类应只包含选择实现类的逻辑
class CompactCarFactory : CarFactory {
    
    override func createSuspension() -> Suspension {
        return RoadSuspension();
    }
    
    override func createDrivetrain() -> Drivetrain {
        return FrontWheelDrive();
    }
    
}

class SportsCarFactory : CarFactory {
    
    override func createSuspension() -> Suspension {
        return RaceSuspension();
    }
    
    override func createDrivetrain() -> Drivetrain {
        return RealWheelDrive();
    }
    
}

class SUVCarFactory : CarFactory {
    
    override func createSuspension() -> Suspension {
        return OffRoadSuspension();
    }
    
    override func createDrivetrain() -> Drivetrain {
        return AllWheelDrive();
    }
    
}
