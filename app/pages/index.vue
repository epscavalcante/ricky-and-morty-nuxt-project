<template>
  <main class="w-full max-w-[1240px] mx-auto flex flex-col gap-16">
    <AppCharacterSection :characters="characters" />
    <AppEpisodeSection :episodes="episodes" />
    <AppLocationSection :locations="locations"/>
  </main>
</template>

<script setup>
const charactersData = [
  {
    "id": 1,
    "name": "Rick Sanchez",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Male",
    "origin": {
      "name": "Earth (C-137)",
      "url": "https://rickandmortyapi.com/api/location/1"
    },
    "location": {
      "name": "Citadel of Ricks",
      "url": "https://rickandmortyapi.com/api/location/3"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/1",
      "https://rickandmortyapi.com/api/episode/2",
      "https://rickandmortyapi.com/api/episode/3",
      "https://rickandmortyapi.com/api/episode/4",
      "https://rickandmortyapi.com/api/episode/5",
      "https://rickandmortyapi.com/api/episode/6",
      "https://rickandmortyapi.com/api/episode/7",
      "https://rickandmortyapi.com/api/episode/8",
      "https://rickandmortyapi.com/api/episode/9",
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11",
      "https://rickandmortyapi.com/api/episode/12",
      "https://rickandmortyapi.com/api/episode/13",
      "https://rickandmortyapi.com/api/episode/14",
      "https://rickandmortyapi.com/api/episode/15",
      "https://rickandmortyapi.com/api/episode/16",
      "https://rickandmortyapi.com/api/episode/17",
      "https://rickandmortyapi.com/api/episode/18",
      "https://rickandmortyapi.com/api/episode/19",
      "https://rickandmortyapi.com/api/episode/20",
      "https://rickandmortyapi.com/api/episode/21",
      "https://rickandmortyapi.com/api/episode/22",
      "https://rickandmortyapi.com/api/episode/23",
      "https://rickandmortyapi.com/api/episode/24",
      "https://rickandmortyapi.com/api/episode/25",
      "https://rickandmortyapi.com/api/episode/26",
      "https://rickandmortyapi.com/api/episode/27",
      "https://rickandmortyapi.com/api/episode/28",
      "https://rickandmortyapi.com/api/episode/29",
      "https://rickandmortyapi.com/api/episode/30",
      "https://rickandmortyapi.com/api/episode/31",
      "https://rickandmortyapi.com/api/episode/32",
      "https://rickandmortyapi.com/api/episode/33",
      "https://rickandmortyapi.com/api/episode/34",
      "https://rickandmortyapi.com/api/episode/35",
      "https://rickandmortyapi.com/api/episode/36",
      "https://rickandmortyapi.com/api/episode/37",
      "https://rickandmortyapi.com/api/episode/38",
      "https://rickandmortyapi.com/api/episode/39",
      "https://rickandmortyapi.com/api/episode/40",
      "https://rickandmortyapi.com/api/episode/41",
      "https://rickandmortyapi.com/api/episode/42",
      "https://rickandmortyapi.com/api/episode/43",
      "https://rickandmortyapi.com/api/episode/44",
      "https://rickandmortyapi.com/api/episode/45",
      "https://rickandmortyapi.com/api/episode/46",
      "https://rickandmortyapi.com/api/episode/47",
      "https://rickandmortyapi.com/api/episode/48",
      "https://rickandmortyapi.com/api/episode/49",
      "https://rickandmortyapi.com/api/episode/50",
      "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/1",
    "created": "2017-11-04T18:48:46.250Z"
  },
  {
    "id": 2,
    "name": "Morty Smith",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Male",
    "origin": {
      "name": "unknown",
      "url": ""
    },
    "location": {
      "name": "Citadel of Ricks",
      "url": "https://rickandmortyapi.com/api/location/3"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/1",
      "https://rickandmortyapi.com/api/episode/2",
      "https://rickandmortyapi.com/api/episode/3",
      "https://rickandmortyapi.com/api/episode/4",
      "https://rickandmortyapi.com/api/episode/5",
      "https://rickandmortyapi.com/api/episode/6",
      "https://rickandmortyapi.com/api/episode/7",
      "https://rickandmortyapi.com/api/episode/8",
      "https://rickandmortyapi.com/api/episode/9",
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11",
      "https://rickandmortyapi.com/api/episode/12",
      "https://rickandmortyapi.com/api/episode/13",
      "https://rickandmortyapi.com/api/episode/14",
      "https://rickandmortyapi.com/api/episode/15",
      "https://rickandmortyapi.com/api/episode/16",
      "https://rickandmortyapi.com/api/episode/17",
      "https://rickandmortyapi.com/api/episode/18",
      "https://rickandmortyapi.com/api/episode/19",
      "https://rickandmortyapi.com/api/episode/20",
      "https://rickandmortyapi.com/api/episode/21",
      "https://rickandmortyapi.com/api/episode/22",
      "https://rickandmortyapi.com/api/episode/23",
      "https://rickandmortyapi.com/api/episode/24",
      "https://rickandmortyapi.com/api/episode/25",
      "https://rickandmortyapi.com/api/episode/26",
      "https://rickandmortyapi.com/api/episode/27",
      "https://rickandmortyapi.com/api/episode/28",
      "https://rickandmortyapi.com/api/episode/29",
      "https://rickandmortyapi.com/api/episode/30",
      "https://rickandmortyapi.com/api/episode/31",
      "https://rickandmortyapi.com/api/episode/32",
      "https://rickandmortyapi.com/api/episode/33",
      "https://rickandmortyapi.com/api/episode/34",
      "https://rickandmortyapi.com/api/episode/35",
      "https://rickandmortyapi.com/api/episode/36",
      "https://rickandmortyapi.com/api/episode/37",
      "https://rickandmortyapi.com/api/episode/38",
      "https://rickandmortyapi.com/api/episode/39",
      "https://rickandmortyapi.com/api/episode/40",
      "https://rickandmortyapi.com/api/episode/41",
      "https://rickandmortyapi.com/api/episode/42",
      "https://rickandmortyapi.com/api/episode/43",
      "https://rickandmortyapi.com/api/episode/44",
      "https://rickandmortyapi.com/api/episode/45",
      "https://rickandmortyapi.com/api/episode/46",
      "https://rickandmortyapi.com/api/episode/47",
      "https://rickandmortyapi.com/api/episode/48",
      "https://rickandmortyapi.com/api/episode/49",
      "https://rickandmortyapi.com/api/episode/50",
      "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/2",
    "created": "2017-11-04T18:50:21.651Z"
  },
  {
    "id": 3,
    "name": "Summer Smith",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Female",
    "origin": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "location": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/3.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/6",
      "https://rickandmortyapi.com/api/episode/7",
      "https://rickandmortyapi.com/api/episode/8",
      "https://rickandmortyapi.com/api/episode/9",
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11",
      "https://rickandmortyapi.com/api/episode/12",
      "https://rickandmortyapi.com/api/episode/14",
      "https://rickandmortyapi.com/api/episode/15",
      "https://rickandmortyapi.com/api/episode/16",
      "https://rickandmortyapi.com/api/episode/17",
      "https://rickandmortyapi.com/api/episode/18",
      "https://rickandmortyapi.com/api/episode/19",
      "https://rickandmortyapi.com/api/episode/20",
      "https://rickandmortyapi.com/api/episode/21",
      "https://rickandmortyapi.com/api/episode/22",
      "https://rickandmortyapi.com/api/episode/23",
      "https://rickandmortyapi.com/api/episode/24",
      "https://rickandmortyapi.com/api/episode/25",
      "https://rickandmortyapi.com/api/episode/26",
      "https://rickandmortyapi.com/api/episode/27",
      "https://rickandmortyapi.com/api/episode/29",
      "https://rickandmortyapi.com/api/episode/30",
      "https://rickandmortyapi.com/api/episode/31",
      "https://rickandmortyapi.com/api/episode/32",
      "https://rickandmortyapi.com/api/episode/33",
      "https://rickandmortyapi.com/api/episode/34",
      "https://rickandmortyapi.com/api/episode/35",
      "https://rickandmortyapi.com/api/episode/36",
      "https://rickandmortyapi.com/api/episode/38",
      "https://rickandmortyapi.com/api/episode/39",
      "https://rickandmortyapi.com/api/episode/40",
      "https://rickandmortyapi.com/api/episode/41",
      "https://rickandmortyapi.com/api/episode/42",
      "https://rickandmortyapi.com/api/episode/43",
      "https://rickandmortyapi.com/api/episode/44",
      "https://rickandmortyapi.com/api/episode/45",
      "https://rickandmortyapi.com/api/episode/46",
      "https://rickandmortyapi.com/api/episode/47",
      "https://rickandmortyapi.com/api/episode/48",
      "https://rickandmortyapi.com/api/episode/49",
      "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/3",
    "created": "2017-11-04T19:09:56.428Z"
  },
  {
    "id": 4,
    "name": "Beth Smith",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Female",
    "origin": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "location": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/4.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/6",
      "https://rickandmortyapi.com/api/episode/7",
      "https://rickandmortyapi.com/api/episode/8",
      "https://rickandmortyapi.com/api/episode/9",
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11",
      "https://rickandmortyapi.com/api/episode/12",
      "https://rickandmortyapi.com/api/episode/14",
      "https://rickandmortyapi.com/api/episode/15",
      "https://rickandmortyapi.com/api/episode/16",
      "https://rickandmortyapi.com/api/episode/18",
      "https://rickandmortyapi.com/api/episode/19",
      "https://rickandmortyapi.com/api/episode/20",
      "https://rickandmortyapi.com/api/episode/21",
      "https://rickandmortyapi.com/api/episode/22",
      "https://rickandmortyapi.com/api/episode/23",
      "https://rickandmortyapi.com/api/episode/24",
      "https://rickandmortyapi.com/api/episode/25",
      "https://rickandmortyapi.com/api/episode/26",
      "https://rickandmortyapi.com/api/episode/27",
      "https://rickandmortyapi.com/api/episode/28",
      "https://rickandmortyapi.com/api/episode/29",
      "https://rickandmortyapi.com/api/episode/30",
      "https://rickandmortyapi.com/api/episode/31",
      "https://rickandmortyapi.com/api/episode/32",
      "https://rickandmortyapi.com/api/episode/33",
      "https://rickandmortyapi.com/api/episode/34",
      "https://rickandmortyapi.com/api/episode/35",
      "https://rickandmortyapi.com/api/episode/36",
      "https://rickandmortyapi.com/api/episode/38",
      "https://rickandmortyapi.com/api/episode/39",
      "https://rickandmortyapi.com/api/episode/40",
      "https://rickandmortyapi.com/api/episode/41",
      "https://rickandmortyapi.com/api/episode/42",
      "https://rickandmortyapi.com/api/episode/43",
      "https://rickandmortyapi.com/api/episode/44",
      "https://rickandmortyapi.com/api/episode/45",
      "https://rickandmortyapi.com/api/episode/46",
      "https://rickandmortyapi.com/api/episode/47",
      "https://rickandmortyapi.com/api/episode/48",
      "https://rickandmortyapi.com/api/episode/49",
      "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/4",
    "created": "2017-11-04T19:22:43.665Z"
  },
  {
    "id": 5,
    "name": "Jerry Smith",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Male",
    "origin": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "location": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/5.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/6",
      "https://rickandmortyapi.com/api/episode/7",
      "https://rickandmortyapi.com/api/episode/8",
      "https://rickandmortyapi.com/api/episode/9",
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11",
      "https://rickandmortyapi.com/api/episode/12",
      "https://rickandmortyapi.com/api/episode/13",
      "https://rickandmortyapi.com/api/episode/14",
      "https://rickandmortyapi.com/api/episode/15",
      "https://rickandmortyapi.com/api/episode/16",
      "https://rickandmortyapi.com/api/episode/18",
      "https://rickandmortyapi.com/api/episode/19",
      "https://rickandmortyapi.com/api/episode/20",
      "https://rickandmortyapi.com/api/episode/21",
      "https://rickandmortyapi.com/api/episode/22",
      "https://rickandmortyapi.com/api/episode/23",
      "https://rickandmortyapi.com/api/episode/26",
      "https://rickandmortyapi.com/api/episode/29",
      "https://rickandmortyapi.com/api/episode/30",
      "https://rickandmortyapi.com/api/episode/31",
      "https://rickandmortyapi.com/api/episode/32",
      "https://rickandmortyapi.com/api/episode/33",
      "https://rickandmortyapi.com/api/episode/35",
      "https://rickandmortyapi.com/api/episode/36",
      "https://rickandmortyapi.com/api/episode/38",
      "https://rickandmortyapi.com/api/episode/39",
      "https://rickandmortyapi.com/api/episode/40",
      "https://rickandmortyapi.com/api/episode/41",
      "https://rickandmortyapi.com/api/episode/42",
      "https://rickandmortyapi.com/api/episode/43",
      "https://rickandmortyapi.com/api/episode/44",
      "https://rickandmortyapi.com/api/episode/45",
      "https://rickandmortyapi.com/api/episode/46",
      "https://rickandmortyapi.com/api/episode/47",
      "https://rickandmortyapi.com/api/episode/48",
      "https://rickandmortyapi.com/api/episode/49",
      "https://rickandmortyapi.com/api/episode/50",
      "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/5",
    "created": "2017-11-04T19:26:56.301Z"
  },
  {
    "id": 6,
    "name": "Abadango Cluster Princess",
    "status": "Alive",
    "species": "Alien",
    "type": "",
    "gender": "Female",
    "origin": {
      "name": "Abadango",
      "url": "https://rickandmortyapi.com/api/location/2"
    },
    "location": {
      "name": "Abadango",
      "url": "https://rickandmortyapi.com/api/location/2"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/6.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/27"
    ],
    "url": "https://rickandmortyapi.com/api/character/6",
    "created": "2017-11-04T19:50:28.250Z"
  },
  {
    "id": 7,
    "name": "Abradolf Lincler",
    "status": "unknown",
    "species": "Human",
    "type": "Genetic experiment",
    "gender": "Male",
    "origin": {
      "name": "Earth (Replacement Dimension)",
      "url": "https://rickandmortyapi.com/api/location/20"
    },
    "location": {
      "name": "Testicle Monster Dimension",
      "url": "https://rickandmortyapi.com/api/location/21"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/7.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/10",
      "https://rickandmortyapi.com/api/episode/11"
    ],
    "url": "https://rickandmortyapi.com/api/character/7",
    "created": "2017-11-04T19:59:20.523Z"
  },
  {
    "id": 8,
    "name": "Adjudicator Rick",
    "status": "Dead",
    "species": "Human",
    "type": "",
    "gender": "Male",
    "origin": {
      "name": "unknown",
      "url": ""
    },
    "location": {
      "name": "Citadel of Ricks",
      "url": "https://rickandmortyapi.com/api/location/3"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/8.jpeg",
    "episode": [
      "https://rickandmortyapi.com/api/episode/28"
    ],
    "url": "https://rickandmortyapi.com/api/character/8",
    "created": "2017-11-04T20:03:34.737Z"
  },
];
const characters = computed(() => charactersData.map(item => ({
  id: item.id,
  name: item.name,
  image: item.image,
  status: item.status,
  specie: item.species,
  locationName: item.location.name,
  originUrl: item.origin.url,
})));

const episodesData = [
  { "id": 1, "name": "Pilot", "air_date": "December 2, 2013", "episode": "S01E01", "characters": ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2", "https://rickandmortyapi.com/api/character/35", "https://rickandmortyapi.com/api/character/38", "https://rickandmortyapi.com/api/character/62", "https://rickandmortyapi.com/api/character/92", "https://rickandmortyapi.com/api/character/127", "https://rickandmortyapi.com/api/character/144", "https://rickandmortyapi.com/api/character/158", "https://rickandmortyapi.com/api/character/175", "https://rickandmortyapi.com/api/character/179", "https://rickandmortyapi.com/api/character/181", "https://rickandmortyapi.com/api/character/239", "https://rickandmortyapi.com/api/character/249", "https://rickandmortyapi.com/api/character/271", "https://rickandmortyapi.com/api/character/338", "https://rickandmortyapi.com/api/character/394", "https://rickandmortyapi.com/api/character/395", "https://rickandmortyapi.com/api/character/435"], "url": "https://rickandmortyapi.com/api/episode/1", "created": "2017-11-10T12:56:33.798Z" }, { "id": 2, "name": "Lawnmower Dog", "air_date": "December 9, 2013", "episode": "S01E02", "characters": ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2", "https://rickandmortyapi.com/api/character/38", "https://rickandmortyapi.com/api/character/46", "https://rickandmortyapi.com/api/character/63", "https://rickandmortyapi.com/api/character/80", "https://rickandmortyapi.com/api/character/175", "https://rickandmortyapi.com/api/character/221", "https://rickandmortyapi.com/api/character/239", "https://rickandmortyapi.com/api/character/246", "https://rickandmortyapi.com/api/character/304", "https://rickandmortyapi.com/api/character/305", "https://rickandmortyapi.com/api/character/306", "https://rickandmortyapi.com/api/character/329", "https://rickandmortyapi.com/api/character/338", "https://rickandmortyapi.com/api/character/396", "https://rickandmortyapi.com/api/character/397", "https://rickandmortyapi.com/api/character/398", "https://rickandmortyapi.com/api/character/405"], "url": "https://rickandmortyapi.com/api/episode/2", "created": "2017-11-10T12:56:33.916Z" }, { "id": 3, "name": "Anatomy Park", "air_date": "December 16, 2013", "episode": "S01E03", "characters": ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2", "https://rickandmortyapi.com/api/character/12", "https://rickandmortyapi.com/api/character/17", "https://rickandmortyapi.com/api/character/38", "https://rickandmortyapi.com/api/character/45", "https://rickandmortyapi.com/api/character/96", "https://rickandmortyapi.com/api/character/97", "https://rickandmortyapi.com/api/character/98", "https://rickandmortyapi.com/api/character/99", "https://rickandmortyapi.com/api/character/100", "https://rickandmortyapi.com/api/character/101", "https://rickandmortyapi.com/api/character/108", "https://rickandmortyapi.com/api/character/112", "https://rickandmortyapi.com/api/character/114", "https://rickandmortyapi.com/api/character/169", "https://rickandmortyapi.com/api/character/175", "https://rickandmortyapi.com/api/character/186", "https://rickandmortyapi.com/api/character/201", "https://rickandmortyapi.com/api/character/268", "https://rickandmortyapi.com/api/character/300", "https://rickandmortyapi.com/api/character/302", "https://rickandmortyapi.com/api/character/338", "https://rickandmortyapi.com/api/character/356"], "url": "https://rickandmortyapi.com/api/episode/3", "created": "2017-11-10T12:56:34.022Z" }, { "id": 4, "name": "M. Night Shaym-Aliens!", "air_date": "January 13, 2014", "episode": "S01E04", "characters": ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2", "https://rickandmortyapi.com/api/character/38", "https://rickandmortyapi.com/api/character/87", "https://rickandmortyapi.com/api/character/175", "https://rickandmortyapi.com/api/character/179", "https://rickandmortyapi.com/api/character/181", "https://rickandmortyapi.com/api/character/191", "https://rickandmortyapi.com/api/character/239", "https://rickandmortyapi.com/api/character/241", "https://rickandmortyapi.com/api/character/270", "https://rickandmortyapi.com/api/character/337", "https://rickandmortyapi.com/api/character/338"], "url": "https://rickandmortyapi.com/api/episode/4", "created": "2017-11-10T12:56:34.129Z" }, { "id": 5, "name": "Meeseeks and Destroy", "air_date": "January 20, 2014", "episode": "S01E05", "characters": ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2", "https://rickandmortyapi.com/api/character/38", "https://rickandmortyapi.com/api/character/41", "https://rickandmortyapi.com/api/character/89", "https://rickandmortyapi.com/api/character/116", "https://rickandmortyapi.com/api/character/117", "https://rickandmortyapi.com/api/character/120", "https://rickandmortyapi.com/api/character/175", "https://rickandmortyapi.com/api/character/193", "https://rickandmortyapi.com/api/character/238", "https://rickandmortyapi.com/api/character/242", "https://rickandmortyapi.com/api/character/271", "https://rickandmortyapi.com/api/character/303", "https://rickandmortyapi.com/api/character/326", "https://rickandmortyapi.com/api/character/333", "https://rickandmortyapi.com/api/character/338", "https://rickandmortyapi.com/api/character/343", "https://rickandmortyapi.com/api/character/399", "https://rickandmortyapi.com/api/character/400"], "url": "https://rickandmortyapi.com/api/episode/5", "created": "2017-11-10T12:56:34.236Z" }
];
const episodes = computed(() => episodesData.map(item => ({
  id: item.id,
  title: `${item.name} | ${item.episode}`,
  isFavorite: false,
  url: item.url
})));

const locationsData = [{"id":1,"name":"Earth (C-137)","type":"Planet","dimension":"Dimension C-137","residents":["https://rickandmortyapi.com/api/character/38","https://rickandmortyapi.com/api/character/45","https://rickandmortyapi.com/api/character/71","https://rickandmortyapi.com/api/character/82","https://rickandmortyapi.com/api/character/83","https://rickandmortyapi.com/api/character/92","https://rickandmortyapi.com/api/character/112","https://rickandmortyapi.com/api/character/114","https://rickandmortyapi.com/api/character/116","https://rickandmortyapi.com/api/character/117","https://rickandmortyapi.com/api/character/120","https://rickandmortyapi.com/api/character/127","https://rickandmortyapi.com/api/character/155","https://rickandmortyapi.com/api/character/169","https://rickandmortyapi.com/api/character/175","https://rickandmortyapi.com/api/character/179","https://rickandmortyapi.com/api/character/186","https://rickandmortyapi.com/api/character/201","https://rickandmortyapi.com/api/character/216","https://rickandmortyapi.com/api/character/239","https://rickandmortyapi.com/api/character/271","https://rickandmortyapi.com/api/character/302","https://rickandmortyapi.com/api/character/303","https://rickandmortyapi.com/api/character/338","https://rickandmortyapi.com/api/character/343","https://rickandmortyapi.com/api/character/356","https://rickandmortyapi.com/api/character/394"],"url":"https://rickandmortyapi.com/api/location/1","created":"2017-11-10T12:42:04.162Z"},{"id":2,"name":"Abadango","type":"Cluster","dimension":"unknown","residents":["https://rickandmortyapi.com/api/character/6"],"url":"https://rickandmortyapi.com/api/location/2","created":"2017-11-10T13:06:38.182Z"},{"id":3,"name":"Citadel of Ricks","type":"Space station","dimension":"unknown","residents":["https://rickandmortyapi.com/api/character/8","https://rickandmortyapi.com/api/character/14","https://rickandmortyapi.com/api/character/15","https://rickandmortyapi.com/api/character/18","https://rickandmortyapi.com/api/character/21","https://rickandmortyapi.com/api/character/22","https://rickandmortyapi.com/api/character/27","https://rickandmortyapi.com/api/character/42","https://rickandmortyapi.com/api/character/43","https://rickandmortyapi.com/api/character/44","https://rickandmortyapi.com/api/character/48","https://rickandmortyapi.com/api/character/53","https://rickandmortyapi.com/api/character/56","https://rickandmortyapi.com/api/character/61","https://rickandmortyapi.com/api/character/69","https://rickandmortyapi.com/api/character/72","https://rickandmortyapi.com/api/character/73","https://rickandmortyapi.com/api/character/74","https://rickandmortyapi.com/api/character/77","https://rickandmortyapi.com/api/character/78","https://rickandmortyapi.com/api/character/85","https://rickandmortyapi.com/api/character/86","https://rickandmortyapi.com/api/character/95","https://rickandmortyapi.com/api/character/118","https://rickandmortyapi.com/api/character/119","https://rickandmortyapi.com/api/character/123","https://rickandmortyapi.com/api/character/135","https://rickandmortyapi.com/api/character/143","https://rickandmortyapi.com/api/character/152","https://rickandmortyapi.com/api/character/164","https://rickandmortyapi.com/api/character/165","https://rickandmortyapi.com/api/character/187","https://rickandmortyapi.com/api/character/200","https://rickandmortyapi.com/api/character/206","https://rickandmortyapi.com/api/character/209","https://rickandmortyapi.com/api/character/220","https://rickandmortyapi.com/api/character/229","https://rickandmortyapi.com/api/character/231","https://rickandmortyapi.com/api/character/235","https://rickandmortyapi.com/api/character/267","https://rickandmortyapi.com/api/character/278","https://rickandmortyapi.com/api/character/281","https://rickandmortyapi.com/api/character/283","https://rickandmortyapi.com/api/character/284","https://rickandmortyapi.com/api/character/285","https://rickandmortyapi.com/api/character/286","https://rickandmortyapi.com/api/character/287","https://rickandmortyapi.com/api/character/288","https://rickandmortyapi.com/api/character/289","https://rickandmortyapi.com/api/character/291","https://rickandmortyapi.com/api/character/295","https://rickandmortyapi.com/api/character/298","https://rickandmortyapi.com/api/character/299","https://rickandmortyapi.com/api/character/322","https://rickandmortyapi.com/api/character/325","https://rickandmortyapi.com/api/character/328","https://rickandmortyapi.com/api/character/330","https://rickandmortyapi.com/api/character/345","https://rickandmortyapi.com/api/character/359","https://rickandmortyapi.com/api/character/366","https://rickandmortyapi.com/api/character/378","https://rickandmortyapi.com/api/character/385","https://rickandmortyapi.com/api/character/392","https://rickandmortyapi.com/api/character/461","https://rickandmortyapi.com/api/character/462","https://rickandmortyapi.com/api/character/463","https://rickandmortyapi.com/api/character/464","https://rickandmortyapi.com/api/character/465","https://rickandmortyapi.com/api/character/466","https://rickandmortyapi.com/api/character/472","https://rickandmortyapi.com/api/character/473","https://rickandmortyapi.com/api/character/474","https://rickandmortyapi.com/api/character/475","https://rickandmortyapi.com/api/character/476","https://rickandmortyapi.com/api/character/477","https://rickandmortyapi.com/api/character/478","https://rickandmortyapi.com/api/character/479","https://rickandmortyapi.com/api/character/480","https://rickandmortyapi.com/api/character/481","https://rickandmortyapi.com/api/character/482","https://rickandmortyapi.com/api/character/483","https://rickandmortyapi.com/api/character/484","https://rickandmortyapi.com/api/character/485","https://rickandmortyapi.com/api/character/486","https://rickandmortyapi.com/api/character/487","https://rickandmortyapi.com/api/character/488","https://rickandmortyapi.com/api/character/489","https://rickandmortyapi.com/api/character/2","https://rickandmortyapi.com/api/character/1","https://rickandmortyapi.com/api/character/801","https://rickandmortyapi.com/api/character/802","https://rickandmortyapi.com/api/character/803","https://rickandmortyapi.com/api/character/804","https://rickandmortyapi.com/api/character/805","https://rickandmortyapi.com/api/character/806","https://rickandmortyapi.com/api/character/810","https://rickandmortyapi.com/api/character/811","https://rickandmortyapi.com/api/character/812","https://rickandmortyapi.com/api/character/819","https://rickandmortyapi.com/api/character/820","https://rickandmortyapi.com/api/character/818"],"url":"https://rickandmortyapi.com/api/location/3","created":"2017-11-10T13:08:13.191Z"},{"id":4,"name":"Worldender's lair","type":"Planet","dimension":"unknown","residents":["https://rickandmortyapi.com/api/character/10","https://rickandmortyapi.com/api/character/81","https://rickandmortyapi.com/api/character/208","https://rickandmortyapi.com/api/character/226","https://rickandmortyapi.com/api/character/340","https://rickandmortyapi.com/api/character/362","https://rickandmortyapi.com/api/character/375","https://rickandmortyapi.com/api/character/382","https://rickandmortyapi.com/api/character/395"],"url":"https://rickandmortyapi.com/api/location/4","created":"2017-11-10T13:08:20.569Z"},{"id":5,"name":"Anatomy Park","type":"Microverse","dimension":"Dimension C-137","residents":["https://rickandmortyapi.com/api/character/12","https://rickandmortyapi.com/api/character/17","https://rickandmortyapi.com/api/character/96","https://rickandmortyapi.com/api/character/97","https://rickandmortyapi.com/api/character/98","https://rickandmortyapi.com/api/character/99","https://rickandmortyapi.com/api/character/100","https://rickandmortyapi.com/api/character/101","https://rickandmortyapi.com/api/character/108","https://rickandmortyapi.com/api/character/268","https://rickandmortyapi.com/api/character/300"],"url":"https://rickandmortyapi.com/api/location/5","created":"2017-11-10T13:08:46.060Z"},{"id":6,"name":"Interdimensional Cable","type":"TV","dimension":"unknown","residents":["https://rickandmortyapi.com/api/character/20","https://rickandmortyapi.com/api/character/28","https://rickandmortyapi.com/api/character/29","https://rickandmortyapi.com/api/character/34","https://rickandmortyapi.com/api/character/49","https://rickandmortyapi.com/api/character/51","https://rickandmortyapi.com/api/character/54","https://rickandmortyapi.com/api/character/121","https://rickandmortyapi.com/api/character/126","https://rickandmortyapi.com/api/character/129","https://rickandmortyapi.com/api/character/134","https://rickandmortyapi.com/api/character/136","https://rickandmortyapi.com/api/character/145","https://rickandmortyapi.com/api/character/157","https://rickandmortyapi.com/api/character/173","https://rickandmortyapi.com/api/character/184","https://rickandmortyapi.com/api/character/205","https://rickandmortyapi.com/api/character/207","https://rickandmortyapi.com/api/character/214","https://rickandmortyapi.com/api/character/222","https://rickandmortyapi.com/api/character/223","https://rickandmortyapi.com/api/character/224","https://rickandmortyapi.com/api/character/225","https://rickandmortyapi.com/api/character/250","https://rickandmortyapi.com/api/character/254","https://rickandmortyapi.com/api/character/260","https://rickandmortyapi.com/api/character/264","https://rickandmortyapi.com/api/character/266","https://rickandmortyapi.com/api/character/275","https://rickandmortyapi.com/api/character/277","https://rickandmortyapi.com/api/character/279","https://rickandmortyapi.com/api/character/312","https://rickandmortyapi.com/api/character/314","https://rickandmortyapi.com/api/character/315","https://rickandmortyapi.com/api/character/316","https://rickandmortyapi.com/api/character/317","https://rickandmortyapi.com/api/character/318","https://rickandmortyapi.com/api/character/334","https://rickandmortyapi.com/api/character/351","https://rickandmortyapi.com/api/character/358","https://rickandmortyapi.com/api/character/367","https://rickandmortyapi.com/api/character/370","https://rickandmortyapi.com/api/character/373","https://rickandmortyapi.com/api/character/403","https://rickandmortyapi.com/api/character/406","https://rickandmortyapi.com/api/character/407","https://rickandmortyapi.com/api/character/408","https://rickandmortyapi.com/api/character/409","https://rickandmortyapi.com/api/character/410","https://rickandmortyapi.com/api/character/411","https://rickandmortyapi.com/api/character/412","https://rickandmortyapi.com/api/character/413","https://rickandmortyapi.com/api/character/414","https://rickandmortyapi.com/api/character/415","https://rickandmortyapi.com/api/character/416","https://rickandmortyapi.com/api/character/417","https://rickandmortyapi.com/api/character/418","https://rickandmortyapi.com/api/character/457","https://rickandmortyapi.com/api/character/458","https://rickandmortyapi.com/api/character/459","https://rickandmortyapi.com/api/character/709","https://rickandmortyapi.com/api/character/711"],"url":"https://rickandmortyapi.com/api/location/6","created":"2017-11-10T13:09:09.102Z"},{"id":7,"name":"Immortality Field Resort","type":"Resort","dimension":"unknown","residents":["https://rickandmortyapi.com/api/character/23","https://rickandmortyapi.com/api/character/204","https://rickandmortyapi.com/api/character/320"],"url":"https://rickandmortyapi.com/api/location/7","created":"2017-11-10T13:09:17.136Z"}]
const locations = computed(() => locationsData.map(item => ({
  id: item.id,
  name: item.name,
  type: item.type,
  dimension: item.dimension
})));
</script>
