//
//  File.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 12/01/23.
//

import Foundation

class SignosManager {
    
    let signo: [Signo]
    
    init(){
        let fileURL = Bundle.main.url(forResource: "signo", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        signo = try! jsonDecoder.decode([Signo].self, from: jsonData)
    }
}
