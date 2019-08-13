describe('Non-registered users', function () {
  before(() => {
    cy.appScenario('mixed_tasks_status')
  })

  it('Non-registered user should see login form', function () {
    cy.visit('/')

    cy.contains("Email")
    cy.contains("Password")
  })
})
