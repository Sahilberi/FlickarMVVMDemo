//
//  ViewController.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

protocol ListingViewControllerDelegate: class {
  func naviagteToNextPage(_ controller: ListingViewController, didTapProduct product: Product)
}

class ListingViewController: UIViewController, Storyboarded {

  weak var delegate: ListingViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }

}


extension ListingViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.naviagteToNextPage(self, didTapProduct: Product())
  }
}
