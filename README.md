# JSCTags docker image

This image uses the (jsctags library)[https://github.com/ramitos/jsctags] to create ctags for javascript files.
I use this because I do not want to install npm and node directly on my machine.

## Usage.

From the terminal

	cd /path/to/app
	docker run --rm -v $PWD:/no/conflict/dir -w /no/conflict/dir stephenafamo/jsctags:1.0.0 tag

The image creates relative tag paths by removing the directory name, so `/no/conflict/dir` is used as the working directory. There is no need to change this. (Except you actually have a directory called `/no/conflict/dir`)

If there is an existing tags file in the current directory, it will append this to the end of the file.
