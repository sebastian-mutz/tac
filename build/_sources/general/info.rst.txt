General Information
===================

This page contains general information for the course "EARTH5019: Theoretical and Applied Climatology", offered at the School of Geographical and Earth Sciences at the University of Glasgow.


Short Description
-----------------
The course provides an introduction to fundamental aspects of theoretical and applied climatology. It explores the theoretical foundations of climate science, such as celestial mechanics, first-order energy fluxes, heat and mass transport in the atmosphere, structural aspects of Earth’s climate system, rain formation, and climate change of the past, present and future. This is complemented by an introduction to important principles in applied climatology, including statistics, probability theory, empirical analysis, and modern mathematical modelling. Finally, a hands-on exploration of fundamental coding practices, and the application of some of the above-mentioned principles, will prepare the students to work with climate datasets on contemporary climate-related problems in a modern research and industry work setting.


Course Convenor
---------------

.. figure:: mutz001_ccbynd_SebastianMutz.jpg

**Convenor:** Sebastian G. Mutz | Dr. rer. nat. habil.
**Contact:** sebastian.mutz@glasgow.ac.uk

**Intro:** *Ahoy*, *servus* and welcome to the course! I'll be your instructor for this module. I am a senior lecturer (associate professor) and climate scientist. I study the interactions between climate and Earth surface systems using process-based and empirical models. This means a spend a lot of time developing and applying methods and models based on atmospheric physics or techniques from machine learning/artificial intelligence. I've been teaching climatology, statistics and programming for quite a few years now, so I hope can help you learn about these topics.

**Support:** Should you have any questions, queries or concerns, feel free to e-mail me and I will try to respond within 24 hours (outside of weekends). If you don’t hear back within a few days, please send your email through again. We  can also chat during/around classes or arrange a separate (in-person or online) meeting if the need arises.
  

Software for this Course
------------------------

The tutorials are in Python, but you may choose any programming language you like to complete the course. I will be able to provide good support for either Python or modern Fortran. Both are general-purpose languages, commonly used in climate science and beyond.

Option 1: Virtual Machine (simple, but slow)

Our system administrator (Daniel) and I (Sebastian) have created a Linux virtual machine for you and installed these on our lab computers. This will cover your needs for tutorials and exercises. You may decide to also install the virtual machine on your own computer using `VirtualBox <https://www.virtualbox.org/>`_.

Option 2: Build Environment (with guidance)

Alternatively, you can install all the tools on your computer. These will differ depending on your choice of language. You may even decide to use both. I will happily guide you through the process in the beginning of the semester.

**Python:**

Python has a shallow initial learning curve and is ideal for prototyping. However, it is slow, energy-inefficient, and unsuitable for many types of larger projects. For Python, you will need:

* `Python 3.8 or newer <https://www.python.org/downloads/>`_
* Python packages `NumPy <https://numpy.org/install/>`_, `SciPy <https://scipy.org/>`_, and  `Matplotlib <https://matplotlib.org/stable/install/index.html>`_, best installed with `conda <https://www.anaconda.com/docs/getting-started/miniconda/install>`_.
* An IDE (e.g., Spyder) or code code editor and terminal emulator (e.g., Kate + Konsole)

**Modern Fortran:**

Fortran has a steeper learning curve and is not (yet) as interactive as Python. However, it scales well, is robust and reliable, energy-efficient, unbeaten in performance, and remains the go-to language for many computationally intensive tasks (e.g., climate modelling). For `modern Fortran <https://fortran-lang.org/>`_, you will need:

* A `Fortran compiler (GNU Fortran is recommended) <https://gcc.gnu.org/fortran/>`_, best installed with `conda <https://www.anaconda.com/docs/getting-started/miniconda/install>`_.
* The `Fortran Package Manager <https://fpm.fortran-lang.org/>`_, best installed with conda.
* An IDE (e.g., Code::Blocks) or a code editor and terminal emulator (e.g., Kate + Konsole)

Note: You may need additional packages for your group project.

**To-Do:**

I will introduce the languages in our first session. Please discuss your language preference at the beginning of the semester, so it can be taken into account during practicals and group project planning.


Resources
---------

* Lecture and lab materials will be made available (or linked) on the "EARTH5019: Theoretical and Applied Climatology" Moodle page for this year.
* The `Python website <https://www.python.org/doc/>`_ includes beginner’s guides that can complement your general introduction to programming in the lab sessions. Similarly, the `Fortran-lang website <https://fortran-lang.org/learn/>`_ has an excellent section for learning the language, and the  `LFortran web interface <https://dev.lfortran.org/>`_ lets you experiment with Fortran in your web browser.
