import UIKit

var count = 10

var timer = Timer.scheduledTimer(timeInterval: 0.4, invocation: <#T##NSInvocation#>, repeats: true)

func update() {
    if(count > 0) {
        print(count-1)
    }
}
update()
