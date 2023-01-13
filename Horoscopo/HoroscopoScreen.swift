//
//  HoroscopoScreen.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 31/12/22.
//

import UIKit

protocol HoroscopoScreenProtocol: AnyObject {
    func tappedAriesButton()
    func tappedTouroButton()
    func tappedGemeosButton()
    func tappedCancerButton()
    func tappedLeaoButton()
    func tappedVirgemButton()
    func tappedLibraButton()
    func tappedEscorpiaoButton()
    func tappedSargitaButton()
    func tappedCapricaButton()
    func tappedAquarioButton()
    func tappedPeixesButton()
    
}

class HoroscopoScreen: UIView {
    
    private weak var delegate: HoroscopoScreenProtocol?
    
    public func delegate(delegate: HoroscopoScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundo")
        return image
    }()
    
    lazy var horoscopoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Horóscopo"
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.textColor = .white
        return label
        }()
    
    lazy var ariesButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Aries"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedAriesButton), for: .touchUpInside)
        return button
    }()
    
    lazy var touroButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Touro"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedTouroButton), for: .touchUpInside)
        return button
    }()
    
    lazy var gemeosButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Gemeos"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedGemeosButton), for: .touchUpInside)
        return button
    }()
    
    lazy var cancerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Cancer"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedCancerButton), for: .touchUpInside)
        return button
    }()
    
    lazy var leaoButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Leao"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedLeaoButton), for: .touchUpInside)
        return button
    }()
    
    lazy var virgemButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Virgem"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedVirgemButton), for: .touchUpInside)
        return button
    }()
    
    lazy var libraButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Libra"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedLibraButton), for: .touchUpInside)
        return button
    }()
    
    lazy var escorpiaoButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Escorpiao"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedEscorpiaoButton), for: .touchUpInside)
        return button
    }()
    
    lazy var sargitaButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Sargita"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedSargitaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var capricaButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Caprica"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedCapricaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var aquarioButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Aquario"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedAquarioButton), for: .touchUpInside)
        return button
    }()
    
    lazy var peixesButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Peixes"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedPeixesButton), for: .touchUpInside)
        return button
    }()
    
    
    @objc func tappedAriesButton(_ sender: UIButton) {
        delegate?.tappedAriesButton()
    }
    
    @objc func tappedTouroButton(_ sender: UIButton) {
        delegate?.tappedTouroButton()
    }
    
    @objc func tappedGemeosButton(_ sender: UIButton) {
        delegate?.tappedGemeosButton()
    }
    
    @objc func tappedCancerButton(_ sender: UIButton) {
        delegate?.tappedCancerButton()
    }
    
    @objc func tappedLeaoButton(_ sender: UIButton) {
        delegate?.tappedLeaoButton()
    }
    
    @objc func tappedVirgemButton(_ sender: UIButton) {
        delegate?.tappedVirgemButton()
    }
    
    @objc func tappedLibraButton(_ sender: UIButton) {
        delegate?.tappedLibraButton()
    }
    
    @objc func tappedEscorpiaoButton(_ sender: UIButton) {
        delegate?.tappedEscorpiaoButton()
    }
    
    @objc func tappedSargitaButton(_ sender: UIButton) {
        delegate?.tappedSargitaButton()
    }
    
    @objc func tappedCapricaButton(_ sender: UIButton) {
        delegate?.tappedCapricaButton()
    }
    
    @objc func tappedAquarioButton(_ sender: UIButton) {
        delegate?.tappedAquarioButton()
    }
    
    @objc func tappedPeixesButton(_ sender: UIButton) {
        delegate?.tappedPeixesButton()
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    private func addElements() {
        addSubview(subImageView)
        addSubview(horoscopoLabel)
        addSubview(ariesButton)
        addSubview(touroButton)
        addSubview(gemeosButton)
        addSubview(cancerButton)
        addSubview(leaoButton)
        addSubview(virgemButton)
        addSubview(libraButton)
        addSubview(escorpiaoButton)
        addSubview(sargitaButton)
        addSubview(capricaButton)
        addSubview(aquarioButton)
        addSubview(peixesButton)
                   
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            horoscopoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            horoscopoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        
            ariesButton.topAnchor.constraint(equalTo: horoscopoLabel.bottomAnchor, constant: 90),
            ariesButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 20),
            ariesButton.heightAnchor.constraint(equalToConstant: 100),
            ariesButton.widthAnchor.constraint(equalToConstant: 100),
            
            touroButton.topAnchor.constraint(equalTo: ariesButton.bottomAnchor,constant: 50),
            touroButton.leadingAnchor.constraint(equalTo: ariesButton.leadingAnchor),
            touroButton.heightAnchor.constraint(equalToConstant: 100),
            touroButton.widthAnchor.constraint(equalToConstant: 100),
            
            gemeosButton.topAnchor.constraint(equalTo: touroButton.bottomAnchor,constant: 50),
            gemeosButton.leadingAnchor.constraint(equalTo: touroButton.leadingAnchor),
            gemeosButton.heightAnchor.constraint(equalToConstant: 100),
            gemeosButton.widthAnchor.constraint(equalToConstant: 100),
            
            cancerButton.topAnchor.constraint(equalTo: gemeosButton.bottomAnchor,constant: 50),
            cancerButton.leadingAnchor.constraint(equalTo: gemeosButton.leadingAnchor),
            cancerButton.heightAnchor.constraint(equalToConstant: 100),
            cancerButton.widthAnchor.constraint(equalToConstant: 100),
            
            leaoButton.topAnchor.constraint(equalTo: horoscopoLabel.bottomAnchor, constant: 90),
            leaoButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            leaoButton.heightAnchor.constraint(equalToConstant: 100),
            leaoButton.widthAnchor.constraint(equalToConstant: 100),
            
            virgemButton.topAnchor.constraint(equalTo: leaoButton.bottomAnchor, constant: 50),
            virgemButton.centerXAnchor.constraint(equalTo:centerXAnchor),
            virgemButton.heightAnchor.constraint(equalToConstant: 100),
            virgemButton.widthAnchor.constraint(equalToConstant: 100),
            
            libraButton.topAnchor.constraint(equalTo: virgemButton.bottomAnchor, constant: 50),
            libraButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            libraButton.heightAnchor.constraint(equalToConstant: 100),
            libraButton.widthAnchor.constraint(equalToConstant: 100),
            
            escorpiaoButton.topAnchor.constraint(equalTo: libraButton.bottomAnchor, constant: 50),
            escorpiaoButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            escorpiaoButton.heightAnchor.constraint(equalToConstant: 100),
            escorpiaoButton.widthAnchor.constraint(equalToConstant: 100),
            
            sargitaButton.topAnchor.constraint(equalTo: horoscopoLabel.bottomAnchor, constant: 90),
            sargitaButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            sargitaButton.heightAnchor.constraint(equalToConstant: 100),
            sargitaButton.widthAnchor.constraint(equalToConstant: 100),
            
            capricaButton.topAnchor.constraint(equalTo: sargitaButton.bottomAnchor,constant: 50),
            capricaButton.trailingAnchor.constraint(equalTo: sargitaButton.trailingAnchor),
            capricaButton.heightAnchor.constraint(equalToConstant: 100),
            capricaButton.widthAnchor.constraint(equalToConstant: 100),
            
            aquarioButton.topAnchor.constraint(equalTo: capricaButton.bottomAnchor,constant: 50),
            aquarioButton.trailingAnchor.constraint(equalTo: sargitaButton.trailingAnchor),
            aquarioButton.heightAnchor.constraint(equalToConstant: 100),
            aquarioButton.widthAnchor.constraint(equalToConstant: 100),
            
            peixesButton.topAnchor.constraint(equalTo: aquarioButton.bottomAnchor,constant: 50),
            peixesButton.trailingAnchor.constraint(equalTo: sargitaButton.trailingAnchor),
            peixesButton.heightAnchor.constraint(equalToConstant: 100),
            peixesButton.widthAnchor.constraint(equalToConstant: 100),
            
        ])
    }
}
