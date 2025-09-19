Intro
=====

Before you start your first exercise, here are a few things you may want to look at first.


Exercise Materials
------------------
If you prefer to work on your own computer, make sure you installed all required software, as listed in the :doc:`General Information<../general/info>` section.

.. Note::

   While the language used in this course is Python, you are free to use a different language you feel more comfortable with.


Compiled or Interpreted
-----------------------

There are a few differences between compiled and interpreted languages. These are highlighted below in a simplified manner, which may (a) help you decide on a language you'd like to use, and (b) exaplain the difference in workflows if you previously used an interpreted language and now want to learn a compiled language (or vice versa).

**Compiled Language**: The whole programme is translated into *machine code* (i.e. your computers "language") by a so-called **compiler**. In the compilation process, a new file is created (separate from the text file you wrote your code into). This (executable) file can be run as a programme without the need of the original code (text file).

- **Analogy**: It can be thought of as the process of translating a poem completely into another language, then reading the translated poem to an audience. The original poem (script) and translator are no longer needed.
- **Examples**: Fortran, C++
- **Advantages**: Usually faster performance, easy to control optimisations during compilation.

**Interpreted Language**: The programme does not have to be translated into *machine code* before execution. Instead, when you run your programme, your code (in the text file) is translated line-by-line by a so-called **interpreter**.

- **Analogy**: It can be thought of as someone reading a Bavarian poem and translating it line-by-line into English to an audience. The original poem (script) and translator are still needed.
- **Examples**: Python, JavaScript
- **Advantages**: More convenient, no need for manual compilation.


Software for this Course
------------------------

The tutorials are in Python, but you may choose any programming language you like to complete the course. I will be able to provide good support for either Python or modern Fortran. Both are general-purpose languages, commonly used in climate science and beyond.

Option 1: Virtual Machine (simple, but slow)

Our system administrator (Daniel) and I (Sebastian) have created a Linux virtual machine for you and installed these on our lab computers. This will cover your needs for tutorials and exercises. You may decide to also install the virtual machine on your own computer using `VirtualBox <https://www.virtualbox.org/>`_.

Option 2: Build Environment (with guidance)

Alternatively, you can install all the tools on your computer. These will differ depending on your choice of language. You may even decide to use both. I will happily guide you through the process in the beginning of the semester.

**Python:**

Python is an interpreted language with a shallow initial learning curve and is ideal for prototyping. However, it is slow, energy-inefficient, and unsuitable for many types of larger projects. For Python, you will need:

* `Python 3.8 or newer <https://www.python.org/downloads/>`_
* Python packages `NumPy <https://numpy.org/install/>`_, `SciPy <https://scipy.org/>`_, and  `Matplotlib <https://matplotlib.org/stable/install/index.html>`_, best installed with `conda <https://www.anaconda.com/docs/getting-started/miniconda/install>`_.
* An IDE (e.g., Spyder) or code code editor and terminal emulator (e.g., Kate + Konsole)

**Modern Fortran:**

Fortran is a compiled language with a steeper learning curve and is not (yet) as interactive as Python. However, it scales well, is robust and reliable, energy-efficient, unbeaten in performance, and remains the go-to language for many computationally intensive tasks (e.g., climate modelling). For `modern Fortran <https://fortran-lang.org/>`_, you will need:

* A `Fortran compiler (GNU Fortran is recommended) <https://gcc.gnu.org/fortran/>`_, best installed with `conda <https://www.anaconda.com/docs/getting-started/miniconda/install>`_.
* The `Fortran Package Manager <https://fpm.fortran-lang.org/>`_, best installed with conda.
* An IDE (e.g., Code::Blocks) or a code editor and terminal emulator (e.g., Kate + Konsole)

Note: You may need additional packages for your group project.

**To-Do:**

I will introduce the languages in our first session. Please discuss your language preference at the beginning of the semester, so it can be taken into account during practicals and group project planning.


Terminology
-----------
In this exercise series, you will be introduced to some vocabulary you may not yet know. A complete list the terminology used in this course (incl. definitions and examples) can be found in the :doc:`DICTIONARY<../resources/dictionary>`. 


Experiment, Ask Questions, Have Fun!
------------------------------------

.. figure:: question_cc0.jpg
   :figwidth: 200px
   :width: 200px
   :align: left

Note that the exercises are designed for you to experiment and have fun with. Don't worry if you go in a direction you feel deviates from what is usually expected in such a course. Experimentation will help you develop a solid grasp of the taught concepts. This is important since subsequent exercises will build on previously leanred concepts.

Your work and questions will give me an idea of where I can support you more or improve the course. We all started learning at some point, so don't worry if your questions seem basic. Happy to help you learn! :)

.. warning::
    Your knowledge and skills build up progressively in the exercise series. You use concepts and script written in previous exercises. You should therefore make sure you do not miss any exercise, or catch up before the subsequent exercise.

**... now that this is out of the way, you're good to go!**
