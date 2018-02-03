//
//  ViewController.swift
//  13-6スクロールビュー
//
//  Created by syuumasenokuchi on 2018/01/26.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate /*UIScrollViewのdelegateプロトコル*/ {
    
//    スクロールビューをアウトレット接続
    @IBOutlet weak var scrollView: UIScrollView!
    
//    頁コントロールをアウトレット接続
    @IBOutlet weak var pageControl: UIPageControl!
    
//写真のファイル名とタイトルの構造体(photoタイプ)
    struct Photo {
        var imageName:String
        var title:String
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        各ページに表示する写真
        let photoList = [
            Photo(imageName:"movie.jpeg", title:"映画好き"),
            Photo(imageName:"soccer.jpeg", title:"芝生でスライディングしたい"),
            Photo(imageName:"read-book.jpeg", title:"こんな本部屋いいね"),
            Photo(imageName:"anime.jpeg", title:"ポポピ")
        ]

//    サブビューを作る
    let subView = createContentsView(contentList:photoList)
//    スクロールビューにサブビューを追加する
    scrollView.addSubview(subView)
//    スクロールビューの設定
    scrollView.isPagingEnabled = true //ページ送りする
    scrollView.contentSize = subView.frame.size //コンテンツサイズ
    scrollView.contentOffset = CGPoint(x: 0, y:0) //スクロール開始位置
//    スクロールビューのデリゲートになる
    scrollView.delegate = self
//    ページコントロールを設定する
    pageControl.numberOfPages = photoList.count
    pageControl.currentPage = 0
//    ページコントロールのドット色
    pageControl.pageIndicatorTintColor = UIColor.lightGray
    pageControl.currentPageIndicatorTintColor = UIColor.black
}

//スクロールビューを追加するコンテンツビュー（サブビュー）を作る
func createContentsView(contentList:Array<Photo>) -> UIView {
//    ページを追加するコンテンツビューを作る
    let cotentView = UIView()
//    1ページの幅と高さ（幅はデバイスで変化するのでviewに合わせる）
    let pageWidth = self.view.frame.width
    let pageHeight = scrollView.frame.height
    let pageViewRect = CGRect(x:0, y:0, width:pageWidth, height:pageHeight)
//    写真の縦横サイズ(正方向)
    let photoSize = CGSize(width:250, height:250)
//    ページを並べたコンテンツビュー全体のサイズ
    cotentView.frame = CGRect(x:0, y:0, width:pageWidth*4, height:pageHeight)
//    ページの背景色
    let colors:Array<UIColor> = [.cyan, .yellow, .lightGray, .orange]
//    写真コンテンツのビューを作ってサブビューに追加する
    for i in 0..<contentList.count {
//    写真のファイル名とタイトルを順に出す
    let cotentItem = contentList[i]
//    ページのビューを作る
    let pageView = createPage(viewRect: pageViewRect, imageSize: photoSize, item: cotentItem)
//    ページの表示座標を決める（ページ幅だけずらしていく）
    let left = pageViewRect.width*CGFloat(i)
    let xy = CGPoint(x:left, y:0)
    pageView.frame = CGRect(origin: xy, size: pageViewRect.size)
    pageView.backgroundColor = colors[i]
//    コンテンツビューにページビューを並べて追加していく
    cotentView.addSubview(pageView) //4ページを横に並べる
    }
    return cotentView
}
//写真とタイトルがある1ページ分のビューを作る
    func createPage(viewRect:CGRect, imageSize:CGSize, item:Photo) -> UIView {
        let pageView = UIView(frame: viewRect)
//        写真ビューを作ってイメージを設定する
        let photoView = UIImageView()
        let left = (pageView.frame.width - imageSize.width)/2
        photoView.frame = CGRect(x:left, y:10, width:imageSize.width, height: imageSize.height)
        photoView.contentMode = .scaleAspectFill
        photoView.image = UIImage(named: item.imageName)
//        ラベルを作って写真タイトルを設定する
        let titleFrame = CGRect(x:left, y:photoView.frame.maxY+10, width:200, height:21)
        let titleLabel = UILabel(frame: titleFrame)
        titleLabel.text = item.title
//        写真とタイトルとページビューに追加する
        pageView.addSubview(photoView)
        pageView.addSubview(titleLabel)
        return pageView
    }
//    スクロールしたらページコントロールを更新する
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
//            カレントページを調べる
            let pageNo = Int(scrollView.contentOffset.x/scrollView.frame.width)
//            表示をカレントページにわせる
            pageControl.currentPage = pageNo
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
