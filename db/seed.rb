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


s = Speaker.create first_name: "Bermon", last_name: "Painter",
bio_es: "Bermon Painter guía UX para Hendrick Automotive Group, donde trabaja con un equipo extraordinario que hace experiencias geniales y aplicaciones web con Ruby. También esta involucrado en la comunidad de tecnología en Charlotte, NC y organiza los grupos Charlotte User Experience Designers, Charlotte Front-End Developers y Charlotte Grok. En su tiempo libre el trabaja con @teamsassdesign haciendo el nuevo diseño del sitio web de Sass. Fuera de tecnología el disfruta aprender idiomas, habla español, ingles y un poco de italiano, toca música clasica en el piano, y disfruta viajar a las playas y montañas del Ecuador con su familia.",
bio_en: "Bermon Painter is the UX Design Lead for Hendrick Automotive Group, where he works with an amazing team that crafts nifty experiences and web applications with Ruby. He's also heavily involved in the local tech community in Charlotte, NC and organizes the Charlotte User Experience Designer, Charlotte Front-End Developers and Charlotte Grok groups. In his free time he works the folks at @teamsassdesign on the redesign of the Sass website. Outside of technology he enjoys languages, speaks fluent Spanish, working on Italian, plays classical piano and enjoys visiting the beaches and mountains of Ecuador with his family.",
github: "bpainter",
twitter: "bermonpainter",
country: "USA",
company:"Hendrick Automotive"

# s = Speaker.create first_name: "Jacqui", last_name: "Maher",
# bio_es: "Jacqui Maher is an Interactive News Editor at The New York Times. She
# works in a group of developer/journalists in the newsroom on projects
# big and small, typically ones that try to make sense of large unwieldy
# or complicated sources of data for readers. A native of NYC, working for
# the paper had been her dream for a long time. While she's thankful she
# didn't have to start in the mail room, she had no idea how much XML it
# would involve.

# Most recently Jacqui helped lead the London 2012 Olympics coverage for
# the Times, even reporting on the spectacular final event &mdash; the Modern
# Pentathlon &mdash; live from Greenwich. She'll be talking about how the NYT
# used all the technologies to win the Olympics, including scaling for
# clients in multiple languages around the world, with much love for
# Redis. She might also want to talk about climbing the Seven Summits.",
# bio_en: "Jacqui Maher is an Interactive News Editor at The New York Times. She
# works in a group of developer/journalists in the newsroom on projects
# big and small, typically ones that try to make sense of large unwieldy
# or complicated sources of data for readers. A native of NYC, working for
# the paper had been her dream for a long time. While she's thankful she
# didn't have to start in the mail room, she had no idea how much XML it
# would involve.

# Most recently Jacqui helped lead the London 2012 Olympics coverage for
# the Times, even reporting on the spectacular final event &mdash; the Modern
# Pentathlon &mdash; live from Greenwich. She'll be talking about how the NYT
# used all the technologies to win the Olympics, including scaling for
# clients in multiple languages around the world, with much love for
# Redis. She might also want to talk about climbing the Seven Summits.",
# github: "jacqui",
# twitter: "jacqui",
# country: "USA",
# company:"New York Times"

s = Speaker.create first_name: "Jeff", last_name: "Casimir",
bio_es: "I started teaching in 2003 with Teach for America in my native Washington, DC. I first taught middle-school students, then taught Computer Science to high schoolers, and finally helped start a new charter middle school in a role most easily described as “Vice Principal.” I love teaching developers because you are giving people the power to build their dreams.",
bio_en: "I started teaching in 2003 with Teach for America in my native Washington, DC. I first taught middle-school students, then taught Computer Science to high schoolers, and finally helped start a new charter middle school in a role most easily described as “Vice Principal.” I love teaching developers because you are giving people the power to build their dreams.",
github: "jcasimir",
twitter: "j3",
country: "USA",
company:"Jumpstart Lab"

s = Speaker.create first_name: "David", last_name: "Calavera",
bio_es: "David works as a developer at GitHub making GitHub Enterprise even more awesome. When he's not coding you can probably find him improving his circus skills around the beautiful San Francisco.",
bio_en: "David works as a developer at GitHub making GitHub Enterprise even more awesome. When he's not coding you can probably find him improving his circus skills around the beautiful San Francisco.",
github: "calavera",
twitter: "calavera",
country: "ESPANA",
company:"GitHub"

s = Speaker.create first_name: "Krzysztof Kowalik", last_name: " / Pablo Astigarraga",
bio_es: "Chris is 23 years old freak from Poland, easy to recognize by his
strange hairdos. Some time ago he moved to Montevideo in far far away
Uruguay, where people are boring and drink weird herbs from weirder
vessels. He met there PoTe, another 23 years old freak with stylish
afro. Chris used to kick Pablo's ass in soccer, while he is kicking
Chris' ass in PES... They work together on cool Ruby, Python and Go
projects, they do Open Source, they experiment with new ideas and have
fun with every written line of code.",
bio_en: "Chris is 23 years old freak from Poland, easy to recognize by his
strange hairdos. Some time ago he moved to Montevideo in far far away
Uruguay, where people are boring and drink weird herbs from weirder
vessels. He met there PoTe, another 23 years old freak with stylish
afro. Chris used to kick Pablo's ass in soccer, while he is kicking
Chris' ass in PES... They work together on cool Ruby, Python and Go
projects, they do Open Source, they experiment with new ideas and have
fun with every written line of code.",
github: "",
twitter: "poteland",
country: "URUGUAY",
company:"New Context"


s = Speaker.create first_name: "Hanneli", last_name: "Tavante",
bio_es: "Hanneli (a.k.a. @hannelita) is a Brazilian developer working at
Caelum, addicted to code, learn new programming languages, frameworks,
blow capacitors, do some C programming to relax and commit useful (or
unuseful) code for random Open Source Projects that she finds at
Github. She tries to help community projects with her blog,
http://hannelita.wordpress.com

She also likes coffee, specially the ones from Starbucks. ",

bio_en: "Hanneli (a.k.a. @hannelita) is a Brazilian developer working at
Caelum, addicted to code, learn new programming languages, frameworks,
blow capacitors, do some C programming to relax and commit useful (or
unuseful) code for random Open Source Projects that she finds at
Github. She tries to help community projects with her blog,
http://hannelita.wordpress.com

She also likes coffee, specially the ones from Starbucks. ",
github: "hannelita",
twitter: "hannelita",
country: "BRASIL",
company: "Caelum"

s = Speaker.create first_name: "Andy", last_name: "Atkinson",
bio_es: "Andy Atkinson has worked as a full-stack Rails engineer on
consumer-facing projects at LivingSocial for 2 years. He has been part
of the rapid growth of the engineering team from 10 to 80, from
working independently, to being part of a team of engineers,
designers, and managers. In that time he has experienced the
challenges of continuing to release new products and features to
consumers at the same rate of speed and level of quality within a
rapidly growing organization.",
bio_en: "Andy Atkinson has worked as a full-stack Rails engineer on
consumer-facing projects at LivingSocial for 2 years. He has been part
of the rapid growth of the engineering team from 10 to 80, from
working independently, to being part of a team of engineers,
designers, and managers. In that time he has experienced the
challenges of continuing to release new products and features to
consumers at the same rate of speed and level of quality within a
rapidly growing organization.",
github: "webandy",
twitter: "webandy",
country: "USA",
company:"LivingSocial"

s = Speaker.create first_name: "Gastón", last_name: "Ramos",
bio_es: "Gastón programaba principalmente en Php y Perl
hasta que conoció Ruby en el año 2005,
a partir de ese momento comenzó a difundirlo
entre sus amigos y no tan amigos.
Es fundador de una comunidad de rubystas en
su localidad, en el año 2009 se fué a vivir
al campo, desde allí colabora en algunos proyectos
open source en sus tiempos libres.
De día trabaja en Deviget y algunas noches
en el proyecto GNU/Linux Debian.",
bio_en: "Gastón programaba principalmente en Php y Perl
hasta que conoció Ruby en el año 2005,
a partir de ese momento comenzó a difundirlo
entre sus amigos y no tan amigos.
Es fundador de una comunidad de rubystas en
su localidad, en el año 2009 se fué a vivir
al campo, desde allí colabora en algunos proyectos
open source en sus tiempos libres.
De día trabaja en Deviget y algunas noches
en el proyecto GNU/Linux Debian.",
github: "gramos",
twitter: "gramos",
country: "ARGENTINA",
company:"Deviget"


s = Speaker.create first_name: "Lucas Videla", last_name: " / Matías Gonzalez",
bio_es: "Lucas es profe en la UNLaM y la UNTreF, desarrollador y un entusiasta
de la industria. Nadie puede entender cómo, pero en algún momento
podía hacer mortales y otras acrobacias. Ahora hace Tai Chi Chuan,
trabaja en uno21 y da charlas de git.

Matías tiene basta experiencia en la industria y dos años de
experiencia en capacitación para empresas. Le gusta hacer las cosas
bien y disfruta haciéndolo. A punto de recibirse, distribuye su tiempo
entre la facu, dar clases y desarrollar en uno21. ¡Y ahora lo pueden
encontrar en encuentros como el RFD!",
bio_en: "Lucas es profe en la UNLaM y la UNTreF, desarrollador y un entusiasta
de la industria. Nadie puede entender cómo, pero en algún momento
podía hacer mortales y otras acrobacias. Ahora hace Tai Chi Chuan,
trabaja en uno21 y da charlas de git.

Matías tiene basta experiencia en la industria y dos años de
experiencia en capacitación para empresas. Le gusta hacer las cosas
bien y disfruta haciéndolo. A punto de recibirse, distribuye su tiempo
entre la facu, dar clases y desarrollar en uno21. ¡Y ahora lo pueden
encontrar en encuentros como el RFD!",
github: "",
twitter: "luke_ar",
country: "ARGENTINA",
company:"uno21"

s = Speaker.create first_name: "Florian", last_name: "Gilcher",
bio_es: "DISPONIBLE A LA BREVEDAD",
bio_en: "SOON TO BE ANNOUNCED",
github: "skade",
twitter: "argorak",
country: "GERMANY",
company:"asquera GmbH"

s = Speaker.create first_name: "Ernesto", last_name: "Martens",
bio_es: "Ernesto es fundador de OmbuShop; Ing. en Sistemas (UTN), Lean Practitioner y Rubyista. 
Hace años que trabaja exclusivamente con startups. Luego de sufrir con Java y fat startups, descubrió Ruby y Lean Startup y vio la luz. Hoy pasa sus días programando; hackeando funnels; e ideando MVPs y experimentos. 
En su tiempo libre coordina meetups de Lean Startup y Ruby; contribuye a proyectos de eCommerce y OpenData; y juega al ping-pong semi-profesionalmente. ",
bio_es: "Ernesto es fundador de OmbuShop; Ing. en Sistemas (UTN), Lean Practitioner y Rubyista. 
Hace años que trabaja exclusivamente con startups. Luego de sufrir con Java y fat startups, descubrió Ruby y Lean Startup y vio la luz. Hoy pasa sus días programando; hackeando funnels; e ideando MVPs y experimentos. 
En su tiempo libre coordina meetups de Lean Startup y Ruby; contribuye a proyectos de eCommerce y OpenData; y juega al ping-pong semi-profesionalmente. ",
twitter: "etagwerker",
github: "etagwerker",
company: "OmbuShop", 
country: "ARGENTINA"

s = Speaker.create first_name: "Nico Sztabzyb", last_name: "Lucas Florio",
bio_es: "",
bio_es: "",
twitter: "n1cus-lucasefe",
github: "lucasefe",
company: "Chefs Feed / SZ Studios", 
country: "ARGENTINA"


# s = Speaker.create first_name: "Michel", last_name: "Martens",
# bio_es: "Michel has been working with Ruby since 2003. He is co-creator of many
# libraries like Ohm, Contest and Cuba, and contributes to Redis since
# 2009. He presented at LAWebDev in 2009, at RubyConf Uruguay in 2010,
# and is a regular speaker at the Ruby Argentina meetup. Member of the
# Ruby Visual Identity Team and founder of the Ruby Argentina Group, he
# is also an amateur go player and lives in Buenos Aires, Argentina.",
# bio_es: "Michel has been working with Ruby since 2003. He is co-creator of many
# libraries like Ohm, Contest and Cuba, and contributes to Redis since
# 2009. He presented at LAWebDev in 2009, at RubyConf Uruguay in 2010,
# and is a regular speaker at the Ruby Argentina meetup. Member of the
# Ruby Visual Identity Team and founder of the Ruby Argentina Group, he
# is also an amateur go player and lives in Buenos Aires, Argentina.",
# twitter: "soveran",
# github: "soveran",
# company: "Freelance", 
# country: "ARGENTINA"

# s = Speaker.create first_name: "Hernán", last_name: "Wilkinson",
# bio_es: "He graduated in Computer Sciences, from Facultad de Ciencias Exactas y
# Naturales in UBA. He has been teaching Object Oriented Programming and
# Advanced Design with Objects in the same University for more that ten
# years. He is also professor in the Software Engineer Master’s degree
# at the UCA. He has been working as a programmer, architect, technology
# and development manager in different companies such as IBM, Banco
# Galicia and Mercap SRL. He has been speaker in different international
# congresses such as OOPSLA (Object Oriented Programming, Systems,
# Languages and Applications), ESUG (European Smalltalk User Group),
# Smalltalks and Agiles. He is founder of 10Pines and FAST (Fundación
# Argentina de Smalltalk). Currently he spends more of his time doing
# what he likes the most: teaching and programming with objects.",
# bio_en: "He graduated in Computer Sciences, from Facultad de Ciencias Exactas y
# Naturales in UBA. He has been teaching Object Oriented Programming and
# Advanced Design with Objects in the same University for more that ten
# years. He is also professor in the Software Engineer Master’s degree
# at the UCA. He has been working as a programmer, architect, technology
# and development manager in different companies such as IBM, Banco
# Galicia and Mercap SRL. He has been speaker in different international
# congresses such as OOPSLA (Object Oriented Programming, Systems,
# Languages and Applications), ESUG (European Smalltalk User Group),
# Smalltalks and Agiles. He is founder of 10Pines and FAST (Fundación
# Argentina de Smalltalk). Currently he spends more of his time doing
# what he likes the most: teaching and programming with objects.",
# github: "10Pines",
# twitter: "HernanWilkinson",
# country: "ARGENTINA",
# company:"10pines"
