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

print("print.swift")
//var は変数(値を変えらる箱)を作ることができる。　""で囲む事で、14（数字）を文字列と認識させている。
var kotae = "14"
//　\()で囲う事でプログラムとして、処理することができる
print("答えは,\(kotae)です")
//変数は、中身を何度も入れ替えることができる。
kotae = "FizzBuzz"
print("答えは,\(kotae)です")

print("pritnt2.swift")
kotae = "16"
//terminator:は,末尾に追加する文字列を指定している。\nは、改行コード　テキスト入力のエンターキーと同じ
print("答えは,\(kotae)です",separator: "",terminator: "よね知ってます。\n")
kotae = "17"
//swiftのprintは、末尾に改行(\n)が自動で足されるので,改行させないならterminator:に""を入れる。自動で入る改行コードが(\n)上書きされて、改行されなくなる
print("答えは\(kotae)です",separator: "",terminator: "。改行しません。")
print("このprintは,改行されずに、前のprint続いて表示されます")
//連続して出力するためには,末尾に,を足す。改行コードを入力しない。
kotae = "1"
print(kotae,separator: "",terminator: ",")
kotae = "2"
print(kotae, separator: "", terminator: ",")
kotae = "Fizz"
print(kotae, separator: "", terminator: ",")

//*/ コードを無効化の終了コードです
// MARK: FizzBuzz基礎コード
print("ここより下がFizzBuzz基本系のまとめ")

//for in の中に,"場合分け"と"文字列を出力するをコピーする"
for i in 1...15 {
    // let suuji = i
    //回答用文字列を、"文字列を出力する"から持ってくる
    var kotae = ""
    
    //場合分け４種類
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
    
    //文字列の出力
    // print(suuji, separator: "", terminator: ",")
    //ここで答えが出力されている.
    print(kotae, terminator: ",")
}




// MARK: - FizzBuzzEngine
print("FizzBUzzEngineのコード実行エリア")
// MARK: 呼び出し(オブジェクト指向)
print("BaiBaiを実行しています")
BaiBai(hikisu: 2)
BaiBai(hikisu: 15)
BaiBai(hikisu: 32)


print("FizzBuzzEngineが実行されています。")
FizzBuzzEngine(nyuryoku: 1)
FizzBuzzEngine(nyuryoku: 3)
FizzBuzzEngine(nyuryoku: 5)
FizzBuzzEngine(nyuryoku: 15)
FizzBuzzEngine(nyuryoku: 2501)

print("FizzBuzzEngineReturnが実行されています")
var EngineReturn = FizzBuzzEngineReturn(nyuryoku: 15)
print(EngineReturn)
EngineReturn = FizzBuzzEngineReturn(nyuryoku: 404)
print("\(EngineReturn)を,受け取っています。")
//print内で直接実行することもできる。
print(FizzBuzzEngineReturn(nyuryoku: 35))
//if文の条件式に使うこともできる
if FizzBuzzEngineReturn(nyuryoku: 45) == "FizzBuzz"{
    print("45は,FizzBuzzだよ")
}



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
