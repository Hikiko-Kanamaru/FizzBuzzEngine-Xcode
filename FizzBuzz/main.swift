//
//  main.swift
//  FizzBuzz
//
//  Created by リノ on 2019/12/04.
//  Copyright © 2019 hikiko. All rights reserved.
//

import Foundation

//みんな大好きHello,World！動いているかどうかの確認に使えるから残しておくね。気になったら"//"をコードの前に入れると無効化できます
print("Hello, World!")

// MARK: - FizzBuzz基礎説明
///*  //を消すとコードを無効化できるよ　無効化する範囲は/**/で囲まれているところです。
for i in 1...15 {
    // letで、定数(値を入れらる箱 "su-ji" )を用意します。``=``は,右側(suuji)に左側(i)を代入します。
    let suuji = i
    // print(i) は、入力された文字列(i)を表示してくれる
    //terminator: "," は,文字列を","繋ぐため
    print(suuji, separator: "", terminator: ",")
}

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
print("答えは,\(kotae)です")
//変数は、中身を何度も入れ替えることができる。
kotae = "FizzBuzz"
print("答えは,\(kotae)です")
//*/ コードを無効化の終了コードです
// MARK: FizzBuzz基礎コード
print("ここより下がFizzBuzz基本系のまとめ")

//for in の中に,"場合分け"と"文字列を出力するをコピーする"
for i in 1...15 {
    // let suuji = i
    //回答用文字列を、"文字列を出力する"から持ってくる
    var kotae = ""
    
    let i3Amari = i % 3
    if i3Amari == 0 {
        //print("Buzz") コードを無効化して、kotaeに文字列を入れる
        kotae = "Fizz"
    }
    let i5Amari = i % 5
    if i5Amari == 0 {
        //print("Buzz")
        kotae = "Buzz"
    }
    if i3Amari == 0 && i5Amari == 0 {
        //print("FizzBuzz")
        kotae = "FizzBuzz"
    }
    
    if i3Amari != 0 && i5Amari != 0 {
        //print(i)
        //iは数字(Int)なので,文字列Stringに変更している
        kotae = String(i)
    }
    //print("答えは,\(kotae)です")
    // print(suuji, separator: "", terminator: ",")
    //ここで答えが出力されている.
    print(kotae, separator: "", terminator: ",")
}




// MARK: - FizzBuzzEngine

// MARK: 呼び出し(オブジェクト指向)
print("")
print("オブジェクト思考をわかりやすく説明する場所")
let FizzBuzzEngine1  = FizzBuzzEngine(2)
print(FizzBuzzEngine1)

// MARK: FizzBuzz配列
/*
 ##FizzBuzz配列
 今回は、`答え`をプログラムで使いやすいように`配列`にします。
 配列は`[]`で囲う事で表現できます。

 >[1,2,Fizz,4,Buzz,6,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz]
 */

// MARK: FizzBuzzモナドi/0
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

