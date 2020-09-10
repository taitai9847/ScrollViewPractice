//
//  ContentView.swift
//  PracticeScrollView
//
//  Created by 石川太洋 on 2020/09/10.
//  Copyright © 2020 石川太洋. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@State var num: Int = 0
	
	var body: some View {
		VStack {
			NavigationView {
				VStack {
					Text("")
						.navigationBarTitle(Text("ScrollViewSample").font(.subheadline), displayMode: .large)
					VStack {
						ScrollView(.vertical) {
							//Firstの部分ScrollView
							Text("First")
								.font(.title)
								.bold()
								.frame(width: 340, height: 20, alignment: .leading)
							ScrollView(.horizontal) {
								HStack(spacing: 30) {
									ForEach(0..<30) {num in
										//cornerRadiusなし
										FirstCellView(num: num)
											.foregroundColor(Color.orange)
											.border(Color.orange, width: 2)
									}
								}
							}.padding(.leading, 10)
							Spacer().frame(height: 30)
							
							//Secondの部分ScrollView
							Text("Second")
								.font(.title)
								.bold()
								.frame(width: 340, height: 20, alignment: .leading)
							//インジケーター無し
							ScrollView(.horizontal, showsIndicators: false) {
								HStack(spacing: 20) {
									ForEach(0..<30) {num in
										//cornerRadiusありの場合の書き方
										SecondCellView(num: num)
											.foregroundColor(Color.purple)
											.overlay(
												RoundedRectangle(cornerRadius: 50)
													.stroke(Color.purple, lineWidth: 1)
										)
									}
								}
							}.padding(.leading, 10)
							Spacer().frame(height: 30)
							
							//Thirdの部分のScrollView(画像を用いる)
							Text("Third")
								.font(.title)
								.bold()
								.frame(width: 340, height: 20, alignment: .leading)
							ScrollView(.horizontal) {
								HStack(spacing: 20) {
									ForEach(0..<30) {_ in
										ThirdCellView()
									}
								}
							}.padding(.leading, 10)
							
							Spacer().frame(height: 30)
							
							//同じような記述が続く場合はGroupで記述してあげればエラーは起きない
							Group {
								//以下縦スクロール用のサンプル
								Text("sample")
									.font(.title)
									.bold()
									.frame(width: 340, height: 20, alignment: .leading)
								ScrollView(.horizontal) {
									HStack(spacing: 20) {
										ForEach(0..<30) {_ in
											ThirdCellView()
										}
									}
								}.padding(.leading, 10)
								
								Text("sample")
									.font(.title)
									.bold()
									.frame(width: 340, height: 20, alignment: .leading)
								ScrollView(.horizontal) {
									HStack(spacing: 20) {
										ForEach(0..<30) {_ in
											ThirdCellView()
										}
									}
								}.padding(.leading, 10)
								
								
								Text("sample")
									.font(.title)
									.bold()
									.frame(width: 340, height: 20, alignment: .leading)
								ScrollView(.horizontal) {
									HStack(spacing: 20) {
										ForEach(0..<30) {_ in
											ThirdCellView()
										}
									}
								}.padding(.leading, 10)
							}
						}
					}
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
