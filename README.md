# Kramdown

Kramdown is a markdown specification for [Pandoc](https://github.com/jgm/pandoc) that I find particularly useful for mathematical/engineering subject note-taking.

The name thus comes from reversing the first half of *mark*down, and from ~~kramming~~ cramming for exams with notes written in it.

## Features

The basic Gruber markdown spec for essential formatting - with two changes:
- I prefer to use `/emphasis/` over `*emphasis*`;
- which frees up `*strong_emphasis*` (instead of `**strong_emphasis**`)

Then I add Pandoc's:
- `backtick_code_blocks` for Github-style code sections
- `fenced_code_attributes` for adding language-specific syntax highlighting, or line numbers, etc.
- `tex_math_dollars` for Latex/amsmath `display` sections
- `yaml_metadata_block` for metadata
