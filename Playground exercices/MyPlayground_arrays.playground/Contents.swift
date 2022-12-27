var numbers = [45, 73, 195, 53]
//the challenge was sum the values in the array. The solution was create a new array multiplying the positions of numbers array.

var computerNumber = [numbers[0] * numbers[1],
                      numbers[1] * numbers[2],
                      numbers[2] * numbers[3],
                      numbers[3] * numbers[0]]
print(computerNumber)
