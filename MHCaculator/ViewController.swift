//
//  ViewController.swift
//  MHCaculator
//
//  Created by muhuai on 4/24/16.
//  Copyright © 2016 MuHuai. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var outputScreen = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputScreen.backgroundColor = UIColor.redColor()
        
        let view1 = generateBtn("1")
        let view2 = generateBtn("2")
        let view3 = generateBtn("3")
        let view4 = generateBtn("4")
        let view5 = generateBtn("5")
        let view6 = generateBtn("6")
        let view7 = generateBtn("7")
        let view8 = generateBtn("8")
        let view9 = generateBtn("9")
        let viewAdd = generateBtn("+")
        let viewSub = generateBtn("-")
        let viewMulti = generateBtn("*")
        let viewDiv = generateBtn("/")
        
        let stackView1 = UIStackView(arrangedSubviews: [view1, view2, view3, viewAdd])
        stackView1.axis = .Horizontal
        stackView1.distribution = .FillEqually
        let stackView2 = UIStackView(arrangedSubviews: [view4, view5, view6, viewSub])
        stackView2.distribution = .FillEqually
        let stackView3 = UIStackView(arrangedSubviews: [view7, view8, view9, viewMulti])
        stackView3.distribution = .FillEqually
        let stackWrap = UIStackView(arrangedSubviews: [outputScreen, stackView1, stackView2, stackView3])
        
        stackWrap.axis = .Vertical
        stackWrap.distribution = .Fill
        
        self.view.addSubview(stackWrap)
        
        stackWrap.snp_makeConstraints { (make) in
            make.size.equalTo(stackWrap.superview!)
        }
        outputScreen.snp_makeConstraints { (make) in
        }
        stackView1.snp_makeConstraints { (make) in
            make.height.equalTo(view1.snp_width)
        }
        stackView2.snp_makeConstraints { (make) in
            make.size.equalTo(stackView1)
        }
        stackView3.snp_makeConstraints { (make) in
            make.size.equalTo(stackView1)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func generateBtn(title: String) -> UIButton {
        let btn = UIButton(type: .Custom)
        btn.layer.borderColor = UIColor.grayColor().CGColor
        btn.layer.borderWidth = 0.5
        btn.setTitle(title, forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        return btn
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

