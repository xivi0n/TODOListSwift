//
//  FirstViewController.swift
//  ToDoDemo
//
//  Created by Apple on 7/15/17.
//  Copyright © 2017 crossover.G12. All rights reserved.
//

import UIKit
var list = ["Kupi mleko", "Izadji napolje", "Idi po brata"]

class FirstViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var TableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            TableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        TableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

