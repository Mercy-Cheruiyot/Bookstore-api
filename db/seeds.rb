# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Users ...."
users=User.create!([
    {username:"Salt",
    password:"password",
    fullname:"Salt",
    email:"a@gmail.com",
    image:"https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg"
},
{
    username:"Admin",
    password:"password",
    fullname:"Admin",
    email:"xxxx@gmail.com",
    image:" https://i.pinimg.com/736x/ba/6c/52/ba6c52e4d4b5c485aa3f92696d128baf.jpg"
},
{
    username:"User",
    password:"password",
    fullname:"User",
    email:"xy@gmail.com",
    image:"https://yohohindi.com/wp-content/uploads/2022/08/1-girls-dp-yohohindi.com_-1024x1024.jpeg"
}

])

puts "Creating authors..."

authors=["https://m.media-amazon.com/images/S/amzn-author-media-prod/m0ubeb0157t9e7j7t750ggrpms._SY600_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShTiEZ41cENqlU8SSYUd3yK6EbNI8grUp02g&usqp=CAU",
    "https://i.guim.co.uk/img/media/b8a66f49fb0eb9d81fe90d28dc337a2bb345f727/0_1328_4303_2580/master/4303.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=fe8b2eccf98eeca7cc83947b27b3ce0e",
    " https://cdn.punchng.com/wp-content/uploads/2022/10/18065702/41OHQTpwW7L._SY400_-197x300.jpg",
    "https://kbimages1-a.akamaihd.net/328ae25e-9449-464f-b67b-3a9474a16d44/353/569/90/False/get-your-s-h-i-t-together.jpg",
    "https://books.forbes.com/wp-content/uploads/2022/07/90106f31-8c96-40e6-b0ca-934fef74ab69-2-819x1024.jpg",
    "https://m.media-amazon.com/images/S/amzn-author-media-prod/m0ubeb0157t9e7j7t750ggrpms._SY600_.jpg",
    "https://m.media-amazon.com/images/S/amzn-author-media-prod/m0ubeb0157t9e7j7t750ggrpms._SY600_.jpg",
    "https://nuriakenya.com/wp-content/uploads/2022/04/things-they-lost-okwiri-oduor-nuriakenya.jpg",
    "https://img.theculturetrip.com/wp-content/uploads/2015/05/the-memory-of-love-aminatta-forna-book-cover.jpg"
]
authors.length.times do |i|
Author.create!(
        name:Faker::Book.author,
        genre:['Comic','Romance','Anime','Financial'].sample,
        image:authors[i])
    end


puts "Creating books..."
# 10.times do
# Book.create!(
#         title:Faker::Book.title,
#         author_id: rand(1..4),
#         publication_year:2008,
#         # Faker::Number.between(1918,2022),
#         genre:['Comic','Romance','Anime','Financial'].sample,
#         user_id:rand(1..2),
#         image:"https://static.vecteezy.com/system/resources/thumbnails/006/115/725/small/black-and-white-open-book-logo-illustration-on-white-background-free-vector.jpg")
# end


books=Book.create!([
    {
        title:  "Think and Grow Rich",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Financial",
        user_id:rand(1..2),
        image:"https://cdn.lifehack.org/wp-content/uploads/2019/07/think-and-grow-rich.jpg"
    },
    {
        title:  "The Subtle-Art-Of-not-giving-a-f",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Financial",
        user_id:rand(1..2),
        image:"https://cdn.lifehack.org/wp-content/uploads/2019/07/the-subtle-art-of-not-giving-a-f.jpg"
    },
    {
        title:  "Make your Bed",
        author_id:rand(1..4),
        publication_year:2008,
        genre:  "Romance",
        user_id:rand(1..2),
        image:"https://cdn.lifehack.org/wp-content/uploads/2019/07/make-your-bed.jpg"
    },
    {
        title:  "Bleach",
        author_id:rand(1..4),
        publication_year:2020,
        genre:  "Anime",
        user_id:rand(1..2),
        image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2MyJnjdlV-HXBqZKehvFMwo0vg29_IBhbHw&usqp=CAU"
    },
    {
        title:  "The Atlas",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Comic",
        user_id:rand(1..2),
        image:"https://ik.imagekit.io/panmac/tr:f-auto,di-placeholder_portrait_aMjPtD9YZ.jpg,w-171/edition/9781529095258.jpg"
    },
    {
        title:  "A Lot Like Adios",
        author_id:rand(1..4),
        publication_year:2010,
        genre:  "Romance",
        user_id:rand(1..2),
        image:"https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1626954021-51dv560mBTS._SL500_.jpg"
    },
    {
        title:  "Devil's Submission",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Comic",
        user_id:rand(1..2),
        image:"https://s3.amazonaws.com/romance.io/books/large/58957cdb0d3299c6e0485017.jpg"
    },
    {
        title:  "The dating Duke",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Romance",
        user_id:rand(1..2),
        image:"https://s3.amazonaws.com/romance.io/books/large/58c3a29b0d3299c6e05d47e7.jpg"
        
    },
    {
        title:  "Get Your Shit Together",
        author_id:rand(1..4),
        publication_year:2001,
        genre:  "Romance",
        user_id:rand(1..2),
        image:"https://kbimages1-a.akamaihd.net/328ae25e-9449-464f-b67b-3a9474a16d44/353/569/90/False/get-your-s-h-i-t-together.jpg"
        
    }
])
puts "Seeding done!"