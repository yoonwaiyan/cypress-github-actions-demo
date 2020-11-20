/// <reference types="cypress" />

describe('Sign in', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('signs in user with valid credentials', () => {
    cy.login('user@example.com', 'password1234')
    cy.url().should('eq', Cypress.config().baseUrl + '/')
  })

  it('rejects sign in with invalid credentials', () => {
    cy.login('user@example.com', 'password')
    cy.url().should('eq', Cypress.config().baseUrl + '/users/sign_in')
  })
})
