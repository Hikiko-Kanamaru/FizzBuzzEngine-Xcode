//
//  main.swift
//  FizzBuzz
//
//  Created by リノ on 2019/12/04.
//  Copyright © 2019 hikiko. All rights reserved.
//

import Foundation

//みんな大好きHello,World！動いているかどうかの確認に使えるから残しておくね。気になったら"//"をコードの前に入れると無効化できるよ
print("Hello, World!")

let FizzBuzz = {(t:Int) -> String in
    var kotae:String = ""
    if t % 3 == 0 {
        kotae.append("Fizz")
    }
    if t % 5 == 0 {
        kotae.append("Buzz")
    }
    if kotae == "" {
        kotae.append(String(t))
    }
    return kotae
}

for i in 1...15 {
    // letで、定数(値を入れらる箱 "su-ji" )を用意します。``=``は,右側(suuji)に左側(i)を代入します。
    let suuji = i
    // print(i) は、入力された文字列(i)を表示してくれる
    //terminator: "," は,文字列を","繋ぐため
    print(suuji, separator: "", terminator: ",")
}

let FizzBuzzEngine1  = FizzBuzzEngine(2)
print(FizzBuzzEngine1)


let i:Int = 15
//i を%を使って３で割ったあまりをiAmariに代入します。
let i3Amari = i % 3
//if文は, ifの後に与えられた、論理式(3noAmari == 0)が真(正しい)の場合、{}内部のプログラムを実行します。
if i3Amari == 0 {
print("Fizz")
}

//変数名も書き換えます。
let i5Amari = i % 5
//if文内の条件式も変えるのを忘れないように
if i5Amari == 0 {
print("Buzz")
}

//if文は, ifの後に与えられた、論理式(3noAmari == 0)が真(正しい)の場合、{}内部のプログラムを実行します。
if i3Amari == 0 && i5Amari == 0 {
print("FizzBuzz")
}
//テスト結果を見るために、iの数字を変更してください。
//let i = 14
//省略　今までのコードが入ります
if i3Amari != 0 && i5Amari != 0 {
print(i)
}

//var は変数を作ることができる。
var kotae = "14"
//　\()で囲う事でプログラムとして、処理することができる
print("\(kotae)が答えです")
//変数は、中身を何度も入れ替えることができる。
kotae = "FizzBuzz"
print("\(kotae)が答えです")

var mojiretu:[String] = []
for i in 1...15{
    let i3Amari = i % 3
    let i5Amari = i % 5
    var kotae:String = ""
    if i3Amari == 0 {
     kotae = "Fizz"
    }
    if i5Amari == 0 {
     kotae = "Buzz"
    }
    if i3Amari == 0 && i5Amari == 0 {
     kotae = "FizzBuzz"
    }
    if i3Amari != 0 && i5Amari != 0 {
     kotae = String(i)
    }
    mojiretu.append(kotae)
}

print(mojiretu, separator: "", terminator: "\n")
