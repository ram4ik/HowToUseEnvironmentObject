//
//  TextBlockView.swift
//  HowToUseEnvironmentObject
//
//  Created by ramil on 30.01.2022.
//

import SwiftUI

struct TextBlockView: View {
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(.orange)
                .cornerRadius(9)
            Text("\(data.text) : \(data.counter)")
                .foregroundColor(.white)
        }
        .onTapGesture {
            data.counter += 1
        }
    }
}

struct TextBlockView_Previews: PreviewProvider {
    static var previews: some View {
        TextBlockView()
            .environmentObject(DataExample())
    }
}
