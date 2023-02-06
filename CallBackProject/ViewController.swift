//
//  ViewController.swift
//  CallBackProject
//
//  Created by 小坂部泰成 on 2023/02/06.
//


import UIKit

class ViewController: UIViewController {

    @IBAction func tappedButton(_ sender: Any) {
        //値を受け取る
        caluculateNumber { result in
            let sum = result / 2
            print("処理3: ボタンがタップされました。計算結果は\(sum)です")

        }
        
//        caluculateNumber {
//            print("処理3: ボタンがタップされました。")
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //値を受け取る
        caluculateNumber { result in
            let sum = result / 4
            print("処理2: 処理1実行後に実行されます。計算結果は\(sum)です")

        }
//        caluculateNumber {
//            print("処理2: 処理1実行後に実行されます")
//        }
    }
    
    
    private func caluculateNumber(completion: (Int) -> Void) {
        let num1 = 3
        let num2 = 5
        
        let result1 = num1 + num2
        
        print("処理1: \(result1)")
        completion(result1)  //ここで処理2,3へ飛ぶ
    }

}

