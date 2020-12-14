#!/bin/env fish

function validate_json --no-scope-shadowing
    test -f $_flag_value
    and jq . $_flag_value &>/dev/null
end

function validate_dir --no-scope-shadowing
    test -d $_flag_value
end

function validate_file --no-scope-shadowing
    test -f $_flag_value
end

function patch
    argparse --name=patch i/index=!validate_json o/objects=!validate_dir p/pack=!validate_dir j/jar=!validate_file -- $argv; or return
    test -n "$_flag_index"; or set _flag_index ~/.minecraft/assets/indexes/1.16.json
    test -n "$_flag_objects"; or set _flag_objects ~/.minecraft/assets/objects/
    test -n "$_flag_pack"; or set _flag_pack .
    test -n "$_flag_jar"; or set _flag_jar ~/.minecraft/versions/1.16.4/1.16.4.jar
    set out $_flag_pack/assets/minecraft/lang/
    mkdir -p $out
    set en_us (mktemp)
    unzip -p $_flag_jar assets/minecraft/lang/en_us.json > $en_us
    for line in (jq -frj hashes.jq $_flag_index)
        set -l a (string split ' ' $line)
        set -l asset $_flag_objects/$a[2]
        jq -f translate.jq -s prefixes.json $asset $en_us > $out/$a[1]
    end
    jq -f translate.jq -s prefixes.json $en_us > $out/en_us.json
    rm $en_us
end

patch $argv
