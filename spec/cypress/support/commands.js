Cypress.Commands.add('login', (email, password) => {
  cy.url().should('include', '/users/sign_in')

  cy.get('[name="user[email]"]').type(email)
  cy.get('[name="user[password]"]').type(password)

  cy.get('input').contains('Log in').click()
})
