//
//  Driventrain.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation
// 动力传动系统
enum DriveOption {
    case FRONT
    case REAL
    case ALL
}

extension DriveOption:CustomStringConvertible {
    var description: String{
        var text = ""
        switch self {
        case .FRONT:
            text = "前轮驱动"
        case .REAL:
            text = "后轮驱动"
        case .ALL:
            text = "四轮驱动"
        }
        return text
    }
}

protocol Drivetrain {
    var drieType:DriveOption { get }
}

class FrontWheelDrive: Drivetrain {
    var drieType: DriveOption = .FRONT
}

class RealWheelDrive: Drivetrain {
    var drieType: DriveOption = .REAL
}

class AllWheelDrive: Drivetrain {
    var drieType: DriveOption = .ALL
}
