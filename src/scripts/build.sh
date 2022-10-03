export CWD=$(pwd)

export BOOK=${BOOK:-"1-fundamentals"}
export FORMAT=${FORMAT:-pdf}

cd src/books/$BOOK
export FILES=${FILES:-$(ls -R | grep md | sed 's/\n/ /g')}
set -x
pandoc \
    --from markdown+gfm_auto_identifiers+emoji \
    --metadata-file metadata.yaml \
    --template ../../meta/template.tex \
    --indented-code-classes=javascript \
    --to ${FORMAT} \
    --top-level-division=chapter --section-divs \
    --number-sections --toc --toc-depth 2 \
    --output=the-deno-encyclopedia-${BOOK}.${FORMAT} \
    ${FILES}

set +x