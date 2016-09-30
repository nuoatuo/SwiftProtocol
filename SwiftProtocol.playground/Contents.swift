//: Playground - noun: a place where people can play

import UIKit

/**
    1>协议的定义
    2>如何遵守协议
    3>协议在代理设计模式中如何使用
    4>协议中方法的可选性
            protocol前面加上@obj
            方法前面加上@objc optional
 */

//1、协议的定义
protocol SprotProtocol {
    //默认情况下，协议中的方法都是必须实现的方法
    func playBasketBall()
    func palyFootBall()
}

//2、定义类，并且遵守协议
class Teacher: SprotProtocol {
    func playBasketBall() {
        print("打篮球")
    }
    
    func palyFootBall() {
        print("踢足球")
    }
}

class studetn: NSObject, SprotProtocol {
    func playBasketBall() {
        print("打篮球")
    }
    
    func palyFootBall() {
        print("踢足球")
    }
}

//3.协议在代理设计模型中的使用
/**
 定义协议时，协议后面最好跟上“: class”,表示只能被类遵守
 delegate的属性最好用weak，用于防止循环引用
 */
protocol BuyTicketDelegate: class {
    func buyTicket()
}

class Person {
    //定义代理属性
    weak var delegate: BuyTicketDelegate?
    func goToBeijing() {
        delegate?.buyTicket()
    }
}

//4、如何让协议中的方法是可选方法
//optional属于OC特性，如果协议中有可选的方法，那么必须在protocol和optional前面都加上@obj
@objc protocol TestProtocol: class {
    @objc optional func test()
}

class Dog: TestProtocol {}

