# frozen_string_literal: true

User.create(email: 'guest@gmail.com', password: '123456', password_confirmation: '123456', user_type: 'guest')
User.create(email: 'admin@gmail.com', password: '567890', password_confirmation: '567890', user_type: 'admin')
