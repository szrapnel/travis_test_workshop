# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  firstnames = []
    for i in 0..4
      new_name = 'user'+i.to_s
      firstnames.push new_name
      User.create({email: new_name+'@user.user', firstname: new_name, lastname: i, :password => 'password', :password_confirmation => 'password'})
    end
  firstnames.push 'admin'
  User.create({email:'admin@admin.admin', firstname: 'admin', lastname: 'admin', :password => 'adminadmin', :password_confirmation => 'adminadmin', :admin => true})

  users = User.where({:firstname=>firstnames})
  
  categories_data = [
    {:name=>'cat1'},
    {:name=>'cat2'}
  ]

  categories = []
  categories_data.each do |category_data|
    categories.push Category.find_or_create_by(category_data)
  end

  product_data = [
    {title: 'prod1', description: 'desc1', price: 1.2, category_id: categories[0].id, user_id: users[0].id},
    {title: 'prod2', description: 'desc2', price: 2.4, category_id: categories[1].id, user_id: users[0].id},
    {title: 'prod3', description: 'desc3', price: 3.6, category_id: categories[1].id, user_id: users[0].id}
  ]
   
  products = []
  product_data.each do |product_data|
    products.push Product.find_or_create_by(product_data)
  end

  reviews = [
    {content: 'good product', rating: 2, product_id: products[0].id, user_id: users[0].id},
    {content: 'good product', rating: 3, product_id: products[0].id, user_id: users[1].id},
    {content: 'good product', rating: 5, product_id: products[0].id, user_id: users[2].id},
    {content: 'good product', rating: 2, product_id: products[0].id, user_id: users[3].id},
    {content: 'good product', rating: 3, product_id: products[0].id, user_id: users[4].id},
    {content: 'good product', rating: 5, product_id: products[1].id, user_id: users[0].id},
    {content: 'good product', rating: 2, product_id: products[1].id, user_id: users[1].id}
  ]

  reviews.each do |reviews|
    Review.find_or_create_by(reviews)
  end
