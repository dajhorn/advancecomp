Name
	advpng - The AdvancePNG compressor

Synopsis
	:advpng [-l, --list] [-z, --recompress] [-0, --shrink-0]
	:	[-1, --shrink-fast] [-2, --shrink-normal [-3, --shrink-extra]
	:	[-4, --shrink-insane] [-f, --force] [-q, --quiet]
	:	[-h, --help] [-V, --version] FILES...

Description
	The main purpose of this utility is to recompress png
	files to get the smallest possible size.

	Please note that this utility is not able to read
	a generic file. It's granted to be able to read only
	the files generated by the AdvanceMAME emulator.

	To compress the files this utility uses the following
	strategies:

	* Remove all ancillary chunks.
	* Concatenate all the IDAT chunks.
	* Use the 7zip Deflate implementation.

Options
	-l, --list FILES...
		List the content of the specified files.

	-z, --recompress FILES...
		Recompress the specified files. If the -1, -2, -3
		options are specified it's used the smallest file
		choice from the previous compressed data and the
		new compression. If the -0 option is specified the
		file is always rewritten without any compression.

	-0, --shrink-store
		Disable the compression. The file is
		only stored and not compressed. The file is always
		rewritten also if it's bigger.

	-1, --shrink-fast
		Set the compression level to "fast".

	-2, --shrink-normal
		Set the compression level to "normal". This is the
		default level of compression.

	-3, --shrink-extra
		Set the compression level to "extra".

	-3, --shrink-insane
		Set the compression level to "insane".

	-f, --force
		Force the use of the new file also if it's bigger.

Copyright
	This file is Copyright (C) 2002 Andrea Mazzoleni, Filipe Estima

See Also
	advzip(1), advmng(1), advdef(1)
