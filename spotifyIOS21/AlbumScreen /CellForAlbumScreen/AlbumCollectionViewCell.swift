//
//  AlbumCollectionViewCell.swift
//  spotifyIOS21
//
//  Created by Mac User on 17/2/24.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    static var reuseId = "AlbumTableViewCell"
    
    private let songName: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 16, weight: .bold)
        view.text = "Can’t Knock The Hustle"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        return view
    }()
    
    private let songArtist: UILabel = {
        let view = UILabel()
        view.text = "JAY-Z, The Notorious B.I.G"
        view.font = .systemFont(ofSize: 13, weight: .medium)
        view.textColor = UIColor(named: "Album")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let dotButtonTV: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "ellipsis")
        view.setImage(image, for: .normal)
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        allSetUpConstraints()
        
    }
    
    private func allSetUpConstraints() {
        setUpConstraintsForSonfName()
        setUpConstraintsForSongArtist()
        setUpConstraintsForDotButtonTV()
    }
    
    private func setUpConstraintsForSonfName() {
        contentView.addSubview(songName)
        NSLayoutConstraint.activate([
            songName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            songName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
    
    private func setUpConstraintsForSongArtist() {
        contentView.addSubview(songArtist)
        NSLayoutConstraint.activate([
            songArtist.topAnchor.constraint(equalTo: songName.bottomAnchor, constant: 5),
            songArtist.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
    
    private func setUpConstraintsForDotButtonTV() {
        contentView.addSubview(dotButtonTV)
        NSLayoutConstraint.activate([
            dotButtonTV.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            dotButtonTV.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
