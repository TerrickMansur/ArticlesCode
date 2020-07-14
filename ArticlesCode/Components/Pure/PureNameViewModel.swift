//
//  NameViewModel.swift
//  Pure functions What about Pure viewModels
//
//  Created by Terrick Mansur on 07/07/2020.
//  Copyright © 2020 Terrick Mansur. All rights reserved.
//

import Foundation

class PureNameViewModel: PureViewModelViewModelProtocol {

    // MARK: NameViewModelType
   
    var name = ""

    func updateValueWithResponse(response: NameService.Response) {
        switch response {
        case .success(let name):
        self.name = name
        case .failed:
        self.name = "Failed"
        }
    }
}
