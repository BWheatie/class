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
Allow the user to save a whole encrypted message to a file and open it again later. Make sure they can invoke it from the command line using the below interface.

`./fun-crypt -d password filename.txt`

`./fun-crypt -e password filename.txt`

# NATO-alphabet encoder
Write your own NATO alphabet encoder. There should be a function to encode a string and decode a string. The encode function will take a string, replace all upper and lower case characters with their "NATO" equivalents and return the result. The decode function will take a string, replace the "NATO" characters with their normal lower case letter form and return that.

Non-alphabetical should be copied/stay the same in both cases.

Hint 1: Use a Hash Table!

Examples

```ruby
encode("dog") #=> "delta omega gamma"
decode("delta omega gamma") #=> "dog"
encode("i am 24 years old") #=> "india alpha mike 24 yankee echo alpha romeo sierra oscar lima delta"
```
