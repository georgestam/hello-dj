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
    bio: "Dimitri Vegas & Like Mike are a Belgian-Greek DJ and record producer duo composed of brothers Dimitri Thivaios and Michael Thivaios. They currently hold the number one spot on DJ Mag.",
    price_hour: 100,
    soundcloud_link: "https://soundcloud.com/dimitrivegasandlikemike"
  },
   {
    dj_name: "Hardwell",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Hardwell_GerardHenninger_Oct2015_rbcgi5.jpg",
    bio: "Hardwell is a Dutch big room house and electro house DJ, record producer and remixer. He was voted the World's No. 1 DJ on DJ Mag in 2013 and again in 2014. Hardwell is known for his sets at major music festivals such as Ultra Music Festival and Tomorrowland.",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Martin Garrix",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/MartinGarrixpressshot_olw66x.jpg",
    bio: "Martin Garrix is a Dutch DJ, record producer and musician. He is currently ranked number 3 on DJ Mag. In 2016, he founded the label STMPD RCRDS months after leaving Spinnin' Records.",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Armin Van Buuren",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Carli_Herme%CC%80s_Unit_C_ytv3xr.jpg",
    bio: "Armin van Buuren is a Dutch DJ, record producer, musician, remixer, pianist and songwriter. Since 2001, Van Buuren has hosted a weekly radio show called A State of Trance, which currently is broadcast to more than 37 million weekly listeners in 84 countries on over 100 FM radio stations.",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Tiësto",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970765/Tiesto1_lem7iq.jpg",
    bio: "Tiëstois a Dutch DJ and record producer. In 1997, he founded the label Black Hole Recordings with Arny Bink, where he released the Magik and In Search of Sunrise CD series.",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "David Guetta",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/med_res_DAVID_GUETTA_by_Ellen_von_Unwerth_NYC_Sept_2014_10-2182_yemtvo.jpg",
    bio: "David Guetta is a French DJ, record producer and remixer. He co-founded Gum Productions with Lisa Dodgson and released his first album, Just a Little More Love, in 2002. Later, he released Guetta Blaster (2004) and Pop Life (2007). Guetta achieved mainstream success with his 2009 album One Love. Guetta has sold over nine million albums and 30 million singles worldwide.",
    price_hour: 100,
    soundcloud_link: ""
  },
   {
    dj_name: "Avicii",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/20130721_hotel023_tmxjzj.jpg",
    bio: "Avicii is a Swedish electronic musician, DJ, remixer and record producer. Avicii was ranked third on DJ Mag in 2012 and 2013 and has been nominated twice for a Grammy Award.",
    price_hour: 100,
    soundcloud_link: ""
  },
     {
    dj_name: "Afrojack",
    picture: "http://res.cloudinary.com/dvgxgsxyc/image/upload/v1471970764/Afrojack_Forget_the_world_by_FotoFloor_ciiemy.jpg",
    bio: "Afrojack is a Dutch DJ, record producer and remixer. In 2014, he released his debut album Forget the World. Afrojack regularly features in top 10 of DJ Mag Top 100 DJs.",
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

