# frozen_string_literal: true

module TestHelpers
  class LoginAs
    include Warden::Test::Helpers

    def self.run(email)
      new.run(email)
    end

    def run(email)
      u = User.find_by(email: email)
      login_as(u, scope: :user)
    end
  end
end

TestHelpers::LoginAs.run(command_options)
