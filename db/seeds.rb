# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profiles.destroy_all

djs = [
  {
    dj_name: "Dimitri Vegas & Like Mike",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/DVLM_lyze3t.png",
    bio: "The iconic Belgian party has itself grown over the past decade to become one of the world’s most popular events, though it was in 2010 when brothers Dimitri and Michael Thivaios were first selected to pen the festival’s anthem. World domination slowly but surely followed, for both the brothers and the festival.",
    price_hour: 100,
    soundcloud_link: "https://soundcloud.com/dimitrivegasandlikemike"
  },
   {
    dj_name: "Hardwell",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Martin Garrix",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Armin Van Buuren",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Tiësto",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "David Guetta",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Avicii",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
     {
    dj_name: "Afrojack",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
  {
    dj_name: "Skrillex",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Steve Aoki",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Calvin Harris",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Oliver Heldens",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Alesso",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "W & W",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Dash Berlin",
    picture: "",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  }

  ]

  djs.each { |dj| Profile.create(dj) }

