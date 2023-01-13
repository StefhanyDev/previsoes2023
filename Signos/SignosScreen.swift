//
//  SignosScreen.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 31/12/22.
//

import UIKit


class SignosScreen: UIView {
    
   public lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundo")
        return image
    }()
    
   public lazy var dataSigno: UITextView = {
       let data = UITextView()
        data.translatesAutoresizingMaskIntoConstraints = false
        data.text = ""
        return data
    }()
    
   public lazy var startLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Signo"
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.textColor = .white
        return label
        }()
    
   public lazy var signoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Aries")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    
   public lazy var previsaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
        }()
    
    

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
        addSubview(startLabel)
        addSubview(signoImageView)
        addSubview(dataSigno)
        addSubview(previsaoLabel)
    }
 
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            startLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 44),
            startLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            

            signoImageView.topAnchor.constraint(equalTo: startLabel.topAnchor, constant: 44),
            signoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            signoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            signoImageView.heightAnchor.constraint(equalToConstant: 200),
            
            dataSigno.topAnchor.constraint(equalTo: subImageView.topAnchor, constant: 20),
            dataSigno.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            previsaoLabel.topAnchor.constraint(equalTo: dataSigno.topAnchor, constant: 40),
            previsaoLabel.leadingAnchor.constraint(equalTo: signoImageView.leadingAnchor),
            previsaoLabel.trailingAnchor.constraint(equalTo: signoImageView.trailingAnchor),
            previsaoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        
    ])
        
    }
}
    
    
  
 
    
  
   
   

    
