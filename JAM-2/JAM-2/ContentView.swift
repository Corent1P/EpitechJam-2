//
//  ContentView.swift
//  JAM-2
//
//  Created by Killian Desserich on 24/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<Int.random(in: 1...2), id: \.self) { _ in
                    let radius = CGFloat.random(in: 10...30)
                    let x = CGFloat.random(in: radius...geometry.size.width - radius)
                    let y = CGFloat.random(in: radius...geometry.size.height - radius)
                    Circle()
                        .onTapGesture {
                            print("soala")
                        }
                        .foregroundColor(.blue)
                        .frame(width: radius * 2, height: radius * 2)
                        .position(x: x, y: y)
                }
            }
        }
//        Text("Count: \(count)")
//        .onAppear {
//            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
//                // Increment count
//                count += 1
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
