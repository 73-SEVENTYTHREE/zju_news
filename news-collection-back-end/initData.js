const fs = require('fs')
const path = require('path')
const process = require('child_process')
const sqlQuery = require('./mysql')
const table_names = ['cab', 'caefs', 'cas', 'cbeis', 'ccea', 'cec', 'ced', 'cers', 'che', 'chem', 'cls', 'cmic', 'cmm',
    'cps', 'cs', 'cse', 'cst', 'doe', 'ee', 'ghls', 'gs', 'intl', 'isee', 'marx', 'math', 'me', 'mse', 'oc', 'opt', 'physics',
    'polymer', 'psych', 'saa', 'sis', 'soaa', 'som', 'spa', 'srrsh', 'womanhospital', 'z2hospital', 'ch', 'zibs', 'zje', 'zju4h',
    'zjuch', 'zjui', 'zjuss', 'zy91']

fs.readdir('./application', async (err, files) => {
    let executeFile = []
    files.forEach(item => {
        if(item !== 'mysql.py' && item !== 'requirements.txt' && item !== '.DS_Store' && item !== '.idea' && item !== '__pycache__')
            executeFile.push(item)
    })
    for(let i = 0, length = table_names.length; i < length; i++){
        const sql = `truncate table ${table_names[i]}`
        sqlQuery(sql, (data) => {
            console.log(`${table_names[i]}已被清空`)
        }, "zju")
    }
    setTimeout(() => {
        for(let i = 0, length = executeFile.length; i < length; i++) {
            try{
                const stdout = process.execSync (`python3 ${path.resolve(__dirname, 'application', executeFile[i])}`,{encoding: 'utf8'});
                console.log(stdout)
            }catch (e) {
                console.log(e)
            }
        }
    }, 10000)
})
