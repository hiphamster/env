#!/usr/bin/env node

'use strict';

// readline-vim module must be installed 

var rlv = require('readline-vim'); 
var repl = require('repl'); 

var r = repl.start({ 
  prompt: "vim repl > ", 
  input: process.stdin, 
  output: process.stdout 
});

var vim = rlv(r.rli); 
var map = vim.map;

r.displayPrompt();

