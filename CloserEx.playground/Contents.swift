import UIKit

/*
 { (param) -> returnType in
 
 }
 */

func sayHello() {
    print("Hello")
}

let f : () = sayHello()
let f1 : Void = sayHello()

func add(a: Int, b:Int) -> Int {
    return a + b
}

let addFunction = add

let c = {print("Hello")}

c()



func execute(codeBlock: () -> ()) {
    codeBlock()
}

execute(codeBlock: { print("hi")})

let arithmeticFunction = { (a: Int, b: Int) -> Int? in
    return a+b
}

arithmeticFunction(1,2)

let array = ["apple","banana","kiwi", "peach", "orange"]
let i = array.contains(where : {(param:String) -> Bool in return param.hasPrefix("a")})

let i2 = array.contains{
    $0.hasPrefix("a")
}
