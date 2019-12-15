//
//  FizzBuzzEngine.swift
//  FizzBuzz
//
//  Created by リノ on 2019/12/08.
//  Copyright © 2019 hikiko. All rights reserved.
//

import Foundation

// 関数名(引数名:型)
func BaiBai(hikisu : Int){
    // *は掛け算の意味です
    let bai = hikisu * 2
    print("\(hikisu)の２倍は\(bai)です")
}


//仮引数名は"nyuryoku"です。数値が入ります。FizzBuzzEngine内部で呼び出せます。
func FizzBuzzEngine(nyuryoku : Int) {
    //for inの無効化　コードを無効化するには、//を行頭に書き込むことで、その行を無効化できる。
    // for i in 1...15 {
    //答えを入れる変数。FizzBuzzEngineが呼び出されるたびに,毎回生成される。初期値は""で、文字列がない状態を表している。
    var kotae:String = ""
    
    //４つの場合分け
    //nyuryokuを呼び出して、条件式に利用してます　　 if文にの条件式内に、直接計算を書くことができます。
    if nyuryoku % 3 == 0{
        kotae = "Fizz"
    }
    // % と == だと計算の優先度が%のほうが高いので、先に計算されます。
    //優先度が不明な場合は、()で囲むと安全に独立して計算させることが出来ます。
    if (nyuryoku % 5) == 0 {
        kotae = "Buzz"
    }
    //複数の条件式をまとめることも可能です。&&が,優先度が低いので,&&が最後に判断されます。
    //ここでは先に(nyuryoku % 3 == 0)と(nyuryoku % 5 == 0)が、計算され真偽判定を終えます。
    if nyuryoku % 3 == 0 && nyuryoku % 5 == 0 {
        kotae = "FizzBuzz"
    }
    //変数kotaeが、初期値から変更されたかどうかを判断することで、3と５で割れなかったことを判断しています。
    if kotae == "" {
        kotae = String(nyuryoku)
    }
    
    //文字出力
    //separator: は,複数の文字列の入力があった際に、間に入る言葉を入力する。ここでは,nyuryokuとkotaeの間に入ってくれる。
    print(nyuryoku, kotae, separator: "に対する答えは、", terminator: "です。\n")
    //for in の終了コード　無効化を忘れないように
    //}
}

// func　関数名(仮引数:型) -> 返す値{プログラム}
func FizzBuzzEngineReturn(nyuryoku : Int) -> String {
//　変数宣言 変数名 :型 = 初期値　 返す値の型(String)と同じなので、答えを入れておくために利用します.
    var kotae:String = ""
    //FizzBuzzEngineの場合分け部分
    if nyuryoku % 3 == 0{
        kotae = "Fizz"
    }
    if (nyuryoku % 5) == 0 {
        kotae = "Buzz"
    }
    if nyuryoku % 3 == 0 && nyuryoku % 5 == 0 {
        kotae = "FizzBuzz"
    }
    if kotae == "" {
        kotae = String(nyuryoku)
    }
    // return 返す値
    return kotae
}


//FizzBuzz配列用
/*
##FizzBuzz配列
今回は、`答え`をプログラムで使いやすいように`配列`にします。
配列は`[]`で囲う事で表現できます。

>[1,2,Fizz,4,Buzz,6,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz]

*/
/*
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
*/


