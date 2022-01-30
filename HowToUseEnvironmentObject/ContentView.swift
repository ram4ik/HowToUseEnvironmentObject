//
//  ContentView.swift
//  HowToUseEnvironmentObject
//
//  Created by ramil on 30.01.2022.
//

import SwiftUI

@MainActor class DataExample: ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample()
    
    var body: some View {
        VStack {
            SampleView()
                .padding()
            TextBlockView()
        }
        .environmentObject(data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
