let kyouka = ("sansu",100)
var kingaku = (1000,200)
var guest = ("大重","おおしげ",1234)

let product:(String,Int) = ("swift",2014)
var guest:(String,String,Int)
guest = ("大重","おおしげ",1234)

let data = (1000,80)
let (price, tax) = data
let kingaku = price + tax
print(kingaku) 


let data = (1000,80)
let (price, _) = data
print(price)

let kingaku = (1000,80)
let price = kingaku.0
let tax = kingaku.1
print(price = tax)

var user = ("鈴木",29)
user.1 = 30
print(user)
let kingaku = (price:10000,tax:80)
let seikyugaku = kingaku.price + kingaku.tax
print(seikyugaku)
var user:(name:String,age:Int,isPsaa:Bool)
user.name = "高田"
user.age = 23
user.isPass = true
print(user)
print(user.age)


