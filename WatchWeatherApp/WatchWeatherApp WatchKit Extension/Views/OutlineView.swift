//
//  OutlineView.swift
//  WatchWeatherApp WatchKit Extension
//
//  Created by yeekim on 2022/08/11.
//

import SwiftUI

struct OutlineView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 4)
            .padding()
    }
}

struct OutlineView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineView()
    }
}
