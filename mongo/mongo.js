
const mongoose = require('mongoose')

const connect = () => {
    return mongoose.connect('mongodb://localhost:27017/whatever')
}

const student = new mongoose.Schema({
    first: String
    
})

const Student = mongoose.model('student', student)

connect()
.then(async conn => {
    const student = await Student.create({first: "JAFAR"})
    console.log(student)

})
.catch(e => {console.error(e)})

