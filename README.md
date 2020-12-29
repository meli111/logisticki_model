# logisticki_model
Logistički model za rast populacije.
Program je pisan za GNU Octave i MATLAB.
Prvi deo programa je sama funkcija koja se može iskoristiti za pojedinačni račun i crtanje grafika.
Drugi deo programa je funkcija za fitovanje podataka za logistički model.
Treći deo programa su početne vrednosti za fitovanje, dobijene u ranim fazama testiranja programa.
Program uzima već izmerene vrednosti i vremena merenja i vraća parametre modela koji najbolje opisuju date podatke, prema prethodno zadatim parametrima.
Primer poziva: [xM,resnormm,exitflagm,ind] = fitlog('testpod.mat')
