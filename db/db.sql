DROP TABLE products;

CREATE TABLE products (
  id INTEGER PRIMARY KEY,
      brand TEXT,
      name TEXT,
      urlSlug TEXT,
      image TEXT,
      price TEXT,
      rating TEXT,
      reviews TEXT,
      description TEXT,
      ingredients TEXT
);

INSERT INTO products (
      brand,
      name,
      urlSlug,
      image,
      price,
      rating,
      reviews,
      description,
      ingredients
  )VALUES (
        'CAIA',
        'THAT EXTRA HYDRATION 100 ml / 3,38 us fl. oz.',
        'that-extra-hydration-CAIA',
        '/images/extra_hydrationCAIA.png',
        '210',
        '/images/rating.jpeg',
        '856',
        'That Extra Hydration is a two-in-one setting and hydration spray that helps to set and melt makeup together into a seamless look. Whether used on a bare face or over makeup, it gives your skin an immediate hydration boost thanks to its infused antioxidant-rich extracts from prickly pear for a soothing feel. Bring it with you for a refreshing feel and elevate your look anytime, anywhere.',
        'AQUA, PROPANEDIOL, PVP, ANASTATICA HIEROCHUNTICA EXTRACT, PHENOXYETHANOL, ETHYLHEXYLGLYCERIN, PARFUM, PPG-26-BUTETH-26, GLYCERIN, PEG-40 HYDROGENATED CASTOR OIL, XYLITYLGLUCOSIDE, ANHYDROXYLITOL, OPUNTIA FICUS-INDICA STEM EXTRACT, LACTOBACILLUS FERMENT, XYLITOL, GLUCOSE, CITRIC ACID, SODIUM HYDROXIDE, SODIUM BENZOATE, POTASSIUM SORBATE'
  );

  INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'The Ordinary',
  'Glycolic Acid 7% Exfoliating Toner 240 ml',
  'glycolic-acid-toner',
  '/images/tonerTHEORDINARY.png',
  '320',
  '/images/rating.jpeg',
  '440',
  'Glycolic Acid 7% Exfoliating Toner (previously Glycolic Acid 7% Toning Solution) is an exfoliator that significantly smoothes skin texture and promotes the appearance of a more even skin tone, as well as more luminous skin, with regular use. It also reduces the appearance of lines and wrinkles. The water-based toner format is suited to daily use.',
  'Aqua (Water), Glycolic Acid, Rosa damascena flower water, Centaurea cyanus flower water, Aloe Barbadensis Leaf Water, Propanediol, Glycerin, Triethanolamine, Aminomethyl Propanol, Panax Ginseng Root Extract, Tasmannia Lanceolata Fruit/Leaf Extract, Aspartic Acid, Alanine, Glycine, Serine, Valine, Isoleucine, Proline, Threonine, Histidine, Phenylalanine.'
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'IsaDora',
  'The Bronzing Powder 43 Terracotta Bronze',
  'face-powderISADORA',
  '/images/face_powderISADORA.png',
  '189',
  '/images/rating.jpeg',
  '212',
  'A pressed bronzing powder with silky-smooth texture for a natural sun-kissed look. With our iconic Bronzing Powder you will make sure to keep that fresh, sun-kissed look all year long. The solid pressed powder has a soft, silky-smooth texture and buildable formula that blends seamlessly, melts onto skin and provides a natural.',
  'Mica, Octyldodecyl Stearoyl Stearate, Zea Mays Starch/Zea Mays (Corn) Starch, Magnesium Myristate, Calcium Sodium Borosilicate, Caprylyl Glycol, Phenoxyethanol, Hexylene Glycol, Tin Oxide, CI 77891/Titanium Dioxide, CI 77491, CI 77492, CI 77499/Iron Oxides, CI 15850/Red 7 Lake.'
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'NYX PROFESSIONAL MAKEUP',
  'Waterproof Liquid Eyeliner Black',
  'eyeliner-black-NYX',
  '/images/eyelinerNYX.png',
  '235',
  '/images/rating.jpeg',
  '184',
  'NYX Professional Makeup Epic Ink Liner is a liquid eyeliner that allows you to create perfect lines. It has a waterproof formula with an intense black shade, making it perfect for both everyday and party occasions, ideal for those with an active lifestyle! It comes with a thin tip that lets you apply your lines with precision. Whether you prefer thin, discreet or thick and eye-catching lines, Epic Ink Liner lets you create the perfect look for every occasion.',
  'Rosin/Colophonium/Colophane, Barium Sulfate (Ci 7712), Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Red 7 (Ci 1585), Red 3, Microcrystalline Wax/Cera Microcristallina/Cire Microcristalline, Tocopherol, Ascorbyl Palmitate, Rosin/Colophonium/Colophane, Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Blue 1 Lake (Ci 429), Red 7 (Ci 1585).'
);