Script to generate strings for [better-enchantments-names](https://www.planetminecraft.com/texture-pack/better-enchantment-names/) for all available languages automatically.

## Requirements

- `fish`
- `jq`
- `unzip`

You can install all of them on Arch via `pacman -S unzip fish jq`

## Usage

`./patch.fish -i INDEX_FILE -o OBJECTS_DIR -p PATH_TO_RESOURCEPACK -j MINECRAFT_JAR`

- `INDEX_FILE`: index file, usually in `.minecraft/assets/indexes/`
- `OBJECTS_DIR`: objects directory, usually `.minecraft/assets/objects`
- `PATH_TO_RESOURCEPACK`: resourcepack location, language `json`s will be put in `PATH_TO_RESOURCEPACK/assets/minecraft/lang/`
- `MINECRAFT_JAR`: Minecraft jar file, usually `.minecraft/versions/<version>/<version>.jar`

## Credit

Credit goes to [icantthinkofausername](https://www.planetminecraft.com/member/icantthinkofausername/) who created the resourcepack.
