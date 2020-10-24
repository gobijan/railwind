# railwind
## Tailwind SASS extensions without the Javascript bloat.

This is just a little experiment that downloads the latest Tailwindcss from the CDN and converts it to sass extension classes.

Right now it only works with tailwind standard classes without modifiers like for example lg:container.

You have to write your own semantic classnames and then include the extends in your scss file and compile it (preferrably via sassc for faster compile times).

## License
MIT.
