
.. _installation:

Installation
------------

To set up the project, we need to do the following things:

1. Create a ``conda`` environment with

   .. code-block:: bash

       $ conda env create -n ts -f environment.yml

2. Install ``Julia`` from this `website <https://julialang.org/downloads/>`_.
   Then, install other dependencies for running the problems sets with

   .. code-block:: bash

       $ create_julia_env.ps1

3. Get ``gretl`` from `sourceforge <http://gretl.sourceforge.net/>`_.


Working on the Project
----------------------

If you want to work on the project, execute

.. code-block:: bash

    $ start_project.ps1

This will start a development server for the documentation on
http://localhost:8000 which will be generated automatically and Jupyter Lab on
http://localhost:8888.
