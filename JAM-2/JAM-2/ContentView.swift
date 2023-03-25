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
                        ForEach(0..<Int.random(in: 1...1), id: \.self) { _ in
                            Circle()
                                .onTapGesture {
                                    //                                count = Int(CGFloat.random(in:0...16))
                                    print("__C__")
                                    print(count)
                                    print("_____")
                                    blueCircle = true
                                }
                                .foregroundColor(.black)
                                .frame(width: 70, height: 70)
                                .position(x: positions[count][0], y: positions[count][1])
                        }
                        ForEach(0..<Int.random(in: 1...1), id: \.self) { _ in
                            
                            let x = CGFloat.random(in: radius...geometry.size.width - radius)
                            let y = CGFloat.random(in: radius...geometry.size.height - radius)
                            Circle()
                                .onTapGesture {
                                    print("soala")
                                    whiteCircle = true
                                }
                                .foregroundColor(.gray)
                                .frame(width: 70, height: 70)
                                .position(x: positions2[count][0], y: positions2[count][1])
                            
                        }
                        if (blueCircle == true && whiteCircle == true) {
                            Text("")
                                .onAppear() {
                                    makeUIView()
                                }
                        }
                    }.background(
                        Image("Illusion")
                            .resizable()
                    )
                    .ignoresSafeArea()
                }
            }
        }
    }
}

extension ContentView {
    
    func makeUIView()  {
        count = Int(CGFloat.random(in:0...16))
        blueCircle = false
        whiteCircle = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
