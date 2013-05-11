Project.create(name: "project 1")
Project.create(name: "project 2")
Project.create(name: "project 3")
Project.create(name: "project 4")

Task.create(name: "task 1", project_id: 1, complete: true, priority: 1)
Task.create(name: "task 2", project_id: 1, complete: false, priority: 2)
Task.create(name: "task 3", project_id: 1, complete: true, priority: 3)
Task.create(name: "task 4", project_id: 1, complete: false, priority: 4)
Task.create(name: "task 5", project_id: 1, complete: true, priority: 1)
Task.create(name: "task 6", project_id: 1, complete: false, priority: 2)

Task.create(name: "task 1", project_id: 2, complete: false, priority: 3)
Task.create(name: "task 2", project_id: 2, complete: false, priority: 4)
Task.create(name: "task 3", project_id: 2, complete: false, priority: 5)
Task.create(name: "task 7", project_id: 2, complete: false, priority: 3)
Task.create(name: "task 8", project_id: 2, complete: false, priority: 4)
Task.create(name: "task 9", project_id: 2, complete: false, priority: 5)

Task.create(name: "task 1", project_id: 3, complete: false, priority: 2)
Task.create(name: "task 2", project_id: 3, complete: false, priority: 4)
Task.create(name: "task 3", project_id: 3, complete: false, priority: 6)
Task.create(name: "task 10", project_id: 3, complete: false, priority: 8)
Task.create(name: "task 11", project_id: 3, complete: false, priority: 1)
Task.create(name: "task 12", project_id: 3, complete: false, priority: 9)

Task.create(name: "task 1", project_id: 4, complete: false, priority: 1)
Task.create(name: "task 2", project_id: 4, complete: false, priority: 3)
Task.create(name: "task 3", project_id: 4, complete: false, priority: 5)
Task.create(name: "task 13", project_id: 4, complete: false, priority: 7)
Task.create(name: "task 14", project_id: 4, complete: false, priority: 8)
Task.create(name: "task 15", project_id: 4, complete: false, priority: 9)

User.create(first_name: "Matz")
User.create(first_name: "Yehuda", last_name: "Katz")
User.create(first_name: "DHH")
User.create(first_name: "Jose", last_name: "Valim")
User.create(first_name: "Dr", last_name: "Nic")
User.create(first_name: "John", middle_initial: "A", last_name: "Nunemaker")
User.create(first_name: "Aaron", middle_initial: "B", last_name: "Patterson")
User.create(first_name: "Avdi", middle_initial: "C", last_name: "Grimm")