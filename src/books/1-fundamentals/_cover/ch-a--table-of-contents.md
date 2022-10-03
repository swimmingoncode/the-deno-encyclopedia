# Table of Contents

0. To the reader
    1. How this book is structured (Ref: (this file)[TOC.md])
    2. "Symbology" and notation
1. Introduction
    1. A brief history class
        1. History of Javascript
        2. Evolution of Javascript and the TC39
        3. History of Server-side Javascript
            - V8, or how it all started
            - Node
            - io.js
            - The rise of Node Foundation
            - 2019: Ten things I regret about Node (and Deno, of course)
            - 2021: Bun, baking the future competition
2. Getting Started Javascript and Typescript
    >  Note: this will probably be the hardest chapter. Should be full of references and well documented.
    1. A review to how Javascript works
        1. The syntax
            - Variables
            - Operators
            - Control Structures
            - OOP: The deal with inheritance on Javascript
                * Prototype Pattern
                * Building "classes" from scratch
            - OOP: Classes
        2. Quirks about Javascript
            - Context in Javascript
            - Asynchronism, what a nightmare
            - From callback hell to Promises
    2. Typescript
        1. The syntax
            - Basic Types
            - Enums
            - Type Arguments (a.k.a. Generics)
            - Type Mapping
            - Type Mapping
            - Interfaces
            - Abstract Classes
            - Decorators
        2. Quirks about Typescript
            - TBD
    3. Going further: Micro-Projects to the reader
3. Why Deno?
    1. Differences between Deno and Node
    2. Advantages of using Deno
        - Standard: Wide usage of Standardised Web APIs by default.
        - Security: The sandboxed context execution
        - TS by Default
        - Full ESM implementation
        - Compatible with Node
        - Fast
    3. Use cases
        - More "native" Web Development
        - Interoperability with Rust
        - Plugin-based architectures
    4. Going further: Recommended communities around Deno
4. Hello World
    1. Your toolbox
        - Installing deno
        - Setting up VSCode to work with Deno
        - Formatting
        - Linting
    2. console.log('Hello, deno 🦕');
        - Using the REPL
        - Writing your first script in Deno
    3. Importing libraries
        - https://deno.land/x
        - https://esm.sh
        - [Using npm packages](4.3-importing-libraries/using-npm-packages/README.md)
        - Using import maps sort things out
    4. Managing permissions with Deno
5. First steps with Deno
    > Since this is a series of projects, it'll be best to keep the structure open at first, and start defining them as I start working on them
    > Also, this will serve as the starting point to build more complex projects as long as the books progresses
    0. Writing tests, piece of cake
        - Assertion libraries
        - Using BDD
    1. Getting data from APIs using `fetch`
    2. Using the file system APIs
    3. Building CLI applications
    4. Your first Web Application: rendering with JSX
    5. Yet another TODO
    5. Crypto APIs
    6. Databases
6. Preparing to publish and deploy
    1. Publishing packages
        1. The native way: Using https:/deno.land/x
        2. The hybrid: Using NPM
            - Tips to keep compatibility between Deno and Node
    2. Bundling and compiling