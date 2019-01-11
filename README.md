# Scripts

[TOC]

## hashing.sh

- Automatic script to calculate hash function (md5, sha1, sha256)

```bash
MacBook-Pro:Scripts onsoim$ sh hashing.sh hashing.sh
==========================================================================
Filename: hashing.sh
MD5		: ff7762f32bd8539b0e1ecb2be288bfb8
SHA1	: 99c5b8a52ed5954e9a2ff0a7a46d9002c06ef426
SHA256	: aa81f63208468e383bd82f07d258e07ffc70fdf22d524226aa8730dc3f9e4ac5
==========================================================================
```

- Support for multi files

```bash
MacBook-Pro:Scripts onsoim$ sh hashing.sh hashing.sh test.sh
==========================================================================
Filename: hashing.sh
MD5		: ff7762f32bd8539b0e1ecb2be288bfb8
SHA1	: 99c5b8a52ed5954e9a2ff0a7a46d9002c06ef426
SHA256	: aa81f63208468e383bd82f07d258e07ffc70fdf22d524226aa8730dc3f9e4ac5
==========================================================================
Filename: test.sh
MD5		: d41d8cd98f00b204e9800998ecf8427e
SHA1	: da39a3ee5e6b4b0d3255bfef95601890afd80709
SHA256	: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
==========================================================================
```

