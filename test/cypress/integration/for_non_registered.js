describe('Non-registered users', function () {
  beforeEach(() => {
    cy.app('clean')

    // using scenarios
    // cy.appScenario('mixed_tasks_status')

    // using factory bot
    cy.appFactories([
      ['create_list', 'user_with_todos', 3]
    ])
  })

  it('Non-registered user should see login form', function () {
    cy.visit('/')

    cy.contains("Email")
    cy.contains("Password")
  })
})
