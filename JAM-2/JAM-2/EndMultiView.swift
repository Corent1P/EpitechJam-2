//
//  EndMultiView.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import SwiftUI

struct EndMultiView: View {
    @EnvironmentObject var Infos:infos
    var body: some View {

        ZStack {
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                if (Infos.scorePlayer1 > Infos.scorePlayer2) {
                    Text("WINNER'S \(Infos.namePlayer1)")
                        .font(.system(size: 36))
                        .opacity(0.7)
                        .italic()
                        .bold()
                        .opacity(0.8)
                        .scaleEffect(1.0, anchor: .center)
                        .font(.title)
                        .padding()
                } else {
                    Text("WINNER'S \(Infos.namePlayer2)")
                        .font(.system(size: 36))
                        .opacity(0.7)
                        .italic()
                        .bold()
                        .opacity(0.8)
                        .scaleEffect(1.0, anchor: .center)
                        .font(.title)
                        .padding()
                }
                Text("------")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.namePlayer1)'S SCORE")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.scorePlayer1)")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.5)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                Text("------")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.namePlayer2)'S SCORE")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.scorePlayer2)")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.5)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
            }
        }
        .navigationBarHidden(true)
    }
}

struct EndMultiView_Previews: PreviewProvider {
    static var previews: some View {
        EndMultiView()
    }
}
