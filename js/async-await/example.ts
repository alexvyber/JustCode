
const ex = new Promise<number>( (resolve, reject) => {


  // reject(new Error('failed SHIT'))
} )

ex.then(val => console.log('then', val))
ex.catch(err => console.log('catch', err))
