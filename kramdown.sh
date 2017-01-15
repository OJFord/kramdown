#!/bin/bash
function join {
    # Join an array by a given delimiter
    local IFS="$1"
    shift
    echo "$*"
}

function preprocessor {
    function strong_emph {
        # Change *this* into **this**
        sed -E 's/( |^)\*([a-zA-Z])/\1**\2/g;s/([a-zA-Z])\*([^a-zA-Z0-9])/\1**\2/g'
    }
    function emph {
        # Change /this/ into *this*
        sed -E 's|( \|^)/([a-zA-Z])|\1*\2|g;s|([a-zA-Z])/([^a-zA-Z0-9])|\1*\2|g'
    }

    strong_emph | emph
}

function pandoc_from_kramdown {
    local extensions=(
        backtick_code_blocks
        fenced_code_attributes
        tex_math_dollars
        yaml_metadata_block
    )
    pandoc --from="markdown_strict+$(join + "${extensions[@]}")" "$@"
}

preprocessor | pandoc_from_kramdown "$@"
