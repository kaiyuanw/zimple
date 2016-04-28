#!/bin/zsh

function compile.project() {
        mvn clean test-compile
}

function run.ekstazi() {
        # mvn clean compile > /dev/null
	mvn clean test -Pekstazip
}

function main() {
        case $1 in
        -re) shift
                run.ekstazi "$@"
                ;;
        -c|--compile) shift
                compile.project "$@"
                ;;
        *)
                echo "Check arguments";;
        esac
}

main $@