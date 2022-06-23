# TODO: implement your seeds
User.destroy_all
Tree.destroy_all
# User.create(first_name: "melusine", last_name: "jallet", email: "melu@gmail.com", password: "melu")

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)

Plum = Tree.create!(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_by_year: 5,
  fruits: 'Plum',
  user: john
)
