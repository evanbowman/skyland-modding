# skyland-baserom

## Introduction

The engine (baserom) for Skyland, without the filesystem attached. This repo just contains an engine ROM, and python script for attaching all of the LISP scripts to the engine. See https://github.com/evanbowman/skyland for more info about the game.

NOTE: Github's linguist detects some of the .lisp files as newlisp, and some as common lisp. But I use my own LISP dialect, with a somewhat unique syntax. Most things should feel familiar, but lambda argument handling is a bit primitive (to cut down on symbol table usage).

## Instructions

Checkout this repository. cd into the build/ directory. Run bundle.sh (p.s. I used python3.8.10). 

## Overview of Skyland LISP

Last summer (2020), I created a LISP interpreter for one of my previous projects, Blind Jump. Originally, the dialet was purely interpreted, and only supported global variables. Over time, I kept adding features, resulting in a strange hybrid of Scheme and Emacs Lisp:

* Garbage Collected
* Single namespace for functions and data
* Dynamic-scope

Furthermore, I've restricted the feature set of the interpreter to features that are easy to implement on a Gameboy Advance, within reason. For example, I did not include floating point values or bignums; the only numeric type is a signed 32 bit integer.

Be warned: the interpreter is not fast, by design. At any instance where I needed to make a tradeoff between speed and memory usage, I often decided in favor of low memory consumption. For example, all pointers are compressed, to make a cons cell fit in less than eight bytes--doing this, of course, slows down execution a bit. Technically, Skyland LISP can run with less than 8kb of memory, and still allocate one hundred or so values. In practice, I've given the interpreter at least 26kb to work with.
