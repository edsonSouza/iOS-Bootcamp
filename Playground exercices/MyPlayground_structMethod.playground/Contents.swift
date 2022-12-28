//struct example of video 98 about Structures, Methods and Properties
struct Town{
    
    //Struct properties
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    //Struct methods
    init(name:String, citizens:[String], resources:[String:Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    //Just a example to access struct functions
    func fortify(){
        print("Defences increased!")
    }
}

//example how to use struct
var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconut":100])
var ghostTown = Town(name: "Ghost Town City", citizens: [], resources: ["Tumbleweed":1])

ghostTown.fortify()
