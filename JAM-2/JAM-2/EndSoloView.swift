//
//  EndMultiView.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import SwiftUI

struct EndSoloView: View {
    @EnvironmentObject var Infos:infos
    var body: some View {

        ZStack {
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                Text("WINNER'S \(Infos.nameplayerSolo)")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
        
                Text("------")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.nameplayerSolo)'S SCORE")
                    .font(.system(size: 36))
                    .opacity(0.7)
                    .italic()
                    .bold()
                    .opacity(0.8)
                    .scaleEffect(1.0, anchor: .center)
                    .font(.title)
                    .padding()
                Text("\(Infos.scorePlayerSolo)")
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

struct EndSoloView_Previews: PreviewProvider {
    static var previews: some View {
        EndMultiView()
    }
}
