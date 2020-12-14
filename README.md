# Original readme from johnmeow

Script to generate strings for [better-enchantments-names](https://www.planetminecraft.com/texture-pack/better-enchantment-names/) for all available languages automatically.

## Requirements

- `fish`
- `jq`
- `unzip`

You can install all of them on Arch via `pacman -S unzip fish jq`

## Usage

`./patch.fish -i INDEX_FILE -o OBJECTS_DIR -p PATH_TO_RESOURCEPACK -j MINECRAFT_JAR`

- `INDEX_FILE`: index **file**, usually inside `.minecraft/assets/indexes/`
- `OBJECTS_DIR`: objects **directory**, usually `.minecraft/assets/objects`
- `PATH_TO_RESOURCEPACK`: resourcepack **directory**, language `json`s will be put in `PATH_TO_RESOURCEPACK/assets/minecraft/lang/`
- `MINECRAFT_JAR`: Minecraft jar **file**, usually `.minecraft/versions/<version>/<version>.jar`

## Credit

Credit goes to [icantthinkofausername](https://www.planetminecraft.com/member/icantthinkofausername/) who created the resourcepack.

<hr>

# Amendments by Hebgbs

This code is the re-purposed work of author johnmeow for Better Enchantment Names. To observe changes (including to this document), view the original commi and compare with the one thereafter.

By legal mandate and on johnmeow's request, this work is licensed under the Fee Software Foundation's GNU's Not Unix General Purpose License version 3.

## Intent of publication

For people who wish to contribute their own subtitle additions from third-party mods when applicable and supply them with translations. They should view the formatting index available at https://docs.google.com/spreadsheets/d/1aPCZAgUGpQImp0_3_iA5Hmn1qqhBic0NFWg37GEwZZM/edit#gid=863928449 and use that as a concept bible for their own works.

## How to use this Script

Modify as deemed fit for task `prefixes.json` and run the application as defined above. It really is that simple. Once finished, perform any additional formatting necessary and create a merge request.

**Please** do not commit issues asking me how to use the software on Microsoft Windows, I have no idea — I used this software on an open-source OS and it worked just fine for me.
