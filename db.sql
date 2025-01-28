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
        'HYDRATION 100 ml',
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
  'Exfoliating Toner 7% ',
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
  'Bronzing Powder 43',
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
  'NYX MAKEUP',
  'Waterproof Eyeliner',
  'eyeliner-black-NYX',
  '/images/eyelinerNYX.png',
  '235',
  '/images/rating.jpeg',
  '184',
  'NYX Professional Makeup Epic Ink Liner is a liquid eyeliner that allows you to create perfect lines. It has a waterproof formula with an intense black shade, making it perfect for both everyday and party occasions, ideal for those with an active lifestyle! It comes with a thin tip that lets you apply your lines with precision. Whether you prefer thin, discreet or thick and eye-catching lines, Epic Ink Liner lets you create the perfect look for every occasion.',
  'Rosin/Colophonium/Colophane, Barium Sulfate (Ci 7712), Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Red 7 (Ci 1585), Red 3, Microcrystalline Wax/Cera Microcristallina/Cire Microcristalline, Tocopherol, Ascorbyl Palmitate, Rosin/Colophonium/Colophane, Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Blue 1 Lake (Ci 429), Red 7 (Ci 1585).'
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'TOM FORD',
  'Lost Cherry Parfum  30',
  'parfum-TOM-FORD',
  '/images/parfumTOMFORD.png',
  '2450',
  '/images/rating.jpeg',
  '29',
  'Luscious. Tempting. Insatiable. Tom Ford Lost Cherry is a full-bodied journey into the once-forbidden: a contrasting scent that reveals a tempting dichotomy of playful, candy-like gleam on the outside and luscious flesh on the inside. Innocence intersects indulgence with an opening that captures the classic perfection of the exotic cherry fruit – Black Cherry’s ripe flesh dripping in cherry liqueur glistens with a teasing touch of Bitter Almond. The heart bursts forth in cherry waves of sweet and tart. ',
  'Alcohol denat., water\aqua\eau, fragrance (parfum), benzyl salicylate, linalool, hexyl cinnamal, alpha-isomethyl ionone, hydroxycitronellal, benzyl benzoate, geraniol, limonene, coumarin, cinnamyl alcohol, citronellol, eugenol, isoeugenol, benzyl alcohol, citral, amyl cinnamal, farnesol, cinnamal, amylcinnamyl alcohol, anise alcohol, methyl 2-octynoate, evernia prunastri (oakmoss) extract, evernia furfuracea (treemoss) extract, benzyl cinnamate,'
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'HUGO BOSS',
  'Sent Shower Gel 150 ml',
  'boss-the-scent-shower-gel',
  '/images/the_sentBOSS.png',
  '425',
  '/images/rating.jpeg',
  '98',
  'BOSS THE SCENT boasts an exclusive ingredient from South Africa, the aphrodisiac Maninka fruit which complex facets allude to rhum and passion fruit. Set on a virile leather base, its effect is potent, original, never to be forgotten. The fragrance opens on the aphrodisiac and spicy freshness of Ginger which provides the man who wears it with a stimulating energy. In the heart note,',
  'Rosin/Colophonium/Colophane, Barium Sulfate (Ci 7712), Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Red 7 (Ci 1585), Red 3, Microcrystalline Wax/Cera Microcristallina/Cire Microcristalline, Tocopherol, Ascorbyl Palmitate, Rosin/Colophonium/Colophane, Phenoxyethanol. May Contain / Peut Contenir (+/-): Mica, Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Blue 1 Lake (Ci 429), Red 7 (Ci 1585).'
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'LYUxLYU',
  'First Letter Eyeshadow',
  'the-first-letter-eyeshadow-palette-LYUxLYU',
  '/images/eyeshadowLYUxLYU.png',
  '399',
  '/images/rating.jpeg',
  '142',
  'The First Letter Eyeshadow Palette is LOWD’s debut palette, specially designed by Felicia Aveklew to meet a wide range of needs. Featuring matte neutrals, bold pops of color, and creamy shimmer shades, it allows you to create anything from a subtle everyday look to experimental makeup for a night out or a festival. The palette is entirely vegan and cruelty-free, with packaging made in large part from recycled plastic.',
  'Mica, Boron Nitride, Diisostearyl Malate, Dimethicone, Magnesium Stearate, Silica, Hydrogenated Lecithin, Glyceryl Caprylate, Pentylene Glycol, Dimethiconol, Magnolia Officinalis Bark Extract, Alumina, Magnesium Oxide, Caprylyl Methicone, Diethiconol, Octyldodecyl Stearoyl Stearate, Synthetic Fluorphlogopite, Trimethylsiloxysilicate, Tin Oxide, Isononyl Isononanoate, Calcium Sodium Borosilicate.May Contain +/- Ci 77891, Ci 77491, Ci 77492, Ci 77499, Ci 42090, Ci 77742, Ci 19140 '
);

INSERT INTO products (
  brand, name, urlSlug, image, price, rating, reviews, description, ingredients
) VALUES (
  'Woods CPH',
  'Nourishing Conditioner',
  'woods-copenhagen-nourishing-conditioner',
  '/images/conditionerWOODS.png',
  '429',
  '/images/rating.jpeg',
  '32',
  'A deeply hydrating, moisturizing, and nourishing conditioner for dry, thick, and curly hair. Formulated to soften, hydrate, and condition the hair shaft while offering repairing and strengthening benefits to each hair strand, making hair more manageable. With a subtle scent of rose, citrus, and freesia.',
  'Aqua*, Cetearyl Alcohol*, Behentrimonium Chloride*, Cetyl Alcohol, C15-19 Alkane**, Stearyl Alcohol*, Behenyl Alcohol*, Cetrimonium Chloride*, Dipropylene Glycol, Phenoxyethanol, Parfum*, Butyrospermum Parkii Butter*, Canola Oil**, Butylene Glycol, Glycerin*, Hydrolyzed Rice Protein*, Rosa Canina Fruit Oil**, Ethylhexylglycerin, Hydrolyzed Wheat Protein*, Aloe Barbadensis Leaf Juice Powder**, Helianthus Annuus Seed Extract*, Lactic Acid*'
);

