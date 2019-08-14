const userEmail = "user1@test.com"
const existingTask = "1 hour walk"

const todoList = [
  {
    title: 'My random task',
    completed: false,
  },
  {
    title: 'Another one important thing',
    completed: true,
  },
  {
    title: 'New task',
    completed: false,
  },
]

describe('Todo management', function () {
  beforeEach(() => {
    cy.server()
    cy.route('POST', '**/api/todos').as('createTodo')
    cy.route('GET', '**/api/todos?uid=*', todoList)

    cy.login(userEmail)
  })

  it('user should see his todo list', function () {
    cy.visit('/')

    cy.contains(existingTask)
  })

  it('user should create task successfully', function () {
    cy.visit('/')

    cy.get('[data-cy=newTodo]').type('New task').type('{enter}')
    cy.wait('@createTodo')
    cy.get('li').not('.completed').contains('New task')
  })
})
