### Using npm packages

Another possibility is to just use npm, which is so far, the biggest library for Javascript code on the entire web!

While this is fairly new (this feature has been around since 15th Sep 2022), it's possible to use libraries that have been around for years. Even though, it's fair to keep in mind that sometimes the support (see (Ref: Compatibility with Deno)[#3.8] section) to better understand what to have in mind when using packages originally designed for Node on Deno. For instance, you'll notice that some libraries (like `better-sqlite3` or `bcrypt`) won't be available since they use native Node bindings, which won't be supported at all on Deno (see (Ref: Differences between Node and Deno)[#2.1])

Ref: [Code example using npm:chalk-template on a Deno program](./main.ts).