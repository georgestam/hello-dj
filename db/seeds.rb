# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Profile.destroy_all


djs = [
  {
    dj_name: "Dimitri Vegas & Like Mike",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146118/m52uy1pxrwu5gwwzdlou.png",
    bio: "Dimitri Vegas & Like Mike are a Belgian-Greek DJ and record producer duo composed of brothers Dimitri Thivaios and Michael Thivaios. They currently hold the number one spot on DJ Mag.",
    price_hour: 200000,
    soundcloud_link: "https://soundcloud.com/dimitrivegaslikemike"
  },
   {
    dj_name: "Hardwell",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146119/d63odzqdwa4us8iqtegb.jpg",
    bio: "Hardwell is a Dutch big room house and electro house DJ, record producer and remixer. He was voted the World's No. 1 DJ on DJ Mag in 2013 and again in 2014. Hardwell is known for his sets at major music festivals such as Ultra Music Festival and Tomorrowland.",
    price_hour: 100000,
    soundcloud_link: "https://soundcloud.com/hardwell"
  },
   {
    dj_name: "Martin Garrix",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146120/rqeirwvllcgkvcxomxgd.jpg",
    bio: "Martin Garrix is a Dutch DJ, record producer and musician. He is currently ranked number 3 on DJ Mag. In 2016, he founded the label STMPD RCRDS months after leaving Spinnin' Records.",
    price_hour: 100000,
    soundcloud_link: "https://soundcloud.com/martingarrix"
  },
   {
    dj_name: "Armin Van Buuren",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146121/uwdbhnwwgd0rtf5cqour.jpg",
    bio: "Armin van Buuren is a Dutch DJ, record producer, musician, remixer, pianist and songwriter. Since 2001, Van Buuren has hosted a weekly radio show called A State of Trance, which currently is broadcast to more than 37 million weekly listeners in 84 countries on over 100 FM radio stations.",
    price_hour: 50000,
    soundcloud_link: "https://soundcloud.com/arminvanbuuren"
  },
   {
    dj_name: "Tiësto",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146122/elksnjwbz3op3ggp70nc.jpg",
    bio: "Tiëstois a Dutch DJ and record producer. In 1997, he founded the label Black Hole Recordings with Arny Bink, where he released the Magik and In Search of Sunrise CD series.",
    price_hour: 350000,
    soundcloud_link: "https://soundcloud.com/tiesto"
  },
   {
    dj_name: "David Guetta",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146123/kp2fxcx4jdqozoq3158j.jpg",
    bio: "David Guetta is a French DJ, record producer and remixer. He co-founded Gum Productions with Lisa Dodgson and released his first album, Just a Little More Love, in 2002. Later, he released Guetta Blaster (2004) and Pop Life (2007). Guetta achieved mainstream success with his 2009 album One Love. Guetta has sold over nine million albums and 30 million singles worldwide.",
    price_hour: 350000,
    soundcloud_link: "https://soundcloud.com/davidguetta"
  },
   {
    dj_name: "Avicii",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146124/qsiok5edbwyq0sjsj7ib.jpg",
    bio: "Avicii is a Swedish electronic musician, DJ, remixer and record producer. Avicii was ranked third on DJ Mag in 2012 and 2013 and has been nominated twice for a Grammy Award.",
    price_hour: 250000,
    soundcloud_link: "https://soundcloud.com/aviciiofficial"
  },
     {
    dj_name: "Afrojack",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146125/poufzd7nwcetfkh2yfe8.jpg",
    bio: "Afrojack is a Dutch DJ, record producer and remixer. In 2014, he released his debut album Forget the World. Afrojack regularly features in top 10 of DJ Mag Top 100 DJs.",
    price_hour: 50000,
    soundcloud_link: "https://soundcloud.com/afrojack"
  },
  {
    dj_name: "Skrillex",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146126/onyeljvdbhh7iwntfprc.jpg",
    bio: "Skrillex is an American electronic music producer, DJ, singer and songwriter.",
    price_hour: 50000,
    soundcloud_link: "https://soundcloud.com/skrillex"
  },
   {
    dj_name: "Steve Aoki",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146127/uigzo50ppjybrbwobklh.png",
    bio: "Steven Hiroyuki is an American electro house musician, record producer, and music executive. In 2012, Pollstar designated Aoki as the highest grossing dance artist in North America from tours. He has collaborated with producers and vocalists such as will.i.am, Afrojack, LMFAO, Iggy Azalea, Lil Jon, and Laidback Luke, and is known for his remixes of artists such as Kid Cudi.",
    price_hour: 200000,
    soundcloud_link: "https://soundcloud.com/steveaoki"
  },
   {
    dj_name: "Calvin Harris",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146128/n9wm397u4muefc8p6qow.jpg",
    bio: "Calvin Harris is a Scottish record producer, singer, songwriter and DJ. His debut studio album, I Created Disco, was released in 2007. In 2009, Harris released his second studio album, Ready for the Weekend, which debuted at number one on the UK Albums Chart.",
    price_hour: 350000,
    soundcloud_link: "https://soundcloud.com/calvinharris"
  },
   {
    dj_name: "Oliver Heldens",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146128/tike3lermg1svupjecu8.jpg",
    bio: "Oliver Heldens is a Dutch electronic music producer and DJ from Rotterdam in the Netherlands. He is currently ranked the number one house DJ in the DJ Mag Top 100 DJs.",
    price_hour: 10000,
    soundcloud_link: "https://soundcloud.com/oliverheldens"
  },
   {
    dj_name: "Alesso",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146130/hu43fqwe4pcoprpectez.png",
    bio: "Alesso is a Swedish DJ, record producer and musician. He has worked with numerous EDM artists, including Theo Hutchcraft, Ryan Tedder, Calvin Harris, Usher, David Guetta, and Sebastian Ingrosso. He has also performed at numerous music festivals, including Coachella, Electric Daisy Carnival, and Tomorrowland.",
    price_hour: 10000,
    soundcloud_link: "https://soundcloud.com/alesso"
  },
   {
    dj_name: "W & W",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146131/dc1dgnx39mjicrgwmjtz.jpg",
    bio: "W&W is a Dutch electronic music duo consisting of Willem van Hanegem and Ward van der Harst.",
    price_hour: 10000,
    soundcloud_link: "https://soundcloud.com/wandw"
  },
   {
    dj_name: "Dash Berlin",
    photo: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1472146132/h3mxhehlnkx8tvujeqdn.jpg",
    bio: "Dash Berlin is a Dutch electronic music group created in 2007 by Jeffrey Sutorius, Eelke Kalberg and Sebastiaan Molijn. The front man of the group is the DJ Jeffrey Sutorius, the 10th most popular DJ in the world according to DJ Mag in 2013.",
    price_hour: 10000,
    soundcloud_link: "https://soundcloud.com/dashberlinofficial"
  }

  ]


  i = 0
  djs.each do |dj|
    user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    address: ["TS18 1RH","MK19 6DX","PL33 9AP","BN9 9XE","OX28 6LF","IV49 9AQ","B15 2RU","EH20 9SZ","BT57 8RP","WA3 6GR","IP22 1LJ","LS17 6LJ","LL44 2EA","AB21 9PN","CO8 5LL","DN9 1LG","PH15 2NJ","YO90 1UU"][i])
    i += 1
    photo_url = dj.delete(:photo)
    profile = Profile.new(dj)
    profile.user = user
    profile.remote_photo_url = photo_url
    profile.save!
    puts "Created profile for #{profile.dj_name}"
    end

