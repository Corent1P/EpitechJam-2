//
//  EndMultiView.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import SwiftUI

struct EndMultiView: View {
    @EnvironmentObject var Infos:infos
    @State var GoBackMenu: Bool = false
    
    
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
                
                Button {
                    Infos.scorePlayer1 = 0
                    Infos.scorePlayer2 = 0
                    Infos.namePlayer1 = ""
                    Infos.namePlayer2 = ""
                    GoBackMenu = true
                } label: {
                    Text("Go back to menu")
                        .font(.system(size: 30))
                        .shadow(radius: 6, x: -1, y: 1)
                        .frame(width: 320, height: 68)
                        .background(Color("Color_Button"))
                        .foregroundColor(.white)
                        .bold()
                }
                .cornerRadius(16)
                .shadow(radius: 6, x: -3, y: 3)
            }
            NavigationLink("", destination:  Choose_Game(), isActive: $GoBackMenu)
        }
        .navigationBarHidden(true)
    }
}

struct EndMultiView_Previews: PreviewProvider {
    static var previews: some View {
        EndMultiView()
    }
}
