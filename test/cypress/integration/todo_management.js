const userEmail = "user1@test.com"
const existingTask = "1 hour walk"

describe('Non-registered users', function () {
  before(() => {
    cy.appFixtures()
    cy.login(userEmail)
  })

  it('user should see his todo list', function () {
    cy.visit('/')

    cy.contains(existingTask)
  })
})
