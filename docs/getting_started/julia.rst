Julia
-----

I think it is worth to write down some of my impressions of Julia I had while
programming for this class. Most of the time I will compare it to Python and C
as these are my main references for other programming languages.

- Julia is heavily under development and experiences major API changes
  especially as I took the course during the switch from version 0.6.4 to 0.7.0
  and then 1.0.0. Base libraries which were available in lower version without
  an import needed one after the shift to version 1, functions will be renamed,
  etc.. Despite that the changes are probably justified and followed reasonable
  arguments, the changes break many examples on the internet and one has to
  figure out what is needed to translate the example to a different version of
  Julia.
- I really hate the import system of Julia. I think C does it similar to Julia,
  but have we not learned from Python how a good import system looks like?
  Import the module and every function has to be called by
  `module_name.module_func()`. This leaves no ambiguity as to where the
  function comes from. Especially as some change between Julia 0.6.4 and 1.0.0
  required to import base functions which you have to find while also the names
  were changed.
