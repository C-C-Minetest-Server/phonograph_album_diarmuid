-- phonograph_album_diarmuid/init.lua
-- Songs composed by Diarmuid
-- Copyright (C) 2024  1F616EMO
-- SPDX-License-Identifier: LGPL-2.1-or-later
-- Soundtrack license: CC BY-SA 4.0

local S = minetest.get_translator("phonograph_album_1f616emo")

local long_desc = S("Diarmuid wrote 41 soundtracks (they're all very short for the most part) for Minetest " ..
        "about 4 years ago. They were intended to be a part of a soundtrack mod, " ..
        "however Diarmuid never finished it.") .. "\n\n" ..
    S("Diarmuid did not give the names of their songs. All songs are listed with their codenames.")
local album = phonograph.register_album("phonograph_album_diarmuid:album_diarmuid", {
    title = S("Diarmuid's Soundtracks"),
    short_description = S("Songs composed by Diarmuid"),
    long_description = long_desc,
    cover = nil,         -- use default cover for now
    artist = "Diarmuid", -- Not translated on purpose
})

-- All originally unnamed, using their codenames
for _, song in ipairs({
    "beach",
    "cave",
    "cave2",
    "cliff",
    "clockwork",
    "clouds",
    "dark",
    "dark2",
    "day",
    "death",
    "deep",
    "desert",
    "desert2",
    "edge",
    "far",
    "fog",
    "grass",
    "grass2",
    "high",
    "home2",
    "home",
    "industrial",
    "jasmine",
    "journey",
    "jungle",
    "jungle2",
    "lake",
    "moon",
    "mountain1",
    "mountain2",
    "night",
    "ocean",
    "ocean2",
    "rain",
    "snow",
    "snow2",
    "sunrise",
    "sunset",
    "wind",
    "woods",
    "woods2",
}) do
    album:register_song(song, {
        title = song,
        short_description = nil,
        long_description = nil,
        artist = nil,
        spec = { -- a SimpleSoundSpec
            name = "phonograph_album_diarmuid_" .. song,
        }
    })
end
