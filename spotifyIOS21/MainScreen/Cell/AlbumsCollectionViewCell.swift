//
//  AlbumsCollectionViewCell.swift
//  spotifyIOS21
//
//  Created by Dariya on 12/2/24.
//


import UIKit

class AlbumsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AlbumsCollectionViewCell"
    
    private let albumImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "album image")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameOfAlbum: UILabel = {
        let view = UILabel()
        view.text = "Encore • Eminem"
        view.textColor = .white
        view.font = .systemFont(ofSize: 13, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    private func addSubviews() {
        contentView.addSubview(albumImage)
        contentView.addSubview(nameOfAlbum)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            albumImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            albumImage.widthAnchor.constraint(equalToConstant: 160),
            albumImage.heightAnchor.constraint(equalToConstant: 160),
            
            nameOfAlbum.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 6),
            nameOfAlbum.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
