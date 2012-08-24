# encoding: utf-8
Speaker.all.each(&:destroy)

# JANO
jano = Speaker.create first_name: "Jano", last_name: "González", twitter: "janogonzalez", country: "CHILE", company: "HopIn"
jano.bio_en = "Desarrollador, músico aficionado y adicto a las charlas. Ha
creado desde pequeñas aplicaciones web hasta complejas arquitecturas
empresariales, actualmente es el CTO de HopIn (http://hop.in).\n En su tiempo
libre toca música e intenta practicar deportes (sin mucho éxito)."

jano.bio_es = "Desarrollador, músico aficionado y adicto a las charlas. Ha
creado desde pequeñas aplicaciones web hasta complejas arquitecturas
empresariales, actualmente es el CTO de HopIn (http://hop.in).\n En su tiempo
libre toca música e intenta practicar deportes (sin mucho éxito)."

jano.save

pedro = Speaker.create first_name: "Pedro", last_name: "Belo", country: "BRASIL",
twitter: "pedro", company: "Heroku", bio_en: "Pedro's first task in Heroku was to make the online editor's cursor
display properly in Firefox 3. Since then he worked on logging, the
command-line client, refactoring and splitting systems, the pricing
page, Node.js support, the add-ons program, Starcraft nights and
[starving-samurai-42](http://starving-samurai-42.tumblr.com/).

Today he's focused on the Heroku public API, distributed architectures
and getting to the master league.", bio_es: "Pedro's first task in Heroku was
to make the online editor's cursor
display properly in Firefox 3. Since then he worked on logging, the
command-line client, refactoring and splitting systems, the pricing
page, Node.js support, the add-ons program, Starcraft nights and
[starving-samurai-42](http://starving-samurai-42.tumblr.com/).

Today he's focused on the Heroku public API, distributed architectures
and getting to the master league."

foca = Speaker.create first_name: "Nicolás", last_name: "Sanguinetti",
  twitter: "godfoca", company: "Cubox", country: "URUGUAY", bio_en: "Nicolás (also known as foca) has been writing horrible code for the past 10 years, each line worse than the last. Over this period, he learnt a few things about testing horrible code, and hopefully he can say one or two things that are worth listening over this presentation. Hopefully.
He usually hacks on ruby and javascript open source thingies at http://github.com/foca. He lives in Montevideo, Uruguay, where he works as an engineer for Cubox.", bio_es: "Nicolás (también conocido como Foca), ya lleva 10 años escribiendo código horrible, cada línea peor que el anterior. Durante este período, aprendió algunas cosas sobre cómo probar código horrible, y espera poder decir una o dos cosas que valga la pena escuchar en esta presentación. Ojalá.
Por lo general programa algunos proyectos open source en Ruby y Javascript, que podemos encontrar en http://github.com/foca. Vive en Montevideo, Uruguay, donde trabaja como ingeniero para Cubox."

apotonick = Speaker.create first_name: "Nick", last_name: "Sutterer",
  twitter: "apotonick", country: "GERMANY", bio_en: "Nick Sutterer is proud to be a member of the
Ruby open source
community. His Cells and Apotomo projects have been bringing increased
view modularity and event-driven programming to Rails for years. He
has enjoyed attending, and speaking at, Ruby conferences around the
world. Buy him a beer sometime, and with very little prompting, he
will tell you why there should be no such thing as a double-render
error, why you should not confuse your models with your resources, and
how to play a mean bass in a punk rock band.", bio_es: "Nick Sutterer is proud
to be a member of the Ruby open source community. His Cells and Apotomo projects have been bringing increased
view modularity and event-driven programming to Rails for years. He
has enjoyed attending, and speaking at, Ruby conferences around the
world. Buy him a beer sometime, and with very little prompting, he
will tell you why there should be no such thing as a double-render
error, why you should not confuse your models with your resources, and
how to play a mean bass in a punk rock band."

wynn = Speaker.create first_name: "Wynn", last_name: "Netherland",
  twitter: 'pengwynn', country: "USA", company: "Github", bio_en: "Wynn Netherland is a full
stack web creative. He spends his days
shipping Awesome™ at GitHub. He is author of several books including
Sass and Compass in Action (Manning 2012). He is active in the
development community as host of The Changelog, a weekly podcast and
blog showcasing new and interesting Open Source projects.", bio_es: "Wynn
Netherland is a full stack web creative. He spends his days
shipping Awesome™ at GitHub. He is author of several books including
Sass and Compass in Action (Manning 2012). He is active in the
development community as host of The Changelog, a weekly podcast and
blog showcasing new and interesting Open Source projects."

steveklabnik = Speaker.create first_name: "Steve", last_name: "Klabnik",
  twitter: "steveklabnik", country: "USA", company: "JumpstartLab",
  bio_es: "Steve Klabnik hacks on Hackety Hack and other open source projects. He was a Ruby Hero in 2011.
  In addition to speaking about hypermedia APIs he's also writing a book about those. He also teaches the best Ruby and Rails classes in the world with Jumpstart Lab.",
  bio_en: "Steve Klabnik hacks on Hackety Hack and other open source projects. He was a Ruby Hero in 2011.
  In addition to speaking about hypermedia APIs he's also writing a book about those. He also teaches the best Ruby and Rails classes in the world with Jumpstart Lab."

cuerbot = Speaker.create first_name: "Bruno", last_name: "Aguirre",
  twitter: "cuerbot", country: "URUGUAY", company: "Cubox",
  bio_en: "Bruno (o elcuervo para los amigos) fue criado por un grupo de salvajes de la tribu de telecomunicaciones, ellos lo llevaron al mundo de lo distribuido y protocolos asíncronos.
El avance de la ciudad en las tierras de estos salvajes y las olas migratorias del pingüino emperador llevo a este desarrollador a las tierras del HTTP en donde busca unir a los dos mundos.
Fanático de los protocolos y la investigación tiene hoy su laboratorio secreto en Cubox.
Es opensource-dependiente, mantiene varios proyectos, es de Géminis y disfruta de largas caminatas en la playa y cenas a la luz de las velas.",
bio_es: "Bruno (o elcuervo para los amigos) fue criado por un grupo de salvajes de la tribu de telecomunicaciones, ellos lo llevaron al mundo de lo distribuido y protocolos asíncronos.
El avance de la ciudad en las tierras de estos salvajes y las olas migratorias del pingüino emperador llevo a este desarrollador a las tierras del HTTP en donde busca unir a los dos mundos.
Fanático de los protocolos y la investigación tiene hoy su laboratorio secreto en Cubox.
Es opensource-dependiente, mantiene varios proyectos, es de Géminis y disfruta de largas caminatas en la playa y cenas a la luz de las velas."

spastorino = Speaker.create first_name: "Santiago", last_name: "Pastorino",
  twitter: "spastorino", country: "URUGUAY", company: "WyeWorks",
  bio_es: "Santiago is a Rails Core Team Member, devoted Open Source developer and Co-Founder of WyeWorks. He's a well rounded Software Engineer, perfectionist and passionate about creating extremely high quality products using the very best practices. As a side effect of getting his Computer Science degree, he is now proudly addicted to Coca-Cola and chocolate.",
  bio_en: "Santiago is a Rails Core Team Member, devoted Open Source developer and Co-Founder of WyeWorks. He's a well rounded Software Engineer, perfectionist and passionate about creating extremely high quality products using the very best practices. As a side effect of getting his Computer Science degree, he is now proudly addicted to Coca-Cola and chocolate."

# pablitux = Speaker.create first_name: "Pablo", last_name: "Tortorella",
#   country: "ARGENTINA", twitter: "pablitux", company: "Kleer", bio_es: "Estusiasta y social. Estudié
#   Ingeniería en Informática; me apasionan la música, el desarrollo de software,
#   el fútbol y el espíritu comunitario.
#
#   Formo parte de Kleer y de la Comunidad Ágil Latinoamericana: acompaño equipos
#   que quieren trabajar mejor, conociéndose más e implementando metodologías y
# prácticas ágiles; También soy docente en la Universidad de Buenos Aires y
# usuario de GNU+Linux.
#
# Me gusta pasar buenos momentos con mi novia y con mis amigos, jugar al fútbol,
# comer pastas, asado y comida peruana, tocar la armónica y aprender idiomas y
# cosas nuevas.", bio_en: "Estusiasta y social. Estudié Ingeniería en
# Informática; me apasionan la música, el desarrollo de software, el fútbol y el
# espíritu comunitario.
#
# Formo parte de Kleer y de la Comunidad Ágil Latinoamericana: acompaño equipos
# que quieren trabajar mejor, conociéndose más e implementando metodologías y
# prácticas ágiles; También soy docente en la Universidad de Buenos Aires y
# usuario de GNU+Linux.
#
# Me gusta pasar buenos momentos con mi novia y con mis amigos, jugar al fútbol,
# comer pastas, asado y comida peruana, tocar la armónica y aprender idiomas y
# cosas nuevas."
