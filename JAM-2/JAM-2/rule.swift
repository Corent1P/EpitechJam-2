//
//  help.swift
//  JAM-2
//
//  Created by Charlotte Menet on 25/03/2023.
//

import SwiftUI

struct rule: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                title()
                para_rule()
                    
            }
            
        }
    }
}

struct rule_Previews: PreviewProvider {
    static var previews: some View {
        rule()
    }
}

struct title: View {
    var body: some View {
        Text("Rule of the Game")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.top, -300.0)
    }
}

struct para_rule: View {
    var body: some View {
        Text("The game is simple, juste press the two keys you see on the screen at the same time")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding(.top, -200.0)
    }
}
