//
//  ContentView.swift
//  JAM-2
//
//  Created by Killian Desserich on 24/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var blueCircle = false
    @State private var whiteCircle = false
    @State private var count = 0
    @State private var count2 = 0
    @State private var test = 3
    @State var loose: Bool = false
    
    @State var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
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
                            .position(x: 200, y: 100)
                        Text("\(test)")
                            .font(.title)
                            .bold()
                            .foregroundColor(.red)
                            .position(x: 200, y: 100)
                        ForEach(0..<Int.random(in: 1...1), id: \.self) { _ in
                            ZStack {
                                Circle()
                                    .onTapGesture {
                                        blueCircle = true
                                    }
                                    .foregroundColor(.black)
                                    .frame(width: 70, height: 70)
                                    .position(x: positions[count][0], y: positions[count][1])
                                Text("\(count2)")
                                    .position(x: positions[count][0], y: positions[count][1])
                                    .bold()
                                    .foregroundColor(.white)
                                    .onReceive(timer) { _ in
                                        if (blueCircle == false || whiteCircle == false) {
                                            print("t'asa perdu")
                                            loose = true
                                            
                                        }
                                    }
                                    .onReceive(timer2) { _ in
                                        test -= 1
                                        if (test <= 0) {
                                            test = 0
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
                                        .position(x: positions2[count][0], y: positions2[count][1])
                                    Text("\(count2)")
                                        .position(x: positions2[count][0], y: positions2[count][1])
                                        .bold()
                                        .foregroundColor(.white)

                                }
                        }
                        if (blueCircle == true && whiteCircle == true) {
                            Text("")
                                .onAppear() {
                                    makeUIView()
                                    count2 = count2 + 1
                                }
                        }
                    }.background(
                        Image("Illusion")
                            .resizable()
                    )
                    .ignoresSafeArea()
                }
            }
            NavigationLink("", destination:  LooseView(), isActive: $loose)
        }
    }
}

extension ContentView {
    
    func makeUIView()  {
        timer.upstream.connect().cancel()
        count = Int(CGFloat.random(in:0...16))
        blueCircle = false
        whiteCircle = false
        if (count2 < 20) {
            timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
            test = 3
        } else {
            timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
            test = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
