//
//  MultiGameView.swift
//  JAM-2
//
//  Created by Athéna Mojzes on 25/03/2023.
//

import SwiftUI

struct MultiGameView: View {
    @State private var blueCircle = false
    @State private var whiteCircle = false
    @State private var count = 0
    
    @State private var positionBlue = 0
    @State private var positionWhite = 0
    
    @State private var test = 60
    
    @State var timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    @State var timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var endGame: Bool = false
    
    @EnvironmentObject var Infos:infos
    
    let positions = [
        [CGFloat(40), CGFloat(100)], [CGFloat(100), CGFloat(700)],[CGFloat(381), CGFloat(800)],[CGFloat(350), CGFloat(300)],[CGFloat(40), CGFloat(699)],[CGFloat(205), CGFloat(144)],[CGFloat(344), CGFloat(167)],[CGFloat(250), CGFloat(500)],[CGFloat(100), CGFloat(200)],[CGFloat(144), CGFloat(444)],[CGFloat(266), CGFloat(555)],[CGFloat(190), CGFloat(499)],[CGFloat(244), CGFloat(195)],[CGFloat(222), CGFloat(444)],[CGFloat(40), CGFloat(570)],[CGFloat(231), CGFloat(555)]
    ]
    
    let positions2 = [
        [CGFloat(200), CGFloat(100)], [CGFloat(40), CGFloat(700)],[CGFloat(381), CGFloat(400)],[CGFloat(350), CGFloat(600)],[CGFloat(300), CGFloat(699)],[CGFloat(280), CGFloat(144)],[CGFloat(178), CGFloat(167)],[CGFloat(100), CGFloat(500)],[CGFloat(100), CGFloat(600)],[CGFloat(40), CGFloat(444)],[CGFloat(80), CGFloat(555)],[CGFloat(250), CGFloat(499)],[CGFloat(344), CGFloat(195)],[CGFloat(222), CGFloat(222)],[CGFloat(40), CGFloat(80)],[CGFloat(231), CGFloat(344)]
    ]
    
    var body: some View {
        ZStack {
            ZStack {
                GeometryReader { geometry in
                    ZStack {
                        let radius = CGFloat.random(in: 10...30)
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 70)
                            .position(x: 221, y: 100)
                        Text("\(test)")
                            .font(.title)
                            .bold()
                            .foregroundColor(.red)
                            .position(x: 222, y: 100)
                        ForEach(0..<Int.random(in: 1...1), id: \.self) { _ in
                            ZStack {
                                Circle()
                                    .onTapGesture {
                                        blueCircle = true
                                    }
                                    .foregroundColor(.black)
                                    .frame(width: 70, height: 70)
                                    .position(x: positions[positionBlue][0], y: positions[positionBlue][1])
                                Text("\(Infos.scorePlayer1)")
                                    .position(x: positions[positionBlue][0], y: positions[positionBlue][1])
                                    .bold()
                                    .foregroundColor(.white)
                                    .onReceive(timer) { _ in
                                        if (blueCircle == false || whiteCircle == false) {
                                            print("t'asa perdu")
                                        }
                                    }
                                    .onReceive(timer2) { _ in
                                        test -= 1
                                        if (test <= 0) {
                                            test = 0
                                            endGame = true
                                        }
                                    }
                            }
                        }
                        ForEach(0..<Int.random(in: 1...1), id: \.self) { _ in
                                ZStack {
                                    
                                    Circle()
                                        .onTapGesture {
                                            whiteCircle = true
                                        }
                                        .foregroundColor(.gray)
                                        .frame(width: 70, height: 70)
                                        .position(x: positions2[positionWhite][0], y: positions2[positionWhite][1])
                                    Text("\(Infos.scorePlayer2)")
                                        .position(x: positions2[positionWhite][0], y: positions2[positionWhite][1])
                                        .bold()
                                        .foregroundColor(.white)

                                }
                        }
                        
                        if (blueCircle == true) {
                            Text("")
                                .onAppear() {
                                    blueCircle = false
                                    Infos.scorePlayer1 = Infos.scorePlayer1 + 1
                                    positionBlue = Int(CGFloat.random(in:0...16))
                                }
                        }
                        
                        if (whiteCircle == true) {
                            Text("")
                                .onAppear() {
                                    whiteCircle = false
                                    Infos.scorePlayer2 = Infos.scorePlayer2 + 1
                                    positionWhite = Int(CGFloat.random(in:0...16))
                                }
                        }
                    }.background(
                        Image("Illusion")
                            .resizable()
                    )
                    .ignoresSafeArea()
                }
            }
            NavigationLink("", destination:  EndMultiView(), isActive: $endGame)
            .navigationBarHidden(true)
        }
    }
}

struct MultiGameView_Previews: PreviewProvider {
    static var previews: some View {
        MultiGameView()
    }
}

