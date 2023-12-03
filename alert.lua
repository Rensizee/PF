You’ll notice that the repository that you linked to has a .gitattributes file. This file is used to inform git that its defaults might not recognize a file type properly and to override them. I notice that in that .gitattributes file, there is a line to force the file type for .mqh to text (as opposed to binary), as well as force the character set to CP1252 for all files in the directory you linked to. (git doesn’t do well when you’re using a character set other than UTF-8, which might be why those files are being recognized as binary instead of text.)

If you add a .gitattributes file to your repository and instruct git on how to properly interpret the contents of your files, then you should be able to make things appear the way you want.

I hope that helps!