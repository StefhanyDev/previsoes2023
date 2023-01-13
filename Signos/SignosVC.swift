//
//  SignosVC.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 31/12/22.
//

import UIKit

public protocol SignosVCProtocol: AnyObject {
    func showAries()
    func showTouro()
    func showGemeos()
    func showCancer()
    func showLeao()
    func showVirgem()
    func showLibra()
    func showEscorpiao()
    func showSargita()
    func showCaprica()
    func showAquario()
    func showPeixes()
    
}

class SignosVC: UIViewController {
    
    private weak var delegate: SignosVCProtocol?
   
    
    public func delegate(delegate: SignosVCProtocol?) {
        self.delegate = delegate
    }

    var signosScreen: SignosScreen?
    
    override func loadView() {
        signosScreen = SignosScreen()
        view = signosScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
}
extension SignosVC: HoroscopoScreenProtocol {
    func tappedAriesButton() {
        delegate?.showAries()
        
    }
    
    func tappedTouroButton() {
        delegate?.showTouro()
    }
    
    func tappedGemeosButton() {
        delegate?.showGemeos()
    }
    
    func tappedCancerButton() {
        delegate?.showCancer()
    }
    
    func tappedLeaoButton() {
        delegate?.showLeao()
    }
    
    func tappedVirgemButton() {
        delegate?.showVirgem()
    }
    
    func tappedLibraButton() {
        delegate?.showLibra()
    }
    
    func tappedEscorpiaoButton() {
        delegate?.showEscorpiao()
    }
    
    func tappedSargitaButton() {
        delegate?.showSargita()
    }
    
    func tappedCapricaButton() {
        delegate?.showCaprica()
    }
    
    func tappedAquarioButton() {
        delegate?.showAquario()
    }
    
    func tappedPeixesButton() {
        delegate?.showPeixes()
    }
}
    


