# encoding: utf-8
Speaker.all.each(&:destroy)

# JANO
jano = Speaker.create first_name: "Jano", last_name: "González", twitter: "janogonzalez",
country: "CHILE", company: "HopIn", github: "janogonzalez"

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
twitter: "pedro", github: "pedro", company: "Heroku",
bio_en: "Pedro's first task in Heroku was to make the online editor's cursor
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
  twitter: "godfoca", github: "foca", company: "GitHub", country: "URUGUAY",
  bio_en: "Nicolás (also known as foca) has been writing horrible code for
the past 10 years, each line worse than the last. At some point he
realized Eclipse was actually a horrible tool for anything-but-Java
and decided he would learn a new editor. And for the past 8 years he's
been using vim, so he's confident he can show a thing or two about it.
He usually hacks on ruby and javascript open source thingies at
http://github.com/foca. He lives in Montevideo, Uruguay, where he
works as an engineer for GitHub.<Esc>:wq",
bio_es: "Nicolás (also known as foca) has been writing horrible code for
the past 10 years, each line worse than the last. At some point he
realized Eclipse was actually a horrible tool for anything-but-Java
and decided he would learn a new editor. And for the past 8 years he's
been using vim, so he's confident he can show a thing or two about it.
He usually hacks on ruby and javascript open source thingies at
http://github.com/foca. He lives in Montevideo, Uruguay, where he
works as an engineer for GitHub.<Esc>:wq"

apotonick = Speaker.create first_name: "Nick", last_name: "Sutterer",
  twitter: "apotonick", github: "apotonick",
  country: "GERMANY", bio_en: "Nick Sutterer is proud to be a member of the Ruby open source
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
  twitter: 'pengwynn', github: "pengwynn", country: "USA", company: "GitHub", bio_en: "Wynn Netherland is a full
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
  twitter: "steveklabnik",  github: "steveklabnik", country: "USA", company: "JumpstartLab",
  bio_es: "Steve Klabnik hacks on Hackety Hack and other open source projects. He was a Ruby Hero in 2011.
  In addition to speaking about hypermedia APIs he's also writing a book about those. He also teaches the best Ruby and Rails classes in the world with Jumpstart Lab.",
  bio_en: "Steve Klabnik hacks on Hackety Hack and other open source projects. He was a Ruby Hero in 2011.
  In addition to speaking about hypermedia APIs he's also writing a book about those. He also teaches the best Ruby and Rails classes in the world with Jumpstart Lab."

cuerbot = Speaker.create first_name: "Bruno", last_name: "Aguirre",
  twitter: "cuerbot", github: "elcuervo", country: "URUGUAY", company: "New Context",
  bio_en: "Bruno (o elcuervo para los amigos) fue criado por un grupo de salvajes de la tribu de telecomunicaciones, ellos lo llevaron al mundo de lo distribuido y protocolos asíncronos.
El avance de la ciudad en las tierras de estos salvajes y las olas migratorias del pingüino emperador llevo a este desarrollador a las tierras del HTTP en donde busca unir a los dos mundos.
Fanático de los protocolos y la investigación tiene hoy su laboratorio secreto en New Context.
Es opensource-dependiente, mantiene varios proyectos, es de Géminis y disfruta de largas caminatas en la playa y cenas a la luz de las velas.",
bio_es: "Bruno (o elcuervo para los amigos) fue criado por un grupo de salvajes de la tribu de telecomunicaciones, ellos lo llevaron al mundo de lo distribuido y protocolos asíncronos.
El avance de la ciudad en las tierras de estos salvajes y las olas migratorias del pingüino emperador llevo a este desarrollador a las tierras del HTTP en donde busca unir a los dos mundos.
Fanático de los protocolos y la investigación tiene hoy su laboratorio secreto en New Context.
Es opensource-dependiente, mantiene varios proyectos, es de Géminis y disfruta de largas caminatas en la playa y cenas a la luz de las velas."

spastorino = Speaker.create first_name: "Santiago", last_name: "Pastorino",
  twitter: "spastorino", country: "URUGUAY", company: "WyeWorks", github: "spastorino",
  bio_es: "Santiago is a Rails Core Team Member, devoted Open Source developer and Co-Founder of WyeWorks. He's a well rounded Software Engineer, perfectionist and passionate about creating extremely high quality products using the very best practices. As a side effect of getting his Computer Science degree, he is now proudly addicted to Coca-Cola and chocolate.",
  bio_en: "Santiago is a Rails Core Team Member, devoted Open Source developer and Co-Founder of WyeWorks. He's a well rounded Software Engineer, perfectionist and passionate about creating extremely high quality products using the very best practices. As a side effect of getting his Computer Science degree, he is now proudly addicted to Coca-Cola and chocolate."


s = Speaker.create first_name: "Martín", last_name: "Salías",
bio_es: "Martin is an old programming language maniac who has been coding for a living the last 30 years in all type of crazy projects. He considers himself an eternal apprentice, and that's why he spends most of his time doing coaching and training at Kleer, as teaching is a very effective learning technique. He loves community and was part of the group starting the Agiles Latin American conferences, contributes to Alt.NET, the open source side of the .NET world, and his favorite platforms are Python, Ruby and JavaScript. He blogs frequently (in Spanish) about coding stuff at http://CodeAndBeyond.org.",
bio_en: "Martin is an old programming language maniac who has been coding for a living the last 30 years in all type of crazy projects. He considers himself an eternal apprentice, and that's why he spends most of his time doing coaching and training at Kleer, as teaching is a very effective learning technique. He loves community and was part of the group starting the Agiles Latin American conferences, contributes to Alt.NET, the open source side of the .NET world, and his favorite platforms are Python, Ruby and JavaScript. He blogs frequently (in Spanish) about coding stuff at http://CodeAndBeyond.org.",
github: "martinsalias",
twitter: "martinsalias",
country: "ARGENTINA",
company:"Kleer"


s = Speaker.create first_name: "Bernon", last_name: "Painter",
bio_es: "Bermon Painter guía UX para Hendrick Automotive Group, donde trabaja con un equipo extraordinario que hace experiencias geniales y aplicaciones web con Ruby. También esta involucrado en la comunidad de tecnología en Charlotte, NC y organiza los grupos Charlotte User Experience Designers, Charlotte Front-End Developers y Charlotte Grok. En su tiempo libre el trabaja con @teamsassdesign haciendo el nuevo diseño del sitio web de Sass. Fuera de tecnología el disfruta aprender idiomas, habla español, ingles y un poco de italiano, toca música clasica en el piano, y disfruta viajar a las playas y montañas del Ecuador con su familia.",
bio_en: "Bermon Painter is the UX Design Lead for Hendrick Automotive Group, where he works with an amazing team that crafts nifty experiences and web applications with Ruby. He's also heavily involved in the local tech community in Charlotte, NC and organizes the Charlotte User Experience Designer, Charlotte Front-End Developers and Charlotte Grok groups. In his free time he works the folks at @teamsassdesign on the redesign of the Sass website. Outside of technology he enjoys languages, speaks fluent Spanish, working on Italian, plays classical piano and enjoys visiting the beaches and mountains of Ecuador with his family.",
github: "bpainter",
twitter: "bermonpainter",
country: "USA",
company:"Hendrick Automotive Group"


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
