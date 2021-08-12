const os = require('os')

const { freemem, totalmem} = os
const log = require("./logger")

setInterval(() => { // Ficar atualizando o resultado de 1 em 1 segundo

    const total = parseInt(totalmem() / 1024 / 1024) // Total de memória
    const mem = parseInt(freemem() / 1024 / 1024) // Memória Livre
    const percents = parseInt((mem / total) * 100) // Percentual de memória sendo usado
    
    const stats = {
        free: `${mem} MB`,
        total: `${total} MB`,
        usage: `${percents}%`
    }
    
    console.clear()
    console.log("==== PC STATS ==== ")
    console.table(stats)

    log("Rodando...")

}, 1000)

