//
//  StrategyController.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/9.
//  Copyright © 2019 winter. All rights reserved.
//


import Foundation
import UIKit
// 策略模式（Strategy），它定义了算法家族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。

// 定义金钱算法 所有的计算遵循该协议 实现该方法
protocol CashBase {
    mutating func acceptCash(_ cash:CGFloat) -> CGFloat
}

// 全款
class CashNormal: CashBase {
    func acceptCash(_ cash: CGFloat) -> CGFloat {
        return cash
    }
}


// 打折
class CashRebate: CashBase {
    var monyRebate:CGFloat
    init(rebate: CGFloat) {
        monyRebate = rebate
    }
    func acceptCash(_ cash: CGFloat) -> CGFloat {
        return cash * monyRebate
    }
}

//MARK:减免
class CashReturn: CashBase {
    var moneyReturn:CGFloat
    init(retur:CGFloat) {
        moneyReturn = retur
    }
    
    func acceptCash(_ cash: CGFloat) -> CGFloat {
        return cash  - moneyReturn
    }
}


enum CashType {
    case Normal,Rebate,Return
}


class CashContext  {
    
    var cashBase:CashBase
    
    init(type:CashType) {
        switch type {
        case .Normal:
            cashBase = CashNormal()
        case .Rebate:
            cashBase = CashRebate(rebate: 0.5)
        case .Return:
            cashBase = CashReturn(retur: 20)
        }
    }
    
    func getResult(money:CGFloat) -> CGFloat {
        return cashBase.acceptCash(money)
    }
   
}

class StrategyPattern: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let normal = CashContext(type: .Normal)
        print("normal:\(normal.getResult(money: 100))")
        
        let rebate = CashContext(type: .Rebate)
        print("rebate:\(rebate.getResult(money: 100))")
        
        let retur = CashContext(type: .Return)
        print("retur:\(retur.getResult(money: 100))")
    }
}

