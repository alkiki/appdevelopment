
import Foundation
import Foundation
import SwiftUI
//layout to show the selected cinema's screenigns for the day
struct ScheduleData: View {
    let film: ScheduleData1
        @State private var isDescriptionExpanded = false

        var body: some View {
            Link(destination: film.url) {
                VStack {
                    HStack {
                        Image(film.ImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200)
                            .onTapGesture {
                                withAnimation {
                                    isDescriptionExpanded.toggle()
                                }
                            }
                        
                        VStack(alignment: .leading) {
                            Text(film.title)
                                .foregroundColor(.black)
                                .bold()

                            Text(film.description)
                                .foregroundColor(.gray)
                                .lineLimit(isDescriptionExpanded ? nil : 2)
                                .truncationMode(.tail)
                                .onTapGesture {
                                    withAnimation {
                                        isDescriptionExpanded.toggle()
                                    }
                                }
                            
                            if !isDescriptionExpanded {
                                Text("Read more...")
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        withAnimation {
                                            isDescriptionExpanded.toggle()
                                        }
                                    }
                            }
                            Link(destination: film.url){
                                Text(film.time)
                                    .padding(3)
                                    .foregroundColor(.black)
                                    .background(Color(red: 245/255, green: 230/255, blue: 164/255))
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: 500, maxHeight: 600)
                }
            }
            .padding()
        }
}

struct ScheduleData_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleData(film: ScheduleData1.examples()[1])
    }
}
