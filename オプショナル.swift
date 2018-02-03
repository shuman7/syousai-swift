let nums = [3,4,6]
let lastNum = nums.lastNum
let ans = lastNum * 2
print(ans)


// 変数numにnilを代入しようとしてエターになる
var num:Int
num = 5
num = nil //エラーになる
var num:Intnum = 5
num = nil //エラーになる

// ニルの可能性がある値のことをオプショナルバリューと呼ぶ

// 変数numをオプショなる方として千宣言する
vat num:Int?
num = 5
num = nil //eエラーになる
print(num)
出力
Optional(5)


let nums = [3,4,6]
let lastNum = nums.lastNum
let ans = lastNum! * 2
print(ans)



// lasrNumがnilではないといときに計算を実行する
let nums =[3,4,6]
let lastNu, =nums.lastNuif lastNum != nil {
    let ans = lastNu,! * 2
    print(ans)  
} else {
    print("numsは空です。")
}
// 変数countがnilの場合の値を指定する
var count:Int?
var price:Int

Price = 250 * (count ?? 2)
print("\(price)円です。")

count = 3
price = 250 * (count ?? 2)
print("\(price)円です。")

// 配列がからの時の値を指定する
var nameArray:[String] = []
let userName:String = nameArray.firts ??"名無し"
print(userName)
出力　なし

// if文でのオプショナルバインでォングで安全にランクアップする
// 変数がニルでなければストリングを連結する
var str:String?
str = "swift"
if let msg = str {
    print(msg + "ワ−ルド")
} else {
    print("ハローワールド")
}
出力　Swiftワールド

// p182
// 辞書の値うちで数値だけを合算する
var sum = 0
let dic:[String:Int?] = ["a":23,"b":nil,"c":10,"d":nil]
// 値が数値の場合だけ合算する
for (_, value) in dic {
    if let num = value {
        sum += num
    }
}
print("数値の場合は\(sum)")
出力　合計の値は33

// 値がnilでなければ変数に入っていた文字を連結する
var str:String? = "☆★"
var repeatString:String = ""
var i = 0
while let stamp = str {
    repeatString += stamp
    i += 1
    if(i >= 10){
        break
    }
} 
print(repeatString)
出力　☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★


//p183 gurad else文でのオプショナルバインディング
let who ="サクラ"
var level:Int?

func hello() {
    guard let theLevel = level else{
        return
    }

    if theLevel<10 {
        print("ハロー、" + who + "隊員")
    } else {
        print("ハロー、" + who + "上級隊員")
    }
}


// オプショナルバインディングに条件式を組合わせる
let year1:String = "2001"
let year2:String = "2016"

if let startYear = Int(year1), let endYear = Int(year2) , startYear < endYear {
    let years = endYear - startYear
    print("\(years)年間です")
}


// オプショナルチェーン
