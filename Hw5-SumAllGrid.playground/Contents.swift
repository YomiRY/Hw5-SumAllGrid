//: Playground - noun: a place where people can play

import UIKit

/* 算全部格子的總合 */
var dataArray:[[Int]] = [[0,0,0,0,0,0,0,0],
                         [0,1,2,3,4,5,6,7],
                         [0,2,4,6,8,10,12,14],
                         [0,3,6,9,12,15,18,21],
                         [0,4,8,12,16,20,24,28],
                         [0,5,10,15,20,25,30,35],
                         [0,6,12,18,24,30,36,42],
                         [0,7,14,21,28,35,42,49]]

var totalSum = 0
for i in 0..<dataArray.count {
    let elementArray = dataArray[i]
    for element in elementArray {
        totalSum += element
    }
}

print("總和 = \(totalSum)")

/* 奇數行的數字總合 */
//var dataArray:[[Int]] = [[0,0,0,0,0,0,0,0],
//                         [0,1,2,3,4,5,6,7],
//                         [0,2,4,6,8,10,12,14],
//                         [0,3,6,9,12,15,18,21],
//                         [0,4,8,12,16,20,24,28],
//                         [0,5,10,15,20,25,30,35],
//                         [0,6,12,18,24,30,36,42],
//                         [0,7,14,21,28,35,42,49]]
//
//var totalSum = 0
//for i in 0..<dataArray.count where i % 2 == 1 {
//    let elementArray = dataArray[i]
//    for element in elementArray {
//        totalSum += element
//    }
//}
//
//print("奇數行總和 = \(totalSum)")

/*
 所有格子的總合，除了列數>=行數的格子
 */
//var dataArray:[[Int]] = [[0,0,0,0,0,0,0,0],
//                         [0,1,2,3,4,5,6,7],
//                         [0,2,4,6,8,10,12,14],
//                         [0,3,6,9,12,15,18,21],
//                         [0,4,8,12,16,20,24,28],
//                         [0,5,10,15,20,25,30,35],
//                         [0,6,12,18,24,30,36,42],
//                         [0,7,14,21,28,35,42,49]]
//
//var totalSum = 0
//for i in 0..<dataArray.count {
//    let elementArray = dataArray[i]
//    for j in 0..<elementArray.count where j > i {
//        totalSum += elementArray[j]
//    }
//}
//
//print("所有格子的總合，除了列數>=行數的格子 = \(totalSum)")

/*
 以function執行奇數行總和
 */
//var dataArray:[[Int]] = [[0,0,0,0,0,0,0,0],
//                         [0,1,2,3,4,5,6,7],
//                         [0,2,4,6,8,10,12,14],
//                         [0,3,6,9,12,15,18,21],
//                         [0,4,8,12,16,20,24,28],
//                         [0,5,10,15,20,25,30,35],
//                         [0,6,12,18,24,30,36,42],
//                         [0,7,14,21,28,35,42,49]]
//
//func totalSum(rows:Int, cols:Int)->Int {
//    var totalSum = 0
//    for i in stride(from: rows, to: 0, by: -1) where i % 2 == 1 {
//        let elementArray = dataArray[i]
//        for element in elementArray {
//            totalSum += element
//        }
//    }
//    return totalSum
//}
//
//print("奇數行總和 = \(totalSum(rows: dataArray.count - 1, cols: dataArray[0].count - 1))")

/*
 以function執行所有格子的總合，除了列數>=行數的格子
 */

//var dataArray:[[Int]] = [[0,0,0,0,0,0,0,0],
//                         [0,1,2,3,4,5,6,7],
//                         [0,2,4,6,8,10,12,14],
//                         [0,3,6,9,12,15,18,21],
//                         [0,4,8,12,16,20,24,28],
//                         [0,5,10,15,20,25,30,35],
//                         [0,6,12,18,24,30,36,42],
//                         [0,7,14,21,28,35,42,49]]
//
//func totalSum(rows:Int, cols:Int)->Int {
//    var totalSum = 0
//    for i in stride(from: rows, to: 0, by: -1) {
//        for j in stride(from: cols, to: 0, by: -1) where j > i {
//            totalSum += dataArray[i][j]
//        }
//    }
//
//    return totalSum
//}
//
//print("所有格子的總合，除了列數>=行數的格子 = \(totalSum(rows: dataArray.count - 1, cols: dataArray[0].count - 1))")

/*
 定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果 比方起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數) 運算結果為 5 + 10 + 15 + ..... + 95 */

//func numberSerialSum(min:Int, max:Int, multiple:Int) -> Int {
//    if(max < min) {
//        return 0
//    }
//
//    let num = (max % multiple == 0) ? max : 0
//    return num + numberSerialSum(min: min, max: max - 1, multiple: multiple)
//}
//
//print("總和 = \(numberSerialSum(min: 3, max: 98, multiple: 5))")


/*
 定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果 比方起始值3，最大值11，決定數字倍數的number為5時，(不包含5的倍數) 運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11
 */
//func numberSerialSum(min:Int, max:Int, multiple:Int) -> Int {
//    if(max < min) {
//        return 0
//    }
//
//    let num = (max % multiple == 0) ? 0 : max
//    return num + numberSerialSum(min: min, max: max - 1, multiple: multiple)
//}
//
//print("總和 = \(numberSerialSum(min: 3, max: 11, multiple: 5))")

