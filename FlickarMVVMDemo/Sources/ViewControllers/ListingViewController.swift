//
//  ViewController.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

protocol ListingViewControllerDelegate: class {
  func naviagteToNextPage(_ controller: ListingViewController, didTapProduct listings: [ListingModel])
}

class ListingViewController: UIViewController, Storyboarded {

  var viewModel: ListingViewModel?
  var delegate: ListingViewControllerDelegate?

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Posts"
  }

  override func viewDidAppear(_ animated: Bool) {
    viewModel?.requestPostData(completion: {
      self.tableView.reloadData()
    })
  }
}


extension ListingViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.viewModel?.count ?? 0
  }

  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
    let id = self.viewModel!.getPost(index: indexPath.row).id
    cell.textLabel?.text = "User \(id)"
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.naviagteToNextPage(self, didTapProduct: self.viewModel!.getPost(index: indexPath.row).data)
  }
}
