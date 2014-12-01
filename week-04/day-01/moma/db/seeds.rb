Artist.destroy_all
Painting.destroy_all

a = Artist.create({
  name: "Jack Watson-Hamblin",
  dob: "16/09/1993",
  nationality: "Australian"
})

Painting.create({
  title: "Jack's Painting",
  year: "2014",
  url: "http://placekitten.com/500/510",
  artist: a
})