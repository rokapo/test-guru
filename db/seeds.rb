# frozen_string_literal: true

categories = Category.create!([
                                { title: 'Математика' },
                                { title: 'География' },
                                { title: 'Литература' }
                              ])

users = User.create!([
                       { login: 'user1' },
                       { login: 'user2' },
                       { login: 'user3' }
                     ])

tests = Test.create!([
                       { title: 'Счет', level: 0, category: categories[0], author: users[0] },
                       { title: 'Города', level: 1, category: categories[1], author: users[0] },
                       { title: 'Поэты', level: 0, category: categories[2], author: users[0] },
                       { title: 'Писатели', level: 1, category: categories[2], author: users[0] }
                     ])

questions = Question.create!([
                               { body: '2+2?', test: tests[0] },
                               { body: 'Столица РФ?', test: tests[1] },
                               { body: 'Александр Сергеевич?', test: tests[2] },
                               { body: 'Антон Павлович?', test: tests[3] }
                             ])

answers = Answer.create!([
                           { body: '4', question: questions[0], correct: true },
                           { body: '3', question: questions[0] },
                           { body: '5', question: questions[0] },
                           { body: '6', question: questions[0] },
                           { body: 'Москва', question: questions[1], correct: true },
                           { body: 'Рязань', question: questions[1] },
                           { body: 'Самара', question: questions[1] },
                           { body: 'Казань', question: questions[1] },
                           { body: 'Пушкин', question: questions[2], correct: true },
                           { body: 'Гагарин', question: questions[2] },
                           { body: 'Айвазовский', question: questions[2] },
                           { body: 'Бродский', question: questions[2] },
                           { body: 'Чехов', question: questions[3], correct: true },
                           { body: 'Пушкин', question: questions[3] },
                           { body: 'Гагарин', question: questions[3] },
                           { body: 'Бродский', question: questions[3] }
                         ])

user_tests = UserTest.create!([
                                { user_id: 1, test: tests[0] },
                                { user_id: 1, test: tests[1] },
                                { user_id: 2, test: tests[0] },
                                { user_id: 3, test: tests[0] },
                                { user_id: 3, test: tests[1] },
                                { user_id: 3, test: tests[2] },
                                { user_id: 3, test: tests[3] }
                              ])
