//
//  NameService.swift
//  Pure functions What about Pure viewModels
//
//  Created by Terrick Mansur on 07/07/2020.
//  Copyright © 2020 Terrick Mansur. All rights reserved.
//

import Foundation

class NameService {
    
    enum Response {
        case success(name: String)
        case failed
    }
    
    private init() {}
    
    class func retrieveName(completion: @escaping (_ response: Response)->()) {
        // Yes, this is a fake request 😭
        DispatchQueue.global().async {
            sleep(3)
            completion(.success(name: "Terrick"))
            //completion(.failed(error: "Some error"))
        }
    }
}
