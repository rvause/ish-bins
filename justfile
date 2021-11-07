dc-run := "docker run --rm -it -v $(pwd):/code ish-build"

mkimage:
    docker build -t ish-build .

run *args:
    {{dc-run}} {{args}}

shell:
    @just run ash

build name version:
    @just run scripts/{{name}}.sh {{version}}
