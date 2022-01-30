//
//  SampleView.swift
//  HowToUseEnvironmentObject
//
//  Created by ramil on 30.01.2022.
//

import SwiftUI

struct SampleView: View {
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
            .environmentObject(DataExample())
    }
}
