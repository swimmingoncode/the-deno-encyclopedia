export CWD=$(pwd)

export BOOK=${BOOK:-"1-fundamentals"}
export FORMAT=${FORMAT:-pdf}

cd src/books/$BOOK

export FILES=${FILES:-$(find ./mainmatter -mindepth 1 | grep md | sed 's/\n/ /g')}

function build () {
    fn_args=$(build_$1)

    build_cmd="pandoc \
        --from markdown+gfm_auto_identifiers+emoji \
        --metadata-file metadata.yaml \
        ${fn_args} \
        --indented-code-classes=javascript \
        --top-level-division=chapter --section-divs \
        --number-sections --toc --toc-depth 2 \
        --output=the-deno-encyclopedia-${BOOK}.${FORMAT} \
        ${FILES}
    "

    set -x
    $build_cmd
    set +x
}

function build_pdf () {
    before_files=$(find ./incs -mindepth 1 | grep before.tex | sed 's/\n/ /g')
    
    echo "--template ../../meta/template.tex \
        --include-before-body $before_files \
        --to ${FORMAT}"
}

function build_epub () {
    echo "--to ${FORMAT}"
}

build ${FORMAT}