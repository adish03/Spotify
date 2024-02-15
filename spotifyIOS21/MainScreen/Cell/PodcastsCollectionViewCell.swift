//
//  PodcastsCollectionViewCell.swift
//  spotifyIOS21
//
//  Created by Dariya on 12/2/24.
//

//
//  PodcastsCollectionViewCell.swift
//  MainScreenSpotify
//
//  Created by Dariya on 4/2/24.
//

import UIKit

class PodcastsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PodcastsCollectionViewCell"
    
    private let podcastImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "podcast")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 4
        view.clipsToBounds = true
        return view
    }()
    
    private let nameOfPodcast: UILabel = {
        let view = UILabel()
        view.text = "My name is Optimus Prime. \nAre we autonomus robots?"
        view.textAlignment = .left
        view.numberOfLines = 3
        view.textColor = .white
        view.font = .systemFont(ofSize: 14, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let descriptionOfPodcast: UILabel = {
        let view = UILabel()
        view.text = "We're autonomus robotic organisms \nfrom the big planet - Cyberton..."
        view.textAlignment = .left
        view.numberOfLines = 3
        view.textColor = .systemGray2
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let plusButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let plusImage = UIImage(systemName: "plus")
        view.tintColor = .systemGray2
        view.setImage(plusImage, for: .normal)
        return view
    }()
    
    private let dateLabel: UILabel = {
        let view = UILabel()
        view.text = "Wed • 1hr, 5min"
        view.textColor = .systemGray2
        view.font = .systemFont(ofSize: 10, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let playerButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let playerImage = UIImage(systemName: "play.fill")
        view.setImage(playerImage, for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        view.layer.cornerRadius = 30/2
        view.clipsToBounds = true
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    private func addSubviews() {
        contentView.addSubview(podcastImage)
        contentView.addSubview(nameOfPodcast)
        contentView.addSubview(descriptionOfPodcast)
        contentView.addSubview(plusButton)
        contentView.addSubview(dateLabel)
        contentView.addSubview(playerButton)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        podcastImage.topAnchor.constraint(equalTo: contentView.topAnchor),
        podcastImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        podcastImage.widthAnchor.constraint(equalToConstant: 104),
        podcastImage.heightAnchor.constraint(equalToConstant: 104),
        
        nameOfPodcast.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
        nameOfPodcast.leadingAnchor.constraint(equalTo: podcastImage.trailingAnchor, constant: 17),
        
        descriptionOfPodcast.topAnchor.constraint(equalTo: nameOfPodcast.bottomAnchor, constant: 3),
        descriptionOfPodcast.leadingAnchor.constraint(equalTo: podcastImage.trailingAnchor, constant: 17),
        
        plusButton.topAnchor.constraint(equalTo: descriptionOfPodcast.bottomAnchor, constant: 10),
        plusButton.leadingAnchor.constraint(equalTo: podcastImage.trailingAnchor, constant: 17),
        
        dateLabel.topAnchor.constraint(equalTo: descriptionOfPodcast.bottomAnchor, constant: 15),
        dateLabel.leadingAnchor.constraint(equalTo: plusButton.trailingAnchor, constant: 8),
        
        playerButton.topAnchor.constraint(equalTo: descriptionOfPodcast.bottomAnchor, constant: 5),
        playerButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -6),
        playerButton.widthAnchor.constraint(equalToConstant: 30),
        playerButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


