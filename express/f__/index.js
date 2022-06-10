import express from 'express';
import data from './data/mock.json' assert { type: 'json'};

const app = express();
const PORT = 5000;

//Using the public folder at the root (/) of the project
app.use(express.static('public'));

//Using the images folder at the route /images
app.use('/images', express.static('images'));

// .json and .urlencoded
app.use(express.json())
app.post('/item', (req, res) => { 
    console.log(req.body)
    res.send(req.body)
})

//GET
app.get('/', (request, response) => {
    response.json(data);
})

//GET with next()
app.get('/next', (request, response, next) => {
    console.log("Res will be sent by the next func");
    next()
}, (request, response) =>{
    response.send("Second callback")
})

// Get - redirect emthod
app.get("/re", (req, res) => { 
    res.redirect("https://google.com")
})

app.route("/class",)
.get( (req, res) => { 
    res.send("get shit")})
// .get( (res, req) => { throw new Error()} )
.post( (req, res) => res.send("post shit"))
.put( (req,res) => res.send("put shit"))



//GET - download method
app.get('/download', (request, response) => {
    response.download('images/mountains_2.jpeg')
})

let i = 0;
//GET with Routing Parameters
app.get('/class/:id', (request, response)=> {
    //Middleware: Acess the routing parameters
    const studentId = Number(request.params.id); 

    const student = data.filter((el) => el.id === studentId)
    response.send(student);
    i++
    console.log(i)
})

//POST
app.post('/create', (request, response) => {
    response.send('This is a POST request at /create')
})

//PUT
app.put('/edit', (request, response) => {
    response.send('This is a PUT request at /edit')
})

//DELETE
app.delete('/delete', (request, response) => {
    response.send('This is a DELETE request at /delete')
})

app.use((err, req, res, next) => {
    console.error(err.stack)
    res.status(500)
       .send("Shit is broken")
})

app.listen(PORT, () => {
    console.log(`The server is running on port ${PORT}`)
});
