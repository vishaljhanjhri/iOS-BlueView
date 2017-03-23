//
//  ViewController.swift
//  demo2
//
//  Created by Vishal on 24/03/17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource,UIGestureRecognizerDelegate {

    @IBAction func butn(_ sender: UIButton) {
        let btn = UIButton()
        var blurEffectView = UIView()
        let myView = UIView()
        myView.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
        myView.backgroundColor = UIColor.green
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            self.view.backgroundColor = UIColor.clear
            
            let blurEffect = UIBlurEffect(style: .regular)
            blurEffectView = UIVisualEffectView(effect : blurEffect)
            blurEffectView.frame = self.view.bounds
            self.view.addSubview(blurEffectView)
            btn.frame = CGRect(x: 8, y: 8, width: 84, height: 84)
            btn.titleLabel?.text = "button"
            btn.backgroundColor = UIColor.black
            btn.titleLabel?.textColor = UIColor.darkGray
            btn.titleLabel?.textAlignment = .center
            
            let tap = UITapGestureRecognizer(target: self, action: Selector(("handleTap:")))
            tap.delegate = self
            blurEffectView.addGestureRecognizer(tap)
            blurEffectView.addSubview(myView)
            myView.addSubview(btn)
            
        }
        else{
            
        }
    
        func handleTap(
            sender: UITapGestureRecognizer) {
            blurEffectView.isHidden = true
        }
    }
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = "\(indexPath.row)"
        return cell
    }
}

