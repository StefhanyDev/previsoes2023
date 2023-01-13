//
//  StartScreen.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 30/12/22.
//

import UIKit

// MARK: PROTOCOLO

protocol StartScreenProtocol: AnyObject {
    func tappedStartButton()
}

class StartScreen: UIView {
    
    private weak var delegate: StartScreenProtocol?
    
    public func delegate(delegate: StartScreenProtocol?) {
        self.delegate = delegate
    }
    
    // MARK: OBJETOS
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundo")
        return image
    }()
    
    lazy var startLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Previsões Atrológicas 2023"
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.textColor = .white
        return label
        }()
    
    lazy var startImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "horoscopo")
        image.tintColor = .white
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var startButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Vamos lá!", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: ACAO DO BOTAO
    @objc func tappedStartButton(_ sender: UIButton) {
        self.delegate?.tappedStartButton()
    }
    
    
    // MARK: INICIALIZADR
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray6
        addElements()
        configConstraints()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(subImageView)
        addSubview(startLabel)
        addSubview(startImage)
        addSubview(startButton)
    }
    
    //MARK: CONSTRAINTS
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            startLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 45),
            startLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            startImage.topAnchor.constraint(equalTo: startLabel.bottomAnchor, constant: 55),
            startImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            startImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            startImage.heightAnchor.constraint(equalToConstant: 333),
            
            startButton.topAnchor.constraint(equalTo: startImage.bottomAnchor, constant: 55),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 33),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -33),
            startButton.heightAnchor.constraint(equalToConstant: 65),
        ])
    }
}
