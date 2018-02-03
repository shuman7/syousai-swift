//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let rangeInt = 1..<5
print(rangeInt.contains(3))
print(rangeInt.contains(5))
print(rangeInt.contains(-1))

print("----------------")

let angeInt = 1...5
print(angeInt.contains(5))

for i in (11..<19){
    print("\(i)回目")
}

//for-inでレンジ演算子を利用する
for n in (1...10){
    print("\(n)回目")
}

//ビット演算子
let v:UInt8 = 0b00000101
let v2 = v<<1
print(v,v2)





