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
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Hardwell_GerardHenninger_Oct2015_rbcgi5.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Martin Garrix",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/MartinGarrixpressshot_olw66x.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Armin Van Buuren",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Carli_Herme%CC%80s_Unit_C_ytv3xr.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Tiësto",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/Tiesto1_lem7iq.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "David Guetta",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/med_res_DAVID_GUETTA_by_Ellen_von_Unwerth_NYC_Sept_2014_10-2182_yemtvo.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Avicii",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/20130721_hotel023_tmxjzj.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
     {
    dj_name: "Afrojack",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Afrojack_Forget_the_world_by_FotoFloor_ciiemy.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
  {
    dj_name: "Skrillex",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/SKRILL_1-general_Jason-Nocito_e6aixi.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Steve Aoki",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/Screen_Shot_2015-09-28_at_10_psiqnq.png",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Calvin Harris",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Calvin_Harris_-_General_Press_Shot_grfrab.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Oliver Heldens",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/OliverHeldens_7578-copy_xjeoqk.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Alesso",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/alesso-presspic-web_onkr1r.png",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "W & W",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/603416_cyfxps.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Dash Berlin",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/DashBerlin_fdn3nf.jpg",
    bio: "",
    price_hour: 100,
    soundcloud_link: ""
  }

  ]

  djs.each { |dj| Profile.create(dj) }

