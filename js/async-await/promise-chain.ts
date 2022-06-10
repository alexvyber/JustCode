//
// const first = new Promise<number>( (resolve, reject) => { resolve(123) } )
//
// const shit = first
// .then(val => {
//
//   return val * 2
// })
//
// shit.then(val => console.log('t', val))
// shit.catch(err => console.log('err', err))


async function shit() {
  console.log("shit for 10 sec")
    await new Promise( res => setTimeout(res, 10000))
  console.log("Done")
}

console.log("cunt")
shit()
console.log("pussy")
