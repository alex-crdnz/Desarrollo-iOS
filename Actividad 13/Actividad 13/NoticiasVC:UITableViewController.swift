//
//  NoticiasVC:UITableViewController.swift
//  Actividad 13
//
//  Created by user183808 on 5/5/21.
//  Copyright © 2021 user183808. All rights reserved.
//

import UIKit

class NoticiasVC_UITableViewController: UITableViewController {

      var noticias:[String] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let inset = UIEdgeInsets(top: 60, left:0, bottom: 0, right: 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset

        LeerNoticias().getNoticias()
        {
            (datos) in
            self.noticias = datos
            self.tableView.reloadData()
        }
    }

    override func tableView(  _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.noticias.count
    }

    override func tableView(  _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (tableView.dequeueReusableCell(withIdentifier: "celda") as UITableViewCell?)!

        cell.textLabel?.text = self.noticias[indexPath.row]

        return cell
    }
}	
