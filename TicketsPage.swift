import SwiftUI
import MapKit

// Model for Cinema data
struct Cinema: Identifiable {
    let id = UUID() // Unique identifier for each cinema
    let name: String // Name of the cinema
    let coordinate: CLLocationCoordinate2D // Coordinate of the cinema location
}

// Main view for the Tickets Page
struct TicketsPage: View {
    @State private var isFullScreen = false // State to toggle between full screen and regular map view
    
    // List of cinemas
    let cinemas = [
        Cinema(name: "Prince Charles Cinema", coordinate: CLLocationCoordinate2D(latitude: 51.5114, longitude: -0.1302)),
        Cinema(name: "BFI SouthBank", coordinate: CLLocationCoordinate2D(latitude: 51.5069, longitude: -0.1151)),
        Cinema(name: "Electric Cinema", coordinate: CLLocationCoordinate2D(latitude: 51.515432, longitude: -0.204926)),
        Cinema(name: "Lexi Cinema", coordinate: CLLocationCoordinate2D(latitude: 51.5375, longitude: -0.2224)),
        Cinema(name: "PeckhamPlex", coordinate: CLLocationCoordinate2D(latitude: 51.4707, longitude: -0.0683))
    ]

    var body: some View {
        VStack {
            // Toggle between full screen and regular map view
            if isFullScreen {
                FullScreenMapView(isFullScreen: $isFullScreen, cinemas: cinemas)
            } else {
                RegularMapView(isFullScreen: $isFullScreen, cinemas: cinemas)
            }
        }
    }
}

// View for the regular map with additional UI elements
struct RegularMapView: View {
    @Binding var isFullScreen: Bool // Binding to control full screen state
    let cinemas: [Cinema] // List of cinemas
    
    // State variables for film data and selected cinema
    @State private var filmdata = ScheduleData1.examples()
    @State private var selectedCinema: String? = nil
    @State private var showOptions = false
    @State private var bfidata = DataBfi.examples()
    @State private var selectedDate = Date()
    @State private var isLeftArrowHovered = false
    @State private var isRightArrowHovered = false
    @State private var selection = "Select a cinema"
    
    let cinemaNames = ["Prince Charles Cinema", "BFI SouthBank", "Electric Cinema"]

    var body: some View {
        VStack {
            ScrollView {
                // Section for "Now showing" text
                Text("Now showing:")
                    .font(.title2)
                    .padding(.bottom, 10)
                
                // Map view with toggle button for full screen
                ZStack {
                    MapView(cinemas: cinemas)
                        .frame(height: 300)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                isFullScreen.toggle()
                            }) {
                                Image(systemName: "arrow.up.left.and.arrow.down.right")
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                            .padding()
                        }
                        Spacer()
                    }
                }
                
                // Section for date navigation and cinema picker
                VStack {
                    HStack {
                        Button(action: {
                            selectedDate = Calendar.current.date(byAdding: .day, value: -1, to: selectedDate) ?? selectedDate
                        }) {
                            Image(systemName: isLeftArrowHovered ? "arrowshape.backward.fill" : "arrowshape.left")
                                .padding(.leading, 10)
                                .onHover { hovering in
                                    isLeftArrowHovered = hovering
                                }
                        }
                        
                        Spacer()
                        
                        Text(selectedDate, format: .dateTime.day().month().year())
                            .padding()
                        
                        Spacer()
                        
                        Button(action: {
                            selectedDate = Calendar.current.date(byAdding: .day, value: 1, to: selectedDate) ?? selectedDate
                        }) {
                            Image(systemName: isRightArrowHovered ? "arrowshape.backward.fill" : "arrowshape.right")
                                .padding(.trailing, 5)
                                .onHover { hovering in
                                    isRightArrowHovered = hovering
                                }
                        }
                    }
                    
                    // Cinema picker and displaying selected cinema information
                    VStack {
                        Picker(selection: $selectedCinema, label: pickerLabel) {
                            ForEach(cinemaNames, id: \.self) { cinema in
                                Text(cinema).tag(cinema as String?)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.blue, lineWidth: 1)
                        )
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        // Display information based on the selected cinema
                        if let selectedCinema = selectedCinema {
                            switch selectedCinema {
                            case "Prince Charles Cinema":
                                VStack {
                                    ForEach(filmdata) { filmdata in
                                        ScheduleData(film: filmdata)
                                    }
                                }
                            case "BFI SouthBank":
                                ScrollView {
                                    VStack {
                                        ForEach(bfidata) { bfidata in
                                            DataBfiRow(bfi: bfidata)
                                        }
                                    }
                                }
                            case "Electric Cinema":
                                Text("Electric Cinema is one of the oldest working cinemas in the UK.")
                                    .padding()
                            default:
                                Text("Cinema information not available.")
                                    .padding()
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
    
    // Label for the cinema picker
    private var pickerLabel: some View {
        HStack {
            Text(selectedCinema ?? "Select a Cinema")
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(.black)
        }
        .padding()
    }
}

// View for the full screen map
struct FullScreenMapView: View {
    @Binding var isFullScreen: Bool // Binding to control full screen state
    let cinemas: [Cinema] // List of cinemas

    var body: some View {
        ZStack {
            MapView(cinemas: cinemas)
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        isFullScreen.toggle()
                    }) {
                        Image(systemName: "arrow.down.right.and.arrow.up.left")
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

// View for displaying the map with cinema annotations
struct MapView: View {
    let cinemas: [Cinema] // List of cinemas

    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.509865, longitude: -0.118092),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )), annotationItems: cinemas) { cinema in
            MapAnnotation(coordinate: cinema.coordinate) {
                VStack {
                    Text(cinema.name)
                        .font(.caption)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    Image(systemName: "building.columns")
                        .foregroundColor(.red)
                }
            }
        }
    }
}

// Preview for the TicketsPage view
struct TicketsPage_Previews: PreviewProvider {
    static var previews: some View {
        TicketsPage()
    }
}
