# Build a ROT13 encoder/decoder
[ROT13](https://en.wikipedia.org/wiki/ROT13)

Should have an encode and decode function.
`encode(value)` should take a string and return an encoded string.
`decode(value)` should take a string and decode it.

Non-alphabetical characters should be left in place.
Should read in strings from a file and either encode or decode them based on a command character:
###Input file
```
e This is a test string!
d Lbh qrpbqrq n zrffntr, tbbq wbo
e KeEp ThE  *crazy* formatting going on
d Pna lbh ernq guvf?
```
###Output file
```
Guvf vf n grfg fgevat!
You decoded a message, good job
XrRc GuR  *penml* sbeznggvat tbvat ba
Can you read this?
```

## Hard Mode
Actually encrypt and decrypt the strings with a key that you ask your user for on input. Use [OpenSSL::Cipher](http://ruby-doc.org/stdlib-2.2.2/libdoc/openssl/rdoc/OpenSSL/Cipher.html#method-c-new)

## Insane Mode
Allow the user to save a whole encrypted message to a file and open it again later.
