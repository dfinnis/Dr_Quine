# Dr Quine

An introduction to Quines and Virus

#### Final Score 125/100

## Challenge

The following 3 programs in C, ASM, and Python:

* **Colleen** - Print my source code

* **Grace** - Clone myself, spawning my kid

* **Sully** - Self-replicate 5 times


## Getting Started

Clone this repo.

```git clone https://github.com/dfinnis/Dr_Quine.git```

In *C/* and *ASM/* first make the binaries.

```make```

Then run the binaries.

```./Colleen```, ```./Grace``` & ```./Sully```

In *Python/* run files directly.

```python Colleen```, ```python Grace``` & ```python Sully```


## Tests

<img src="https://github.com/dfinnis/Dr_Quine/blob/master/img/tests.png" width="379">

For each language:

* Compares Colleen's output with Colleen's source code

* Compares Grace and Grace_Kid

* Ensures Sully creates 5 children, identical apart from the number


## Dependencies

* Python 3.9.1 (no requirements.txt necessary)
* NASM 2.14.02
