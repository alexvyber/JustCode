function delay (ms) { return new Promise(res => setTimeout(res, ms)) }

const runAsync = async function (cb)  {
    await delay(1000)
    cb('1s')
    await delay(1000)
    cb('2s')
    await delay(1000)
    cb('3s')
}

// runAsync((t) => console.log(t))
