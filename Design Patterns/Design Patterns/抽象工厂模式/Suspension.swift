//
//  Suspension.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation
// 车辆减震悬架
enum SuspensionOption {
    case STANDARD
    case SOFT
    case SPORTS
}

extension SuspensionOption:CustomStringConvertible {
    var description: String{
        var text = ""
        switch self {
        case .STANDARD:
            text = "标准悬挂"
        case .SOFT:
            text = "舒适悬挂"
        case .SPORTS:
            text = "运动悬挂"
        }
        return text
    }
}

protocol Suspension {
    var suspensionType:SuspensionOption { get }
}

class RoadSuspension: Suspension {
    var suspensionType: SuspensionOption = .STANDARD
}

class OffRoadSuspension: Suspension {
    var suspensionType: SuspensionOption = .SOFT
}

class RaceSuspension: Suspension {
    var suspensionType: SuspensionOption = .SPORTS
}
