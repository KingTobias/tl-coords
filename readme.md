# TL-COORDS Brukerveiledning

Denne veiledningen viser hvordan du bruker TL-COORDS steg for steg.

## Steg 1

- Start scriptet ved å kjøre `ensure tl-coords` i serverkonfigurasjonen.

## Steg 2

- For å hente ut **vector3** koordinater:
  - Skriv `/addcoords3` i chatten for å legge til en koordinat.
  - Etter du har lagt inn alle koordinatene du trenger, bruk `/closecoords3` for å lagre koordinatene i `config3.lua`.

## Steg 3

- Gjenta dette for alle koordinatene du skal bruke, spesielt når du trenger mange koordinater til et bestemt område.

## Steg 4

- Når du er ferdig, kan du hente ut alle **vector3** koordinatene fra `config3.lua`.

## Vector2 koordinater

- For å hente ut **vector2** koordinater, følg samme prosess som for vector3, men bruk kommandoene:
  - `/addcoords2` for å legge til vector2 koordinater.
  - `/closecoords2` for å lagre disse i `config2.lua`.

## Vector4 koordinater

- Henting av **vector4** koordinater er under utvikling og vil komme i en fremtidig oppdatering!


ENGLISH VERSION

# How to Use TL-COORDS Step by Step

## Step 1
- Start the script: ensure `tl-coords`

## Step 2
To extract vector3 coordinates, use the command `/addcoords3`. After entering this command in the chat, use `/closecoords3` to save the coordinates into `config3.lua`.

## Step 3
Repeat this process for all the coordinates you need for a location requiring multiple coordinates.

## Step 4
You can retrieve all the vector3 coordinates from `config3.lua`.

For vector2 coordinates, follow the same steps, but use `/addcoords2` and `/closecoords2` instead. These coordinates will be saved in `config2.lua`.

> Note: Vector4 coordinate extraction is coming soon!

Copyright © 2024
