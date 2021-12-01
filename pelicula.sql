-- 1. Crear la tablas de peliculas y reparto
CREATE TABLE peliculas(
    id INT, 
    peliculas VARCHAR(70), 
    ano_estreno INT, 
    director VARCHAR(50), 
    PRIMARY KEY(id)
);

 id | peliculas | ano_estreno | director
----+-----------+-------------+----------
(0 filas)

CREATE TABLE reparto(
    id INT, 
    actor VARCHAR(50), 
    FOREIGN KEY(id) REFERENCES peliculas(id)
);

 id | actor
----+-------
(0 filas)

-- 2. Cargar ambos archivos a su tabla correspondiente
\copy peliculas from 'C:\Users\Gamer\Desktop\Desafios\desafio_top100\peliculas.csv' csv header;

 id  |                       peliculas                       | ano_estreno |       director
-----+-------------------------------------------------------+-------------+-----------------------
   1 | Forest Gump                                           |        1994 | Robert Zemeckis
   2 | Titanic                                               |        1997 | James Cameron
   3 | El Padrino                                            |        1972 | Francis Ford Coppola
   4 | Gladiator                                             |        2000 | Ridley Scott
   5 | El Se├▒or de los anillos: El retorno del rey          |        2003 | Peter Jackson
   6 | El caballero oscuro                                   |        2008 | Christopher Nolan
   7 | Cadena perpetua                                       |        1994 | Frank Darabont
   8 | Piratas del Caribe: La maldici├│n de la Perla Negra   |        2003 | Gore Verbinski
   9 | Braveheart                                            |        1995 | Mel Gibson
  10 | La lista de Schindler                                 |        1993 | Steven Spielberg
  11 | Toy Story                                             |        1995 | John Lasseter
  12 | Eduardo Manostijeras                                  |        1990 | Tim Burton
  13 | El Se├▒or de los anillos: La comunidad del anillo     |        2001 | Peter Jackson
  14 | Salvar al soldado Ryan                                |        1998 | Steven Spielberg
  15 | Regreso al futuro                                     |        1985 | Robert Zemeckis
  16 | Monstruos S.A.                                        |        2001 | Pete Docter
  17 | Buscando a Nemo                                       |        2003 | Andrew Stanton
  18 | El Se├▒or de los anillos: Las dos torres              |        2002 | Peter Jackson
  19 | Harry Potter y el Prisionero de Azkaban               |        2004 | Alfonso Cuar├│n
  20 | American History X                                    |        1998 | Tony Kaye
  21 | 300                                                   |        2007 | Zack Snyder
  22 | El sexto sentido                                      |        1999 | M. Night Shyamalan
  23 | Pulp Fiction                                          |        1994 | Quentin Tarantino
  24 | V de Vendetta                                         |        2005 | James McTeigue
  25 | El silencio de los corderos                           |        1991 | Jonathan Demme
  26 | Rocky                                                 |        1976 | John G. Avildsen
  27 | El club de la pelea                                   |        1999 | David Fincher
  28 | E.T                                                   |        1982 | Steven Spielberg
  29 | Parque Jur├ísico                                      |        1993 | Steven Spielberg
  30 | Matrix                                                |        1999 | Andy y Lana Wachowski
  31 | La milla verde                                        |        1999 | Frank Darabont
  32 | Ratatouille                                           |        2007 | Brad Bird
  33 | Grease                                                |        1978 | Randal Kleiser
  34 | El Padrino. Parte II                                  |        1974 | Francis Ford Coppola
  35 | Wall-E                                                |        2008 | Andrew Stanton
  36 | Iron Man                                              |        2008 | Jon Favreau
  37 | El exorcista                                          |        1973 | William Friedkin
  38 | Piratas del Caribe: El cofre del hombre muerto        |        2006 | Gore Verbinski
  39 | Seven                                                 |        1995 | David Fincher
  40 | Terminator 2: el juicio final                         |        1991 | James Cameron
  41 | El resplandor                                         |        1980 | Stanley Kubrick
  42 | Hombres de negro                                      |        1997 | Barry Sonnenfeld
  43 | Spider-Man                                            |        2002 | Sam Raimi
  44 | Regreso al futuro II                                  |        1989 | Robert Zemeckis
  45 | El show de Truman                                     |        1998 | Peter Weir
  46 | Toy Story 2                                           |        1999 | John Lasseter
  47 | Pesadilla antes de navidad                            |        1993 | Henry Selick
  48 | Star Wars. Episodio IV: Una nueva esperanza           |        1977 | George Lucas
  49 | Saw                                                   |        2004 | James Wan
  50 | Terminator                                            |        1984 | James Cameron
  51 | Kill Bill Vol. 1                                      |        2003 | Quentin Tarantino
  52 | Lo que el viento se llev├│                            |        1939 | Victor Fleming
  53 | El Laberinto del Fauno                                |        2006 | Guillermo del Toro
  54 | Los incre├¡bles                                       |        2004 | Brad Bird
  55 | El viaje de Chihiro                                   |        2001 | Hayao Miyazaki
  56 | El precio del poder                                   |        1983 | Brian De Palma
  57 | King Kong                                             |        2005 | Peter Jackson
  58 | Ben-Hur                                               |        1959 | William Wyler
  59 | Indiana Jones y la ├║ltima cruzada                    |        1989 | Steven Spielberg
  60 | Infiltrados                                           |        2006 | Martin Scorsese
  61 | Entrevista con el vampiro                             |        1994 | Neil Jordan
  62 | Batman Begins                                         |        2005 | Christopher Nolan
  63 | En busca del arca perdida                             |        1981 | Steven Spielberg
  64 | Star Wars. Episodio III: La venganza de los Sith      |        2005 | George Lucas
  65 | Alien                                                 |        1979 | Ridley Scott
  66 | El bueno el feo y el malo                             |        1966 | Sergio Leone
  67 | Star Wars. Episodio V: El imperio contraataca         |        1980 | Irvin Kershner
  68 | El Padrino. Parte III                                 |        1990 | Francis Ford Coppola
  69 | Star Wars. Episodio VI: El retorno del Jedi           |        1983 | Richard Marquand
  70 | Escuela de Rock                                       |        2003 | Richard Linklater
  71 | El planeta de los simios                              |        1968 | Franklin J. Schaffner
  72 | Rambo                                                 |        1982 | Ted Kotcheff
  73 | Full Metal Jacket                                     |        1987 | Stanley Kubrick
  74 | Tibur├│n                                              |        1975 | Steven Spielberg
  75 | El profesional                                        |        1994 | Luc Besson
  76 | American Beauty                                       |        1999 | Sam Mendes
  77 | Casablanca                                            |        1942 | Michael Curtiz
  78 | Am├®lie                                               |        2001 | Jean-Pierre Jeunet
  79 | Trainspotting                                         |        1996 | Danny Boyle
  80 | axi driver                                            |        1976 | Martin Scorsese
  81 | Alguien vol├│ sobre el nido del cuco                  |        1975 | Milos Forman
  82 | Kill Bill Vol. 2                                      |        2004 | Quentin Tarantino
  83 | Spider-Man 2                                          |        2004 | Sam Raimi
  84 | X-Men 2                                               |        2003 | Bryan Singer
  85 | Transformers                                          |        2007 | Michael Bay
  86 | Star Wars. Episodio I: La amenaza fantasma            |        1999 | George Lucas
  87 | Blade Runner                                          |        1982 | Ridley Scott
  88 | Apocalypse Now                                        |        1979 | Francis Ford Coppola
  89 | Mejor... imposible                                    |        1997 | James L. Brooks
  90 | La vida de Brian                                      |        1979 | Terry Jones
  91 | El libro de la selva                                  |        1967 | Wolfgang Reitherman
  92 | Los cazafantasmas                                     |        1984 | Ivan Reitman
  93 | Sweeney Todd: El barbero diab├│lico de la calle Fleet |        2007 | Tim Burton
  94 | Oceans Eleven                                        |        2001 | Steven Spielberg
  95 | Blancanieves y los siete enanitos                     |        1937 | David Hand
  96 | Predator                                              |        1987 | John McTiernan
  97 | Indiana Jones y el templo maldito                     |        1984 | Steven Spielberg
  98 | Uno de los nuestros                                   |        1990 | Martin Scorsese
  99 | Mouling Rouge                                         |        2001 | Baz Luhrmann
 100 | Psicosis                                              |        1960 | Alfred Hitchcock
(100 filas)

\copy reparto from 'C:\Users\Gamer\Desktop\Desafios\desafio_top100\reparto.csv' csv header;

id  |            actor
-----+-----------------------------
   1 | Robin Wright Penn
   1 | Gary Sinise
   1 | Mykelti Williamson
   1 | Sally Field
   1 | Rebecca Williams
   1 | Michael Conner Humphreys
   1 | Harold G. Herthum
   1 | Haley Joel Osment
   1 | George Kelly
   1 | Bob Penny
   1 | John Randall
   1 | Sam Anderson
   1 | Margo Moorer
   1 | Ione M. Telech
   1 | Christine Seabrook
   2 | Leonardo DiCaprio
   2 | Kate Winslet
   2 | Billy Zane
   2 | Kathy Bates
   2 | Frances Fisher
   2 | Bernard Hill
   2 | Jonathan Hyde
   2 | Danny Nucci
   2 | David Warner
   2 | Bill Paxton
   2 | Gloria Stuart
   2 | Victor Garber
   2 | Suzy Amis
   3 | Marlon Brando
   3 | Al Pacino
   3 | James Caan
   3 | Robert Duvall
   3 | Diane Keaton
   3 | John Cazale
   3 | Talia Shire
   3 | Richard Castellano
   3 | Sterling Hayden
   3 | Gianni Russo
   3 | Rudy Bond
   3 | John Marley
   3 | Richard Conte
   3 | Al Lettieri
   3 | Abe Vigoda
   3 | Franco Citti
   4 | Russell Crowe
   4 | Joaquin Phoenix
   4 | Connie Nielsen
   4 | Oliver Reed
   4 | Richard Harris
   4 | Derek Jacobi
   4 | Djimon Hounsou
   4 | David Schofield
   4 | John Shrapnel
   4 | Tomas Arana
   4 | Ralf Moeller
   4 | Spencer Treat Clark
   4 | David Hemmings
   4 | Tommy Flanagan
   4 | Sven-Ole Thorsen
   4 | Tony Curran
   5 | Elijah Wood
   5 | Viggo Mortensen
   5 | Ian McKellen
   5 | Sean Astin
   5 | Andy Serkis
   5 | John Rhys-Davies
   5 | Orlando Bloom
   5 | John Noble
   5 | Miranda Otto
   5 | David Wenham
   5 | Bernard Hill
   5 | Billy Boyd
   5 | Dominic Monaghan
   5 | Liv Tyler
   5 | Karl Urban
   5 | Ian Holm
   5 | Hugo Weaving
   5 | Cate Blanchett
   5 | Lawrence Makoare
   6 | Christian Bale
   6 | Heath Ledger
   6 | Aaron Eckhart
   6 | Michael Caine
   6 | Gary Oldman
   6 | Maggie Gyllenhaal
   6 | Morgan Freeman
   6 | Eric Roberts
   6 | Cillian Murphy
   6 | Anthony Michael Hall
   6 | Michael Jai White
   6 | William Fichtner
   6 | Edison Chen
   6 | Monique Curnen
   6 | Chin Han
   6 | Nestor Carbonell
   6 | Ritchie Coster
   6 | Keith Szarabajka
   6 | Colin McFarlane
   6 | Melinda McGraw
   6 | Nathan Gamble
   6 | Michael Vieau
   7 | Tim Robbins
   7 | Morgan Freeman
   7 | Bob Gunton
   7 | James Whitmore
   7 | Gil Bellows
   7 | William Sadler
   7 | Mark Rolston
   7 | Clancy Brown
   8 | Johnny Depp
   8 | Geoffrey Rush
   8 | Orlando Bloom
   8 | Keira Knightley
   8 | Jonathan Pryce
   8 | Jack Davenport
   8 | Mackenzie Crook
   8 | Zoe Saldana
   8 | Kevin R. McNally
   9 | Mel Gibson
   9 | Sophie Marceau
   9 | Patrick McGoohan
   9 | Catherine McCormack
   9 | James Cosmo
   9 | Brendan Gleeson
   9 | Brian Cox
   9 | Peter Mullan
   9 | Gerard McSorley
   9 | Angus MacFadyen
  10 | Liam Neeson
  10 | Ben Kingsley
  10 | Ralph Fiennes
  10 | Caroline Goodall
  10 | Jonathan Sagall
  10 | Embeth Davidtz
  11 | Animada
  12 | Johnny Depp
  12 | Winona Ryder
  12 | Dianne Wiest
  12 | Anthony Michael Hall
  12 | Alan Arkin
  12 | Kathy Baker
  12 | Vincent Price
  12 | Caroline Aaron
  12 | Robert Oliveri
  13 | Elijah Wood
  13 | Ian McKellen
  13 | Viggo Mortensen
  13 | Sean Astin
  13 | Sean Bean
  13 | Cate Blanchett
  13 | Hugo Weaving
  13 | Liv Tyler
  13 | Ian Holm
  13 | Christopher Lee
  13 | John Rhys-Davies
  13 | Orlando Bloom
  13 | Dominic Monaghan
  13 | Billy Boyd
  13 | Lawrence Makoare
  13 | Craig Parker
  13 | Marton Csokas
  13 | Andy Serkis
  14 | Tom Hanks
  14 | Tom Sizemore
  14 | Edward Burns
  14 | Barry Pepper
  14 | Adam Goldberg
  14 | Vin Diesel
  14 | Giovanni Ribisi
  14 | Jeremy Davies
  14 | Matt Damon
  14 | Ted Danson
  14 | Paul Giamatti
  14 | Dennis Farina
  14 | Joerg Stadler
  14 | Max Martini
  14 | Dylan Bruno
  14 | Bryan Cranston
  15 | Michael J. Fox
  15 | Christopher Lloyd
  15 | Lea Thompson
  15 | Crispin Glover
  15 | Claudia Wells
  15 | Thomas F. Wilson
  15 | Billy Zane
  15 | Sachi Parker
  16 | Animada
  17 | Animada
  18 | Elijah Wood
  18 | Viggo Mortensen
  18 | Ian McKellen
  18 | Sean Astin
  18 | Andy Serkis
  18 | John Rhys-Davies
  18 | Orlando Bloom
  18 | Bernard Hill
  18 | Miranda Otto
  18 | David Wenham
  18 | Dominic Monaghan
  18 | Billy Boyd
  18 | Christopher Lee
  18 | Liv Tyler
  18 | Karl Urban
  18 | Brad Dourif
  18 | Hugo Weaving
  18 | Cate Blanchett
  18 | Craig Parker
  19 | Daniel Radcliffe
  19 | Rupert Grint
  19 | Emma Watson
  19 | Michael Gambon
  19 | Gary Oldman
  19 | Timothy Spall
  19 | Tom Felton
  19 | David Thewlis
  19 | Dawn French
  19 | Emma Thompson
  19 | Julie Christie
  19 | Robbie Coltrane
  19 | Peter Best
  19 | Julie Walters
  19 | Maggie Smith
  19 | Alan Rickman
  19 | Richard Griffiths
  19 | Fiona Shaw
  19 | Bonnie Wright
  19 | Mark Williams
  19 | Chris Rankin
  19 | David Bradley
  19 | Oliver Phelps
  19 | James Phelps
  19 | Matthew Lewis
  19 | Devon Murray
  19 | Jamie Waylett
  19 | Josh Herdman
  19 | Alfie Enoch
  19 | Miriam Margolyes
  19 | Gemma Jones
  19 | Harry Melling
  19 | Robert Hardy
  19 | Warwick Davis
  19 | Edward Randell
  19 | Pam Ferris
  19 | Emily Da le
  19 | Danielle Tabor
  19 | Jimmy Gardner
  19 | Lenny Henry
  19 | Lee Ingleby
  19 | Adrian Rawlins
  19 | Geraldine Somerville
  20 | Edward Norton
  20 | Edward Furlong
  20 | Fairuza Balk
  20 | Stacy Keach
  20 | Elliott Gould
  20 | Avery Brooks
  20 | Beverly DAngelo
  20 | Jennifer Lien
  20 | Guy Torry
  20 | Ethan Suplee
  20 | Keram Malicki-Sanchez
  21 | Gerard Butler
  21 | Lena Headey
  21 | David Wenham
  21 | Dominic West
  21 | Vincent Regan
  21 | Rodrigo Santoro
  21 | Michael Fassbender
  21 | Andrew Tieman
  21 | Andrew Pleavin
  21 | Tom Wisdom
  21 | Tim Conolly
  21 | Tyler Max Neitzel
  21 | Mercedes Leggett
  21 | Peter Mensah
  22 | Bruce Willis
  22 | Toni Collette
  22 | Haley Joel Osment
  22 | Olivia Williams
  22 | Trevor Morgan
  22 | Donnie Wahlberg
  22 | Peter Tambakis
  22 | Jeffrey Zubernis
  22 | Bruce Norris
  22 | KaDee Strickland
  23 | John Travolta
  23 | Samuel L. Jackson
  23 | Uma Thurman
  23 | Bruce Willis
  23 | Harvey Keitel
  23 | Eric Stoltz
  23 | Tim Roth
  23 | Maria de Medeiros
  23 | Amanda Plummer
  23 | Ving Rhames
  23 | Rosanna Arquette
  23 | Christopher Walken
  23 | Quentin Tarantino
  23 | Peter Greene
  23 | Phil LaMarr
  24 | Natalie Portman
  24 | Hugo Weaving
  24 | Stephen Rea
  24 | John Hurt
  24 | Stephen Fry
  24 | Rupert Graves
  24 | Tim Pigott-Smith
  24 | Roger Allam
  24 | Ben Miles
  24 | Sinead Cusack
  24 | Natasha Wightman
  24 | Eddie Marsan
  24 | Billie Cook
  25 | Jodie Foster
  25 | Anthony Hopkins
  25 | Scott Glenn
  25 | Ted Levine
  25 | Anthony Heald
  25 | Diane Baker
  25 | Brooke Smith
  25 | Tracey Walter
  25 | Kasi Lemmons
  25 | Chris Isaak
  25 | Roger Corman
  25 | Frankie Faison
  25 | Paul Lazar
  26 | Sylvester Stallone
  26 | Talia Shire
  26 | Burt Young
  26 | Carl Weathers
  26 | Burgess Meredith
  26 | Thayer David
  26 | Joe Spinell
  27 | Brad Pitt
  27 | Edward Norton
  27 | Helena Bonham Carter
  27 | Meat Loaf
  27 | Jared Leto
  27 | Van Quattro
  27 | Markus Redmond
  27 | Michael Girardin
  27 | Rachel Singer
  27 | Eion Bailey
  28 | Henry Thomas
  28 | Dee Wallace
  28 | Robert MacNaughton
  28 | Drew Barrymore
  28 | Peter Coyote
  28 | C. Thomas Howell
  28 | K.C. Martel
  28 | Sean Frye
  28 | Erika Eleniak
  29 | Sam Neill
  29 | Laura Dern
  29 | Jeff Goldblum
  29 | Richard Attenborough
  29 | Ariana Richards
  29 | Joseph Mazzello
  29 | Wayne Knight
  29 | Samuel L. Jackson
  29 | Bob Peck
  29 | Martin Ferrero
  29 | B.D. Wong
  30 | Keanu Reeves
  30 | Laurence Fishburne
  30 | Carrie-Anne Moss
  30 | Hugo Weaving
  30 | Joe Pantoliano
  30 | Marcus Chong
  30 | Paul Goddard
  30 | Gloria Foster
  31 | Tom Hanks
  31 | Michael Clarke Duncan
  31 | David Morse
  31 | Michael Jeter
  31 | Doug Hutchison
  31 | Sam Rockwell
  31 | Barry Pepper
  31 | Jeffrey DeMunn
  31 | Bonnie Hunt
  31 | James Cromwell
  31 | Graham Greene
  31 | Gary Sinise
  31 | Harry Dean Stanton
  31 | Patricia Clarkson
  31 | William Sadler
  31 | Paula Malcomson
  32 | Animada
  33 | John Travolta
  33 | Olivia Newton-John
  33 | Stockard Channing
  33 | Jeff Conaway
  33 | Didi Conn
  33 | Lorenzo Lamas
  33 | Dinah Manoff
  33 | Barry Pearl
  33 | Michael Tucci
  34 | Al Pacino
  34 | Robert De Niro
  34 | Diane Keaton
  34 | Robert Duvall
  34 | James Caan
  34 | John Cazale
  34 | Lee Strasberg
  34 | Talia Shire
  34 | Marianna Hill
  34 | Danny Aiello
  34 | Harry Dean Stanton
  34 | Troy Donahue
  34 | Roger Corman
  34 | Morgana King
  35 | Animada
  36 | Robert Downey Jr.
  36 | Terrence Howard
  36 | Gwyneth Paltrow
  36 | Jeff Bridges
  36 | Stan Lee
  36 | Leslie Bibb
  36 | Clark Gregg
  36 | Shaun Toub
  36 | Faran Tahir
  36 | Samuel L. Jackson
  37 | Linda Blair
  37 | Max von Sydow
  37 | Ellen Burstyn
  37 | Jason Miller
  37 | Lee J. Cobb
  37 | Kitty Winn
  37 | Jack MacGowran
  37 | Arthur Storch
  37 | Barton Heyman
  37 | Gina Petrushka
  38 | Johnny Depp
  38 | Orlando Bloom
  38 | Keira Knightley
  38 | Stellan Skarsg├Ñrd
  38 | Bill Nighy
  38 | Naomie Harris
  38 | Jonathan Pryce
  38 | Jack Davenport
  38 | Lee Arenberg
  38 | Mackenzie Crook
  38 | Kevin McNally
  38 | Geoffrey Rush
  39 | Brad Pitt
  39 | Morgan Freeman
  39 | Gwyneth Paltrow
  39 | Kevin Spacey
  39 | John C. McGinley
  39 | Richard Roundtree
  39 | R. Lee Ermey
  39 | Leland Orser
  39 | Richard Schiff
  40 | Arnold Schwarzenegger
  40 | Linda Hamilton
  40 | Edward Furlong
  40 | Robert Patrick
  40 | Earl Boen
  40 | Joe Morton
  40 | Jenette Goldstein
  41 | Jack Nicholson
  41 | Shelley Duvall
  41 | Danny Lloyd
  41 | Scatman Crothers
  41 | Barry Nelson
  41 | Philip Stone
  41 | Joe Turkel
  41 | Lia Beldman
  41 | Billie Gibson
  41 | Barry Denne
  41 | David Baxt
  41 | Manning Redwood
  41 | Kisa Burns
  41 | Louise Burns
  41 | Alison Coleridge
  41 | Norman Gay
  42 | Tommy Lee Jones
  42 | Will Smith
  42 | Linda Fiorentino
  42 | Vincent DOnofrio
  42 | Sergio Calder├│n
  42 | Rip Torn
  42 | Siobhan Fallon
  42 | Tony Shalhoub
  42 | Verne Troyer
  43 | Tobey Maguire
  43 | Kirsten Dunst
  43 | Willem Dafoe
  43 | James Franco
  43 | Rosemary Harris
  43 | Cliff Robertson
  43 | J.K. Simmons
  43 | Bruce Campbell
  43 | Bill Nunn
  43 | Stan Lee
  44 | Michael J. Fox
  44 | Christopher Lloyd
  44 | Lea Thompson
  44 | Thomas F. Wilson
  44 | Elisabeth Shue
  44 | Charles Fleischer
  44 | Joe Flaherty
  44 | Harry Waters Jr.
  44 | Billy Zane
  45 | Jim Carrey
  45 | Laura Linney
  45 | Noah Emmerich
  45 | Natascha McElhone
  45 | Ed Harris
  45 | Holland Taylor
  45 | Paul Giamatti
  46 | Animada
  47 | Animada
  48 | Mark Hamill
  48 | Harrison Ford
  48 | Carrie Fisher
  48 | Peter Cushing
  48 | Alec Guinness
  48 | David Prowse
  48 | Peter Mayhew
  48 | Anthony Daniels
  48 | Kenny Baker
  48 | Phil Brown
  48 | Shelagh Fraser
  48 | Alex McCrindle
  48 | Jack Purvis
  49 | Cary Elwes
  49 | Leigh Whannell
  49 | Danny Glover
  49 | Monica Potter
  49 | Dina Meyer
  49 | Tobin Bell
  49 | Shawnee Smith
  49 | Ken Leung
  49 | Alexandra Bokyun Chun
  49 | Michael Emerson
  50 | Arnold Schwarzenegger
  50 | Linda Hamilton
  50 | Michael Biehn
  50 | Paul Winfield
  50 | Lance Henriksen
  50 | Rick Rossovich
  50 | Bess Motta
  50 | Earl Boen
  50 | Dick Miller
  50 | Bill Paxton
  51 | Uma Thurman
  51 | Lucy Liu
  51 | Daryl Hannah
  51 | Vivica A. Fox
  51 | Sonny Chiba
  51 | Chiaki Kuriyama
  51 | Michael Bowen
  51 | Julie Dreyfus
  51 | Michael Parks
  51 | David Carradine
  51 | Michael Madsen
  52 | Vivien Leigh
  52 | Clark Gable
  52 | Olivia de Havilland
  52 | Leslie Howard
  52 | Hattie McDaniel
  52 | Thomas Mitchell
  52 | Barbara ONeil
  52 | Butterfly McQueen
  52 | Ona Munson
  52 | Ann Rutherford
  52 | Evelyn Keyes
  53 | Ivana Baquero
  53 | Sergi L├│pez
  53 | Maribel Verd├║
  53 | Doug Jones
  53 | Ariadna Gil
  53 | Alex Angulo
  53 | Federico Luppi
  53 | Roger Casamajor
  53 | Fernando Tielve
  53 | Pepa Pedroche
  54 | Animada
  55 | Animada
  56 | Al Pacino
  56 | Michelle Pfeiffer
  56 | Steven Bauer
  56 | Mary Elizabeth Mastrantonio
  56 | Robert Loggia
  56 | F. Murray Abraham
  56 | Miriam Colon
  56 | Harris Yulin
  56 | Paul Shenar
  57 | Naomi Watts
  57 | Adrien Brody
  57 | Jack Black
  57 | Thomas Kretschmann
  57 | Jamie Bell
  57 | Lobo Chan
  57 | Kyle Chandler
  57 | Colin Hanks
  57 | Evan Parke
  57 | Andy Serkis
  57 | Ray Woolf
  58 | Charlton Heston
  58 | Jack Hawkins
  58 | Stephen Boyd
  58 | Haya Harareet
  58 | Hugh Griffith
  58 | Martha Scott
  58 | Cathy ODonnell
  58 | Sam Jaffe
  58 | Frank Thring
  58 | Terence Longdon
  58 | George Relph
  58 | Andr├® Morell
  58 | Finlay Currie
  59 | Harrison Ford
  59 | Sean Connery
  59 | Alison Doody
  59 | Denholm Elliott
  59 | River Phoenix
  59 | John Rhys-Davies
  59 | Julian Glover
  59 | Bradley Gregg
  59 | Andre Gregory
  60 | Leonardo DiCaprio
  60 | Matt Damon
  60 | Jack Nicholson
  60 | Mark Wahlberg
  60 | Alec Baldwin
  60 | Martin Sheen
  60 | Ray Winstone
  60 | Vera Farmiga
  60 | Anthony Anderson
  61 | Tom Cruise
  91 | Brad Pitt
  91 | Christian Slater
  91 | Antonio Banderas
  91 | Stephen Rea
  91 | Kirsten Dunst
  91 | Domiziana Giordano
  91 | Sara Stockbridge
  91 | Thandie Newton
  62 | Christian Bale
  62 | Liam Neeson
  62 | Katie Holmes
  62 | Cillian Murphy
  62 | Michael Caine
  62 | Morgan Freeman
  62 | Gary Oldman
  62 | Ken Watanabe
  62 | Tom Wilkinson
  62 | Rutger Hauer
  62 | Mark Boone Junior
  62 | Linus Roache
  62 | Rade Serbedzija
  62 | Richard Brake
  62 | Christine Adams
  62 | Jack Gleeson
  63 | Harrison Ford
  63 | Karen Allen
  63 | Paul Freeman
  63 | Ronald Lacey
  63 | John Rhys-Davies
  63 | Denholm Elliott
  63 | Wolf Kahler
  63 | Alfred Molina
  64 | Ewan McGregor
  64 | Natalie Portman
  64 | Hayden Christensen
  64 | Samuel L. Jackson
  64 | Ian McDiarmid
  64 | Ahmed Best
  64 | Anthony Daniels
  64 | Frank Oz
  64 | Andrew Secombe
  64 | Silas Carson
  64 | Kenny Baker
  64 | Christopher Lee
  64 | Jimmy Smits
  64 | Peter Mayhew
  64 | Keisha Castle-Hughes
  64 | Trisha Noble
  64 | Bruce Spence
  64 | Temuera Morrison
  65 | Sigourney Weaver
  65 | John Hurt
  65 | Yaphet Kotto
  65 | Tom Skerritt
  65 | Veronica Cartwright
  65 | Harry Dean Stanton
  65 | Ian Holm
  66 | Clint Eastwood
  66 | Lee Van Cleef
  66 | Eli Wallach
  66 | Aldo Giuffr├¿
  66 | Mario Brega
  66 | Luigi Scarchilli
  66 | Rada Rassimov
  67 | Mark Hamill
  67 | Harrison Ford
  67 | Carrie Fisher
  67 | Alec Guinness
  67 | Billy Dee Williams
  67 | Anthony Daniels
  67 | David Prowse
  67 | Kenny Baker
  68 | Al Pacino
  68 | Diane Keaton
  68 | Andy Garc├¡a
  68 | Joe Mantegna
  68 | Talia Shire
  68 | Eli Wallach
  68 | Sofia Coppola
  68 | George Hamilton
  68 | Raf Vallone
  68 | Bridget Fonda
  68 | Helmut Berger
  68 | John Savage
  68 | Franco Citti
  69 | Mark Hamill
  69 | Harrison Ford
  69 | Carrie Fisher
  69 | Billy Dee Williams
  69 | Anthony Daniels
  69 | Peter Mayhew
  69 | Frank Oz
  69 | Alec Guinness
  69 | Kenny Baker
  69 | Sebastian Shaw
  69 | Warwick Davis
  69 | Dave Prowse
  70 | Jack Black
  70 | Joan Cusack
  70 | Mike White
  70 | Sarah Silverman
  70 | Joey Gaydos
  70 | Miranda Cosgrove
  70 | Maryam Hassan
  70 | Kevin Alexander Clark
  70 | Rebecca Brown
  70 | Robert Tsai
  70 | Caitlin Hale
  70 | Aleisha Allen
  70 | Brian Falduto
  70 | Zachary Infante
  70 | James Hosey
  70 | Angelo Massagli
  70 | Cole Hawkins
  70 | Veronica Afflerbach
  71 | Charlton Heston
  71 | Roddy McDowall
  71 | Kim Hunter
  71 | Maurice Evans
  71 | James Whitmore
  71 | James Daly
  71 | Linda Harrison
  72 | Sylvester Stallone
  72 | Richard Crenna
  72 | Brian Dennehy
  72 | David Caruso
  72 | Jack Starrett
  72 | Michael Talbott
  72 | Chris Mulkey
  73 | Matthew Modine
  73 | Vincent DOnofrio
  73 | R. Lee Ermey
  73 | Adam Baldwin
  73 | Dorian Harewood
  73 | Arliss Howard
  73 | Kevyn Major Howard
  73 | Ed ORoss
  73 | Gary Landon Mills
  73 | Sal L├│pez
  73 | John Stafford
  73 | Kieron Jecchinis
  73 | Ngc Le
  73 | Papillon Soo Soo
  74 | Roy Scheider
  74 | Robert Shaw
  74 | Richard Dreyfuss
  74 | Lorraine Gary
  74 | Murray Hamilton
  74 | Carl Gottlieb
  74 | Jeffrey C. Kramer
  75 | Jean Reno
  75 | Natalie Portman
  75 | Gary Oldman
  75 | Danny Aiello
  75 | Samy Nacery
  75 | Peter Apple
  75 | Michael Badalucco
  75 | Ellen Greene
  75 | Elizabeth Regen
  75 | Ma├»wenn Le Besco
  76 | Kevin Spacey
  76 | Annette Bening
  76 | Thora Birch
  76 | Allison Janney
  76 | Peter Gallagher
  76 | Mena Suvari
  76 | Wes Bentley
  76 | Chris Cooper
  76 | Scott Bakula
  76 | Sam Robards
  76 | Barry Del Sherman
  77 | Humphrey Bogart
  77 | Ingrid Bergman
  77 | Paul Henreid
  77 | Claude Rains
  77 | Conrad Veidt
  77 | Sydney Greenstreet
  77 | Peter Lorre
  77 | S.Z. Sakall
  77 | Madeleine LeBeau
  77 | Dooley Wilson
  77 | Joy Page
  77 | John Qualen
  77 | Leonid Kinskey
  77 | Curt Bois
  78 | Audrey Tautou
  78 | Mathieu Kassovitz
  78 | Rufus
  78 | Lorella Cravotta
  78 | Serge Merlin
  78 | Jamel Debbouze
  78 | Claire Maurier
  78 | Clotilde Mollet
  78 | Isabelle Nanty
  78 | Dominique Pinon
  78 | Artus de Penguern
  78 | Yolande Moreau
  78 | Urbain Cancelier
  78 | Maurice Benichou
  79 | Ewan McGregor
  79 | Robert Carlyle
  79 | Jonny Lee Miller
  79 | Ewen Bremner
  79 | Kelly MacDonald
  79 | Kevin McKidd
  79 | Peter Mullan
  80 | Robert De Niro
  80 | Cybill Shepherd
  80 | Jodie Foster
  80 | Albert Brooks
  80 | Harvey Keitel
  80 | Peter Boyle
  80 | Leonard Harris
  80 | Martin Scorsese
  81 | Jack Nicholson
  81 | Louise Fletcher
  81 | William Redfield
  81 | Will Sampson
  81 | Brad Dourif
  81 | Christopher Lloyd
  81 | Danny DeVito
  81 | Scatman Crothers
  82 | Uma Thurman
  82 | David Carradine
  82 | Michael Madsen
  82 | Daryl Hannah
  82 | Gordon Liu
  82 | Michael Parks
  82 | Bo Svenson
  82 | Christopher Allen Nelson
  82 | Sid Haig
  82 | Samuel L. Jackson
  83 | Tobey Maguire
  83 | Kirsten Dunst
  83 | Alfred Molina
  83 | James Franco
  83 | Elizabeth Banks
  83 | Bruce Campbell
  83 | Rosemary Harris
  83 | J.K. Simmons
  83 | Vanessa Ferlito
  83 | Emily Deschanel
  83 | Stan Lee
  84 | Hugh Jackman
  84 | Patrick Stewart
  84 | Brian Cox
  84 | Ian McKellen
  84 | Halle Berry
  84 | Anna Paquin
  84 | Famke Janssen
  84 | James Marsden
  84 | Rebecca Romijn-Stamos
  84 | Alan Cumming
  84 | Aaron Stanford
  84 | Shawn Ashmore
  84 | Kelly Hu
  84 | Bruce Davison
  84 | Katie Stuart
  84 | Kea Wong
  84 | Cotter Smith
  84 | Bryce Hodgson
  84 | Shauna Kain
  84 | Ty Olsson
  84 | Daniel Cudmore
  84 | James Kirk
  84 | Jill Teed
  84 | Alf Humphreys
  85 | Shia LaBeouf
  85 | Megan Fox
  85 | Jon Voight
  85 | John Turturro
  85 | Josh Duhamel
  85 | Tyrese Gibson
  85 | Bernie Mac
  85 | Michael ONeill
  85 | Julie White
  85 | Rachael Taylor
  85 | Kevin Dunn
  85 | Amaury Nolasco
  85 | Ronnie Sperling
  85 | Anthony Anderson
  86 | Liam Neeson
  86 | Ewan McGregor
  86 | Natalie Portman
  86 | Jake Lloyd
  86 | Samuel L. Jackson
  86 | Ian McDiarmid
  86 | Anthony Daniels
  86 | Kenny Baker
  86 | Pernilla August
  86 | Frank Oz
  86 | Ray Park
  86 | Terence Stamp
  86 | Keira Knightley
  87 | Harrison Ford
  87 | Sean Young
  87 | Daryl Hannah
  87 | Rutger Hauer
  87 | Edward James Olmos
  87 | Joanna Cassidy
  87 | Brion James
  87 | Joe Turkel
  88 | Martin Sheen
  88 | Marlon Brando
  88 | Robert Duvall
  88 | Laurence Fishburne
  88 | Frederic Forrest
  88 | Sam Bottoms
  88 | Albert Hall
  88 | Dennis Hopper
  88 | Harrison Ford
  88 | G.D Spradlin
  88 | Colleen Camp
  89 | Jack Nicholson
  89 | Helen Hunt
  89 | Greg Kinnear
  89 | Cuba Gooding Jr.
  89 | Skeet Ulrich
  89 | Shirley Knight
  89 | Jesse James
  89 | Lawrence Kasdan
  89 | Yeardley Smith
  89 | Lupe Ontiveros
  89 | Maya Rudolph
  89 | Tara Subkoff
  89 | Lisa Edelstein
  89 | Jamie Kennedy
  89 | Harold Ramis
  89 | Julie Benz
  90 | John Cleese
  90 | Michael Palin
  90 | Graham Chapman
  90 | Eric Idle
  90 | Terry Jones
  90 | Terry Gilliam
  90 | Sue Jones-Davies
  90 | Carol Cleveland
  90 | Terence Bayler
  91 | Animada
  92 | Bill Murray
  92 | Sigourney Weaver
  92 | Dan Aykroyd
  92 | Harold Ramis
  92 | Rick Moranis
  92 | William Atherton
  92 | Annie Potts
  92 | Ernie Hudson
  92 | Reginald VelJohnson
  93 | Johnny Depp
  93 | Helena Bonham Carter
  93 | Sacha Baron Cohen
  93 | Alan Rickman
  93 | Timothy Spall
  94 | George Clooney
  94 | Julia Roberts
  94 | Matt Damon
  94 | Andy Garc├¡a
  94 | Brad Pitt
  94 | Casey Affleck
  94 | Scott Caan
  94 | Elliott Gould
  94 | Bernie Mac
  94 | Carl Reiner
  94 | Don Cheadle
  94 | Topher Grace
  94 | Joshua Jackson
  94 | Holly Marie Combs
  94 | Shane West
  95 | Animada
  96 | Arnold Schwarzenegger
  96 | Carl Weathers
  96 | Elpidia Carrillo
  96 | Bill Duke
  96 | Kevin Peter Hall
  96 | Sonny Landham
  96 | R.G. Armstrong
  97 | Harrison Ford
  97 | Kate Capshaw
  97 | Jonathan Ke Quan
  97 | Amrish Puri
  97 | Philip Stone
  97 | Roshan Seth
  97 | David Yip
  97 | Ric Young
  98 | Robert De Niro
  98 | Ray Liotta
  98 | Joe Pesci
  98 | Lorraine Bracco
  98 | Samuel L. Jackson
  98 | Paul Sorvino
  98 | Debi Mazar
  98 | Mike Starr
  98 | Tony Darrow
  98 | Frank Sivero
  98 | Frank Vincent
  98 | Chuck Low
  98 | Frank DiLeo
  98 | Clem Caserta
  98 | Illeana Douglas
  98 | Melissa Prophet
  98 | Michael Imperioli
  98 | Tobin Bell
  99 | Nicole Kidman
  99 | Ewan McGregor
  99 | John Leguizamo
  99 | Jim Broadbent
  99 | Richard Roxburgh
  99 | David Wenham
  99 | Jacek Koman
  99 | Kylie Minogue
 100 | Anthony Perkins
 100 | Janet Leigh
 100 | John Gavin
 100 | Vera Miles
 100 | John McIntire
 100 | Martin Balsam
 100 | Simon Oakland
 100 | Patricia Hitchcock
(1050 filas)

-- 3. Obtener el ID de la pelicula "Titanic"
SELECT id FROM peliculas WHERE peliculas = 'Titanic';

 id
----
  2
(1 fila)

-- 4. Listar a todos los actores que aparecen en la pelicula "Titanic"
SELECT * FROM reparto WHERE id = 2;

 id |       actor
----+-------------------
  2 | Leonardo DiCaprio
  2 | Kate Winslet
  2 | Billy Zane
  2 | Kathy Bates
  2 | Frances Fisher
  2 | Bernard Hill
  2 | Jonathan Hyde
  2 | Danny Nucci
  2 | David Warner
  2 | Bill Paxton
  2 | Gloria Stuart
  2 | Victor Garber
  2 | Suzy Amis
(13 filas)

-- 5. Consultar en cuántas películas del top 100 participa Harrison Ford
SELECT COUNT(id) AS contar_peliculas_harrison FROM reparto WHERE actor = 'Harrison Ford';

contar_peliculas_harrison
---------------------------
                         8
(1 fila)

-- 6. Indicar las peliculas estrenadas entre los años 1990 y 1999 ordenadas por titulo de manera ascendente
SELECT peliculas FROM peliculas WHERE ano_estreno > 1990 AND ano_estreno < 1999 ORDER BY peliculas ASC;

           peliculas
-------------------------------
 American History X
 Braveheart
 Cadena perpetua
 El profesional
 El show de Truman
 El silencio de los corderos
 Entrevista con el vampiro
 Forest Gump
 Hombres de negro
 La lista de Schindler
 Mejor... imposible
 Parque Jur├ísico
 Pesadilla antes de navidad
 Pulp Fiction
 Salvar al soldado Ryan
 Seven
 Terminator 2: el juicio final
 Titanic
 Toy Story
 Trainspotting
(20 filas)


-- 7. Hacer una consulta SQL que muestre los titulos con su longitud, la longitud debe ser nombrado para la consulta como "longitud_titulo"
SELECT peliculas, LENGTH(peliculas) AS longitud_titulo FROM peliculas;

                       peliculas                       | longitud_titulo
-------------------------------------------------------+-----------------
 Forest Gump                                           |              11
 Titanic                                               |               7
 El Padrino                                            |              10
 Gladiator                                             |               9
 El Se├▒or de los anillos: El retorno del rey          |              44
 El caballero oscuro                                   |              19
 Cadena perpetua                                       |              15
 Piratas del Caribe: La maldici├│n de la Perla Negra   |              51
 Braveheart                                            |              10
 La lista de Schindler                                 |              21
 Toy Story                                             |               9
 Eduardo Manostijeras                                  |              20
 El Se├▒or de los anillos: La comunidad del anillo     |              49
 Salvar al soldado Ryan                                |              22
 Regreso al futuro                                     |              17
 Monstruos S.A.                                        |              14
 Buscando a Nemo                                       |              15
 El Se├▒or de los anillos: Las dos torres              |              40
 Harry Potter y el Prisionero de Azkaban               |              39
 American History X                                    |              18
 300                                                   |               3
 El sexto sentido                                      |              16
 Pulp Fiction                                          |              12
 V de Vendetta                                         |              13
 El silencio de los corderos                           |              27
 Rocky                                                 |               5
 El club de la pelea                                   |              19
 E.T                                                   |               3
 Parque Jur├ísico                                      |              16
 Matrix                                                |               6
 La milla verde                                        |              14
 Ratatouille                                           |              11
 Grease                                                |               6
 El Padrino. Parte II                                  |              20
 Wall-E                                                |               6
 Iron Man                                              |               8
 El exorcista                                          |              12
 Piratas del Caribe: El cofre del hombre muerto        |              46
 Seven                                                 |               5
 Terminator 2: el juicio final                         |              29
 El resplandor                                         |              13
 Hombres de negro                                      |              16
 Spider-Man                                            |              10
 Regreso al futuro II                                  |              20
 El show de Truman                                     |              17
 Toy Story 2                                           |              11
 Pesadilla antes de navidad                            |              26
 Star Wars. Episodio IV: Una nueva esperanza           |              43
 Saw                                                   |               3
 Terminator                                            |              10
 Kill Bill Vol. 1                                      |              16
 Lo que el viento se llev├│                            |              26
 El Laberinto del Fauno                                |              22
 Los incre├¡bles                                       |              15
 El viaje de Chihiro                                   |              19
 El precio del poder                                   |              19
 King Kong                                             |               9
 Ben-Hur                                               |               7
 Indiana Jones y la ├║ltima cruzada                    |              34
 Infiltrados                                           |              11
 Entrevista con el vampiro                             |              25
 Batman Begins                                         |              13
 En busca del arca perdida                             |              25
 Star Wars. Episodio III: La venganza de los Sith      |              48
 Alien                                                 |               5
 El bueno el feo y el malo                             |              25
 Star Wars. Episodio V: El imperio contraataca         |              45
 El Padrino. Parte III                                 |              21
 Star Wars. Episodio VI: El retorno del Jedi           |              43
 Escuela de Rock                                       |              15
 El planeta de los simios                              |              24
 Rambo                                                 |               5
 Full Metal Jacket                                     |              17
 Tibur├│n                                              |               8
 El profesional                                        |              14
 American Beauty                                       |              15
 Casablanca                                            |              10
 Am├®lie                                               |               7
 Trainspotting                                         |              13
 axi driver                                            |              10
 Alguien vol├│ sobre el nido del cuco                  |              36
 Kill Bill Vol. 2                                      |              16
 Spider-Man 2                                          |              12
 X-Men 2                                               |               7
 Transformers                                          |              12
 Star Wars. Episodio I: La amenaza fantasma            |              42
 Blade Runner                                          |              12
 Apocalypse Now                                        |              14
 Mejor... imposible                                    |              18
 La vida de Brian                                      |              16
 El libro de la selva                                  |              20
 Los cazafantasmas                                     |              17
 Sweeney Todd: El barbero diab├│lico de la calle Fleet |              53
 Oceans Eleven                                        |              14
 Blancanieves y los siete enanitos                     |              33
 Predator                                              |               8
 Indiana Jones y el templo maldito                     |              33
 Uno de los nuestros                                   |              19
 Mouling Rouge                                         |              13
 Psicosis                                              |               8
(100 filas)

-- 8. Consultar cual es la longitud más grande entre todos los titulos de las peliculas
SELECT MAX(LENGTH(peliculas)) FROM peliculas;
 max
-----
  53
(1 fila)
