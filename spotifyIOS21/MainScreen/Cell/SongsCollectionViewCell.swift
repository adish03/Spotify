//
//  SongsCollectionViewCell.swift
//  spotifyIOS21
//
//  Created by Dariya on 12/2/24.
//

//
//  SongsCollectionViewCell.swift
//  MainScreenSpotify
//
//  Created by Dariya on 4/2/24.
//

import UIKit

class SongsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SongsCollectionViewCell"
    
    private let songImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "image")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let songName: UILabel = {
        let view = UILabel()
        view.text = "Still D.R.E"
        view.textColor = .white
        view.numberOfLines = 2
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    private func addSubviews() {
        contentView.addSubview(songImage)
        contentView.addSubview(songName)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            songImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            songImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            songImage.widthAnchor.constraint(equalToConstant: 56),
            songImage.heightAnchor.constraint(equalToConstant: 56),
            
            songName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            songName.leadingAnchor.constraint(equalTo: songImage.trailingAnchor, constant: 8)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
