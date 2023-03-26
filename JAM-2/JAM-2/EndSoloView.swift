//
//  EndMultiView.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 25/03/2023.
//

import SwiftUI

struct EndSoloView: View {
    
    @State var GoBackMenu: Bool = false
//    @EnvironmentObject var Infos:infos
    
    var body: some View {

        ZStack {
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Image("BG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                
//                Button {
//                    Infos.$nameplayerSolo = ""
//                    GoBackMenu = true
//                } label: {
//                    Text("Go back to menu")
//                        .font(.system(size: 30))
//                        .shadow(radius: 6, x: -1, y: 1)
//                        .frame(width: 320, height: 68)
//                        .background(Color("Color_Button"))
//                        .foregroundColor(.white)
//                        .bold()
//                }
//                .cornerRadius(16)
//                .shadow(radius: 6, x: -3, y: 3)
            }
        }
        .navigationBarHidden(true)
    }
}

struct EndSoloView_Previews: PreviewProvider {
    static var previews: some View {
        EndSoloView()
    }
}
