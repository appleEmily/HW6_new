//
//  ViewController.swift
//  HW6_new
//
//  Created by 野崎絵未里 on 2019/06/07.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var number:[Int]!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< 20 {
            let random:Int = Int.random(in: 0..<100)
            print(random)
            number.append(random)
            return
            //numberの配列にrandomな数字を２０個入れられた。
        }
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = String(number[indexPath.row])
        
        return cell
    }
    


}

