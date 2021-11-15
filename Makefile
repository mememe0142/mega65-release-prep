# NOTE: Need to build 'petcat' tool alongside Jimbo's patch for it:
#
# VICE source:
#   - https://sourceforge.net/projects/vice-emu/files/releases/vice-3.5.tar.gz/download
#
# Jimbo's patch:
#   - https://sourceforge.net/p/vice-emu/patches/320/
#   - (current version of the patch had a typo of 'rcusor' instead of 'rcursor', so fix manually before compiling)
# Patching:
# - I think I ran something like `patch -i mega65-keywords-with-hex-literals.patch` but manually specified the filepath of `src/petcat.c`.
# - I got one hunk of the patch rejected for some reason, so I assessed that part manually. Didn't get time to explore why.
#
# Building:
# - I tried building inside `src` folder with `make petcat`, but ran into build errors which I fixed manually by ignoring/commenting out things that weren't available (I assumed petcat tool wouldn't need fancy includes, as I hope it's just a straightforward console tool).

autoboot.c65:
	python gen.py
	./petcat -w65 -o autoboot.c65 autoboot.bas
	# After generating your 'autoboot.c65', add it to the `MEGA65.D81` disk
