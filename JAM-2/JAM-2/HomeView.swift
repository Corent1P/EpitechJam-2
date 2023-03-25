//
//  HomeView.swift
//  JAM-2
//
//  Created by Athéna Mojzes on 25/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var dowloadAmount = 0.0
    @State private var showProgressView = true
    @State private var selection = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                VStack {
                    Image("Logo-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                }.padding(.bottom, 120)
                VStack {
                    if showProgressView {
                        ProgressView("Chargement des ressources...", value: dowloadAmount, total: 100)
                            .progressViewStyle(CircularProgressViewStyle())
                            .scaleEffect(1.0, anchor: .center)
                    }
                    if showProgressView == false {
                        Text("Tap to play !")
                            .italic()
                            .bold()
                            .frame(maxHeight: UIScreen.main.bounds.height - 220, alignment: .bottom)
                            .opacity(0.5)
                            .scaleEffect(1.0, anchor: .center)
                            .font(.title)
                            .onTapGesture {
                                selection = true
                            }
                    }
                }.frame(maxHeight: UIScreen.main.bounds.height - 220, alignment: .bottom)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            showProgressView = false
                        }
                    }
                NavigationLink("", destination:  Choose_Game(), isActive: $selection)
            }.ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

