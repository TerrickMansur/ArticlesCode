//
//  PureViewModelViewController.swift
//  Pure functions What about Pure viewModels
//
//  Created by Terrick Mansur on 13/07/2020.
//  Copyright © 2020 Terrick Mansur. All rights reserved.
//

import Foundation
import UIKit

protocol PureViewModelViewModelProtocol {
    var name: String { get }
}

class PureViewModelViewController: UIViewController {
 
    var viewModel: PureViewModelViewModelProtocol! {
        didSet {
            self.name.text = viewModel.name
        }
    }
    
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pureViewModel = PureNameViewModel()
        pureViewModel.updateValueWithResponse(response: .success(name: "Terrick"))
        self.viewModel = pureViewModel
    }
}
