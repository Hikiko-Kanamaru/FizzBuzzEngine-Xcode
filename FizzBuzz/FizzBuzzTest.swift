//
//  FizzBuzzTest.swift
//  FizzBuzz
//
//  Created by リノ on 2019/12/16.
//  Copyright © 2019 hikiko. All rights reserved.
//

import Foundation

//数字を受け取って、文字列を返す関数
func yama(uketoru:Int) -> String {
    let kotae = String(uketoru)
    return (kotae + kotae + kotae)
}

//(Int)->String関数を受け取って、数字を与えて777が返って来れば、フィーバーする関数
func kawa(kansuu:(Int)->String) -> String {
    var jyoutai = "通常"
    if kansuu(7) == "777" {
        jyoutai = "フィーバー"
    }
    return jyoutai
}


//関数宣言　関数名(仮引数名:(仮引数) -> 返値)　->　返値　{プログラム}
//                     "(仮引数) -> 返値"が型として使われている　今回は (Int)->Stringが仮引数の型
func FizzBuzzTest(sikenFunc : (Int) -> String ) -> Bool {
    //テストの点数　点数をつけることで評価する
    var tensuu:Int = 0
    //全体を通してテストに通ったかを記録する場所。 Boolは、真理値でtrue(真)かfalse(偽)が入る
    var sougouKekka:Bool  = false
    //for定数名in集合{プログラム} テスト範囲は１から３０
    for i in 1...30 {
        //FizzBuzzEngineReturnを使って正しい答えを得る
        let seikai = FizzBuzzEngineReturn(nyuryoku: i)
        //テスト対象の関数を呼び出して　テスト数値(i)を与える　呼び出す際は仮引数名(sikenFunc)で呼び出せる。
        let kaitou = sikenFunc(i)
        //if文を使ってFizzBuzzEngineReturnと同等の結果かを返しているか判断する。
        if seikai == kaitou{
            //同等であれば点数をつける　`= `より`＋`のほうが優先度が高い
            //まず=の左側のtensuuと１が足された数字が作られる、その後=が評価されtensuuが上書きされるので点数が１増える
            tensuu = tensuu + 1
            print("\(i)正解", separator: "", terminator: "")
            //elseはif文が真で無かった時に、実行される。この場合は,答えが間違っていたときに実行される
        }else{
            print("\(i)不正解", separator: "", terminator: "")
        }
    }
    print("評価終了")
    //点数評価
    if tensuu == 30{
        sougouKekka = true
        print("満点合格です")
    }else if tensuu >= 16 {
        print("ある程度正解しています。\(tensuu)点でした。")
    }else if tensuu > 0 {
        print("正答率が低いです。\(tensuu)点です")
    }else if tensuu == 0 {
        print("全く回答出来ていません。0点です")
    }
    //return の後に書かれた変数が返値になる。　ここでは、変数の真理値(Bool)が返る
    return sougouKekka
}



//FizzBuzzTestTimer
func FizzBuzzTestTimer(kaitou : (Int) -> String ) -> TimeInterval {
    // 計測開始
        let kaisi = Date()
    //10万回実行する
    for i in 1...100000{
        //返値は利用しないので`_`で無名を指定
        let _ = kaitou(i)
    }
    //終了時間を計測する
    let owari = Date()
    //かかった時間を計測する。終了時間の時間から、呼び出すのを間違えない様に。なぜなら、Dateは、時刻を数量にしている。timeIntervalSinceでは、引き算をしているだけなので、小さいほう(開始時間)から、大きいほう(終了時間)を引くとマイナスになってしまうため、終了時間の方から呼び出す
    let jikann = owari.timeIntervalSince(kaisi)
    print(jikann)
 return jikann
}
