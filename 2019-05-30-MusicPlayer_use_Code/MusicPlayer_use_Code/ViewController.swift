//
//  ViewController.swift
//  MusicPlayer_use_Code
//
//  Created by 김광준 on 29/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!
    var timer: Timer!
    
    var playPauseButton = UIButton()
    var timerLabel = UILabel()
    var musicSlider = UISlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(timerLabel)
        view.addSubview(playPauseButton)
        view.addSubview(musicSlider)
        
        autoLayout()
        playPauseButtonConfiguration()
        timerLabelConfiguration()
        musicSliderConfiguration()
        
    }
    
    func playPauseButtonConfiguration() {
        playPauseButton.setImage(UIImage(named: "button_play"), for: .normal)
        
        if playPauseButton.isSelected {
            playPauseButton.setImage(UIImage(named: "button_pause"), for: .normal)
        }
        
        playPauseButton.addTarget(self, action: #selector(didTapPlayPauseBtn(_:)), for: .touchUpInside)
    }
    
    func timerLabelConfiguration() {
   
        timerLabel.font = UIFont.systemFont(ofSize: 20)
        timerLabel.text = "00:00:00"
        timerLabel.textColor = .black
        timerLabel.textAlignment = .center
    }
    
    func musicSliderConfiguration() {
        musicSlider.tintColor = .red
        musicSlider.value = 0.5
        musicSlider.maximumValue = 1
        musicSlider.minimumValue = 0
        musicSlider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
    }
    
    func autoLayout() {
        playPauseButton.translatesAutoresizingMaskIntoConstraints = false
        
        playPauseButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        playPauseButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        playPauseButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        playPauseButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        timerLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        timerLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        timerLabel.topAnchor.constraint(equalTo: playPauseButton.bottomAnchor, constant: 20).isActive = true
        timerLabel.centerXAnchor.constraint(equalTo: playPauseButton.centerXAnchor).isActive = true
        
        musicSlider.translatesAutoresizingMaskIntoConstraints = false
        
        musicSlider.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 50).isActive = true
        musicSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        musicSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        musicSlider.centerXAnchor.constraint(equalTo: timerLabel.centerXAnchor).isActive = true
        
        
    }
    
    func initialzerPlayer() {
        
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "sound") else {
            print("error : 음원 에셋을 불러올 수 없음")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("error : 플레이어 초기화 실패")
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        self.musicSlider.value = Float(self.player.duration)
        self.musicSlider.maximumValue = Float(self.player.currentTime)
        self.musicSlider.minimumValue = 0
    }
    
    func updateTimerLabel(time: TimeInterval) {
        let minute: Int = Int(time / 60)
        let second: Int = Int(time.truncatingRemainder(dividingBy: 60))
        let miliSecond: Int = Int(time.truncatingRemainder(dividingBy: 1) * 100)
        
        let timeText: String = String(format:"%02ld:%02ld:%02ld", minute, second, miliSecond)
        
        self.timerLabel.text = timeText
    }
    
    func makeAndFireTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [unowned self] (timer: Timer) in
            
            if self.musicSlider.isTracking { return }
            
            self.updateTimerLabel(time: self.player.currentTime) // Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
            self.musicSlider.value = Float(self.player.currentTime)
        })
        self.timer.fire()
    }
    func invalidateTimer() {
        self.timer.invalidate()
        self.timer = nil
    }
    
    
    @objc func didTapPlayPauseBtn(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        if sender.isSelected {
            self.makeAndFireTimer()
        } else {
            self.invalidateTimer()
        }
    }
    
    @objc func sliderValueChanged(_ sender: UISlider) {
        self.updateTimerLabel(time: TimeInterval(sender.value))
        if sender.isTracking { return }
        self.player.currentTime = TimeInterval(sender.value)
    }
    
    // AVAudioPlayerDelegate
    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        
        guard let error: Error = error else {
            print("오디오 플레이어 디코드 오류발생")
            return
        }
        
        let message: String
        message = "오디오 플레이어 오류 발생 \(error.localizedDescription)"
        
        let alert: UIAlertController = UIAlertController(title: "알람", message: message, preferredStyle: .alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "확인", style: .default) { (action: UIAlertAction) -> Void in
            
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.playPauseButton.isSelected = false
        self.musicSlider.value = 0
        self.updateTimerLabel(time: 0)
        self.invalidateTimer()
    }
    


}

