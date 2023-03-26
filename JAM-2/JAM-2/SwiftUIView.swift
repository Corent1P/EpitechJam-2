//
//  SwiftUIView.swift
//  JAM-2
//
//  Created by Nathan Sabourdy on 26/03/2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var counter = 0
    @State var runCount: Int = 0
    
    var body: some View {
        
        
        Text("Counter: \(counter)")
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                    self.counter += 1
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
