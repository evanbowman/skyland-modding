# skyland-baserom

## Introduction

The engine (baserom) for Skyland, without the filesystem attached. This repo just contains an engine ROM, and python script for attaching all of the LISP scripts to the engine. See https://github.com/evanbowman/skyland for more info about the game.

NOTE: Github's linguist detects some of the .lisp files as newlisp, and some as common lisp. But I use my own LISP dialect, with a somewhat unique syntax. Most things should feel familiar, but lambda argument handling is a bit primitive (to cut down on symbol table usage).

## Instructions

Checkout this repository. cd into the build/ directory. Run bundle.sh (p.s. I used python3.8.10). 
