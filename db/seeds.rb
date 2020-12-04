# frozen_string_literal: true

categories = Category.create!([
                                { title: 'Математика' },
                                { title: 'География' },
                                { title: 'Литература' }
                              ])

tests = Test.create!([
                       { title: 'Счет', level: 0, category_id: categories[0].id },
                       { title: 'Города', level: 1, category_id: categories[1].id },
                       { title: 'Поэты', level: 0, category_id: categories[2].id },
                       { title: 'Писатели', level: 1, category_id: categories[2].id }
                     ])

questions = Question.create!([
                               { body: '2+2?', test_id: tests[0].id },
                               { body: 'Столица РФ?', test_id: tests[1].id },
                               { body: 'Александр Сергеевич?', test_id: tests[2].id },
                               { body: 'Антон Павлович?', test_id: tests[3].id }
                             ])

answers = Answer.create!([
                           { body: '4', question_id: questions[0].id, correct: true },
                           { body: '3', question_id: questions[0].id },
                           { body: '5', question_id: questions[0].id },
                           { body: '6', question_id: questions[0].id },
                           { body: 'Москва', question_id: questions[1].id, correct: true },
                           { body: 'Рязань', question_id: questions[1].id },
                           { body: 'Самара', question_id: questions[1].id },
                           { body: 'Казань', question_id: questions[1].id },
                           { body: 'Пушкин', question_id: questions[2].id, correct: true },
                           { body: 'Гагарин', question_id: questions[2].id },
                           { body: 'Айвазовский', question_id: questions[2].id },
                           { body: 'Бродский', question_id: questions[2].id },
                           { body: 'Чехов', question_id: questions[3].id, correct: true },
                           { body: 'Пушкин', question_id: questions[3].id },
                           { body: 'Гагарин', question_id: questions[3].id },
                           { body: 'Бродский', question_id: questions[3].id }
                         ])

users = User.create!([
                       { login: 'user1' },
                       { login: 'user2' },
                       { login: 'user3' }
                     ])

user_tests = UserTest.create!([
                                { user_id: 1, test_id: tests[0].id },
                                { user_id: 1, test_id: tests[1].id },
                                { user_id: 2, test_id: tests[0].id },
                                { user_id: 3, test_id: tests[0].id },
                                { user_id: 3, test_id: tests[1].id },
                                { user_id: 3, test_id: tests[2].id },
                                { user_id: 3, test_id: tests[3].id }
                              ])
