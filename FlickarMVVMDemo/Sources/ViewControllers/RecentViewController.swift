//
//  RecentViewController.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

struct Product {
  
}

protocol RecentViewControllerDelegate: class {
  func naviagteToNextPage(_ controller: RecentViewController, didTapProduct product: Product)
}

class RecentViewController: UIViewController, Storyboarded {
  
  weak var delegate: RecentViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

  }

}

extension RecentViewController: UITableViewDataSource, UITableViewDelegate {
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
