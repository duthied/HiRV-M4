//
//  ContentView.swift
//  HiRV 4
//
//  Created by Devlon on 2022-01-23.
//

import SwiftUI

struct ContentView: View {
  
  var background: Color = Color.black
  var valBackground: Color = Color.blue
  var valForeColor: Color = Color.black
  var lblForeGround: Color = Color.white
  
  var body: some View {
    
    ZStack {
      
      // background
      background.ignoresSafeArea(.all)
      
      VStack(alignment: .leading) {
        
        hrvView
        calBurnView
        restingHeartRateView
                
        ScrollView(showsIndicators: true) {
          // TODO: replace with a loop/wrapper function
          getActivityView(title: "Activity one", date: Date())
          getActivityView(title: "Activity two", date: Date())
          getActivityView(title: "Activity three", date: Date())
          getActivityView(title: "Activity four", date: Date())
          getActivityView(title: "Activity five", date: Date())
          getActivityView(title: "Activity six", date: Date())
        }  // end scrollview
        
        // footer
        HStack{
          Button {
            // TODO: action
          } label: {
            Text("refresh data".uppercased())
              .font(.title2)
              .foregroundColor(.white)
              .padding(.horizontal, 20)
              .padding(.vertical, 5)
              .frame(width: 320, height: 30, alignment: .center)
              .background(.blue)
              .cornerRadius(20)
          }
        }
      } // end vstack
    } // end zstack
  }
  
  func getActivityView(title: String, date: Date) -> some View {
    
    let lblForeGround: Color = Color.white

    let icon: String = "figure.stand"
    
    return VStack(alignment: .center) {
      
      HStack {
        Image(systemName: icon)
          .font(.title)
          .foregroundColor(lblForeGround)
        
        VStack(alignment: .leading) {
          Text(title)
            .foregroundColor(lblForeGround)
          Text(date.formatted())
            .font(.caption)
            .foregroundColor(lblForeGround)
        }.frame(width: 275, height: 50, alignment: .leading)
        
      } // end hstack
      .padding(.all, 10)
      .frame(maxWidth: 320, maxHeight: 45, alignment: .leading)
      .background(.purple)
      .cornerRadius(10)
    }  // end vstack
  }

  var restingHeartRateView: some View {
    
    let valBackground: Color = Color.blue
    let valForeColor: Color = Color.black
    let lblForeGround: Color = Color.white
    
    return HStack(alignment: .center) {
      Text("50ms")
        .padding(.all, 10)
        .font(.largeTitle)
        .foregroundColor(valForeColor)
        .background(valBackground)
        .cornerRadius(10)
        .frame(width: 120)
      
      Image(systemName: "heart.fill")
        .font(.largeTitle)
        .foregroundColor(Color.red)
      
      Text("Resting Heart Rate")
        .font(.largeTitle)
        .foregroundColor(lblForeGround)
        .frame(maxWidth: .infinity, alignment: .leading)
    } // hstack
  }
  
  var calBurnView: some View {
    
    let valBackground: Color = Color.blue
    let valForeColor: Color = Color.black
    let lblForeGround: Color = Color.white
    
    return HStack(alignment: .center) {
      Text("12345")
        .padding(.all, 10)
        .font(.largeTitle)
        .foregroundColor(valForeColor)
        .background(valBackground)
        .cornerRadius(10)
        .frame(width: 120)
      
      Image(systemName: "figure.walk")
        .font(.largeTitle)
        .foregroundColor(lblForeGround)
      
      Text("Calories Burned")
        .font(.largeTitle)
        .foregroundColor(lblForeGround)
        .frame(maxWidth: .infinity, alignment: .leading)
    } // hstack
  }
  
  var hrvView: some View {
    
    let valBackground: Color = Color.blue
    let valForeColor: Color = Color.black
    let lblForeGround: Color = Color.white
    
    return HStack(alignment: .center) {
      Text("0.00")
        .padding(.all, 10)
        .font(.largeTitle)
        .foregroundColor(valForeColor)
        .background(valBackground)
        .cornerRadius(10)
        .frame(maxWidth: 120)
      
      Image(systemName: "heart.fill")
        .font(.largeTitle)
        .foregroundColor(lblForeGround)
      
      Text("HRV")
        .font(.largeTitle)
        .foregroundColor(lblForeGround)
        .frame(maxWidth: .infinity, alignment: .leading)
    } // hstack
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
