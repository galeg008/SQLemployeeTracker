const db = require("./connection");
const inquirer = require("inquirer");
const {viewAllDepartments} = require("./departments");

async function viewAllRoles() {
    try {
        const role = await db.query("SELECT * FROM role");
        return role;
    } catch (err) {
        console.log(err);
    }
}

async function addRole() {
    try {
        const department = await viewAllDepartments();
        const {title, salary, department_id} = await inquirer.prompt([
            {
                type: "input",
                name: "title",
                message: "What is the title of the role?",
            },
            {
                type: "input",
                name: "salary", 
                message: "What is the salary of the role?",
            },
            {
                type: "list",
                name: "department_id",
                message: "What is the department ID of the role?",
                choices: department.map((department) => {
                    return {
                        name: department.name,
                        value: department.id,
                    };
                }),
         }
        ]);
        await db.query(
            `INSERT INTO role (title, salary, department_id) VALUES ("${title}", "${salary}", "${department_id}")`,
        );
        const newRole = await viewAllRoles();
        return newRole;
    } catch (err) {
        console.log(err);
    }
}
module.exports = {viewAllRoles, addRole};