# encoding: utf-8
Speaker.all.each(&:destroy)

# JANO
jano = Speaker.create first_name: "Jano", last_name: "González", twitter: ""
jano.bio_en = "Desarrollador, músico aficionado y adicto a las charlas. Ha
creado desde pequeñas aplicaciones web hasta complejas arquitecturas
empresariales, actualmente es el CTO de HopIn (http://hop.in).\n En su tiempo
libre toca música e intenta practicar deportes (sin mucho éxito)."

jano.bio_es = "Desarrollador, músico aficionado y adicto a las charlas. Ha
creado desde pequeñas aplicaciones web hasta complejas arquitecturas
empresariales, actualmente es el CTO de HopIn (http://hop.in).\n En su tiempo
libre toca música e intenta practicar deportes (sin mucho éxito)."

jano.save

pedro = Speaker.create first_name: "Pedro", last_name: "Belo", twitter: "pedro"
jano = Speaker.create first_name: "Nicolás", last_name: "Sanguinetti", twitter: "godfoca"
apotonick = Speaker.create first_name: "Nick", last_name: "Suterer", twitter: "apotonick"
wynn = Speaker.create first_name: "Wynn", last_name: "Netherland", twitter: 'pengwynn'
