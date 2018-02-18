//
//  IncomingPhotoMessageCell.swift
//  Pigeon-project
//
//  Created by Roman Mizin on 9/4/17.
//  Copyright © 2017 Roman Mizin. All rights reserved.
//

import UIKit


class IncomingPhotoMessageCell: BaseMediaMessageCell {
  

  override func setupViews() {
    
    bubbleView.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(handleLongTap(_:))) )
    
    contentView.addSubview(bubbleView)
    
    bubbleView.addSubview(messageImageView)
    
    bubbleView.frame.origin = CGPoint(x: 10, y: 0)
    
    bubbleView.frame.size.width = 200
    
    progressView.color = .black
    
    //progressView.progressColor = .darkGray
    
    //progressView.progressBackgroundColor = UIColor(red: 0.78, green: 0.78, blue: 0.80, alpha: 1.0)

    bubbleView.image = grayBubbleImage

    messageImageView.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 4).isActive = true
    messageImageView.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -4).isActive = true
    messageImageView.leftAnchor.constraint(equalTo: bubbleView.leftAnchor, constant: 9).isActive = true
    messageImageView.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -4).isActive = true
    
    bubbleView.addSubview(playButton)
    playButton.centerXAnchor.constraint(equalTo: bubbleView.centerXAnchor).isActive = true
    playButton.centerYAnchor.constraint(equalTo: bubbleView.centerYAnchor).isActive = true
    playButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    playButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    bubbleView.addSubview(progressView)
    progressView.centerXAnchor.constraint(equalTo: bubbleView.centerXAnchor).isActive = true
    progressView.centerYAnchor.constraint(equalTo: bubbleView.centerYAnchor).isActive = true
    progressView.widthAnchor.constraint(equalToConstant: 75).isActive = true
    progressView.heightAnchor.constraint(equalToConstant: 75).isActive = true
  }
  
  override func prepareViewsForReuse() {
    bubbleView.image = grayBubbleImage
    playButton.isHidden = true
  }
}
