# frozen_string_literal: true

categories = Category.create!([
  { title: 'Математика' },
  { title: 'География' },
  { title: 'Литература' }
])

tests = Test.create!([
  { title: 'Счет', level: 0, category_id: 1 },
  { title: 'Города', level: 1, category_id: 2 },
  { title: 'Поэты', level: 0, category_id: 3 },
  { title: 'Писатели', level: 1, category_id: 3 }
])

questions = Question.create!([
  { body: '2+2?', test_id: 1 },
  { body: 'Столица РФ?', test_id: 2 },
  { body: 'Александр Сергеевич?', test_id: 3 },
  { body: 'Антон Павлович?', test_id: 4 }
])

answers = Answer.create!([
  { body: '4', question_id: 1, correct: true },
  { body: '3', question_id: 1 },
  { body: '5', question_id: 1 },
  { body: '6', question_id: 1 },
  { body: 'Москва', question_id: 2, correct: true },
  { body: 'Рязань', question_id: 2 },
  { body: 'Самара', question_id: 2 },
  { body: 'Казань', question_id: 2 },
  { body: 'Пушкин', question_id: 3, correct: true },
  { body: 'Гагарин', question_id: 3 },
  { body: 'Айвазовский', question_id: 3 },
  { body: 'Бродский', question_id: 3 },
  { body: 'Чехов', question_id: 4, correct: true },
  { body: 'Пушкин', question_id: 4 },
  { body: 'Гагарин', question_id: 4 },
  { body: 'Бродский', question_id: 4 }
])

users = User.create!([
  { login: 'user1' },
  { login: 'user2' },
  { login: 'user3' }
])

user_tests = UserTest.create!([
  { user_id: 1, test_id: 1 },
  { user_id: 1, test_id: 2 },
  { user_id: 2, test_id: 1 },
  { user_id: 3, test_id: 1 },
  { user_id: 3, test_id: 2 },
  { user_id: 3, test_id: 3 },
  { user_id: 3, test_id: 4 }
])

