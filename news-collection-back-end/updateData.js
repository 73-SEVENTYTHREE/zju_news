const process = require('child_process');
const fs = require('fs')
const path = require('path')
const sqlQuery = require('./mysql')
const table_names = require('./tables')

const schedule = require('node-schedule')
const scheduleCronstyle = ()=>{
    //  每天的凌晨12点执行
    schedule.scheduleJob('0 0 0 * * *',()=>{
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
    })
}
scheduleCronstyle()
