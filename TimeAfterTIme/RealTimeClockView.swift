//
//  ContentView.swift
//  TimeAfterTIme
//
//  Created by Vladimir Cezar on 2024.11.28.
//

import SwiftUI

struct RealTimeClockView: View {
  var body: some View {
    TimelineView(.periodic(from: Date(), by: 1)) { context in
      let currentDate = context.date
      let formattedTime = timeFormatter.string(from: currentDate)
      
      VStack {
        Text("Current Time")
          .font(.headline)
        Text(formattedTime)
          .font(.largeTitle)
          .bold()
      }
      .padding()
    }
  }
  
  private var timeFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm:ss"
    return formatter
  }
}

#Preview {
  RealTimeClockView()
}

// Credits
// https://digitalbunker.dev/time-based-view-updates-in-swiftui/

// Docs
// https://developer.apple.com/documentation/swiftui/timelineview
