u1 = User.create(email: 'guest@gmail.com', password: 'password')

b1 = u1.boards.create(title: 'Tutorial')

l1 = b1.lists.create(title: 'Did you know you can reorder lists by clicking and dragging them?')
l2 = b1.lists.create(title: 'Cards')
l3 = b1.lists.create(title: 'This is a List. You can create more lists using the "Add List..." button on the right.')

c1 = l2.cards.create(title: 'This is a card. You can add cards by using the "Add Card..." button below each list.')
c2 = l1.cards.create(title: 'Cards can also be reordered the same way.')
c3 = l1.cards.create(title: 'You can even drag cards into different lists.')

b1.save
