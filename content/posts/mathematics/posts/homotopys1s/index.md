---
title: "Calculating the homotopy group of a S1S formula"
description: "In this post we will calculate a possible homotopy group of a formula in Monadic Second-order Logic of One Successor by studying it's associated Büchi automaton."
tags:
  - Logic
  - Automata Theory
  - Category Theory
date: "2026-03-09"
publishDate: "2026-08-09"
#series:
#prerequisites:
#  - "/blog/abouttheme.md"
#syndicate:
#  - "https://example.org"
Summary: "In this post we will calculate a possible homotopy group of a formula in Monadic Second-order Logic of One Successor by studying it's associated Büchi automaton."
audio: []
videos: []
images: []
---

# Introduction

There have been many attempts at finding a topological invariant for automatas. In this post we will apply a particularly simple and naive invariant to formulas in Monadic Second-order Logic of One Successor (S1S) using the Büchi automaton associated with them. The invariant presented here is not particularly powerful, but it is a good example of what a topological invariant can look like in a logical theory.

# Non-rigorous descriptions of the logical components

I will be giving a very informal definition of Monadic second order logic and Büchi automaton in order to reduce the amount of technical details and focus on the homotopy group calculation.

## Monadic Second-order Logic of One Successor (S1S)

Monadic second order logic is an extension of first-order logic where we can quantify over unary relations, i.e. subsets of the domain. 

For example the formula $\exists X \forall x (X(x) \leftrightarrow P(x))$ states that there exists a subset $X$ of the domain such that for every element $x$ of the domain, $x$ is in $X$ if and only if $P(x)$ holds.

We then define S1S as the $(0,\subseteq,\text{Succ})$-theory of the structure with universe $\mathbb{N}$, standard interpretations for $\subseteq$ and $\text{Succ}(X)=\{ x+1 | x \in X \}$.

For example the formula $\exists X \forall x (X(x) \leftrightarrow \text{Succ}(X)(x))$ states that there exists a subset $X$ of $\mathbb{N}$ such that for every element $x$ of $\mathbb{N}$, $x$ is in $X$ if and only if $x+1$ is in $X$.

## Büchi Automaton

An automaton is a mathematical structure which measures the concept of computability of a language. More formally,

{{<mathdef type="definition" id="def:buchi" name="Büchi Automaton" >}}
  A \textbf{(deterministic) Büchi automaton} is a tuple $A=(Q,\Sigma,\delta,q_0,F)$ where:
  \begin{itemize}
    \item $Q$ is a finite set of states
    \item $\Sigma$ is a finite alphabet
    \item $\delta \subseteq Q \times \Sigma \times Q$ is a transition relation
    \item $q_0 \in Q$ is the initial state
    \item $F \subseteq Q$ is the set of accepting states
  \end{itemize}

  We define a \textbf{run} of $A$ on an infinite word $w=w_0 w_1 w_2 \ldots$ over $\Sigma$ as a sequence of states $r=r_0 r_1 r_2 \ldots$ such that $r_0=q_0$ and for every $i \geq 0$, $(r_i,w_i,r_{i+1}) \in \delta$.
  
  We say that $A$ \textbf{accepts} $w$ if there exists a run $r$ of $A$ on $w$ such that the set of states that appear infinitely often in $r$ has a non-empty intersection with $F$. The language recognized by $A$, denoted by $L(A)$, is the set of infinite words over $\Sigma$ that are accepted by $A$.
{{</mathdef>}}

The tuple representation of a Büchi automaton is the formal definition, but it is much more intuitive to work with a graphical representation where:
- States are represented as nodes in a graph
- Transitions are represented as directed edges between nodes, labeled with the input symbol that triggers the transition
- The initial state is often indicated with an incoming arrow from nowhere
- Accepting states are often indicated with a double circle on the node

{{<mathdef type="example" >}}
  Consider the Büchi automaton $A$ defined by the tuple (Q, $\Sigma$, $\delta$, $q_0$, F) where:
  \begin{itemize}
    \item $Q=\{q_0,q_1\}$
    \item $\Sigma=\{0,1\}$
    \item $\delta=\{(q_0,0,q_0),(q_0,1,q_1),(q_1,0,q_1),(q_1,1,q_0)\}$
    \item $q_0$ is the initial state
    \item $F=\{q_1\}$ is the set of accepting states
  \end{itemize}

  The graphical representation of this automaton is as follows:

  {{<figure src="/images/buchi_example.png" alt="Büchi Automaton Example" >}}
{{</mathdef>}}

## Relationship between S1S and Büchi Automaton

One can interpret S1S as a first order $(0,\subseteq,\text{Succ},\text{Sing})$-theory of the structure with universe $\mathcal{P}(\mathbb{N})$, standard interpretations for $\subseteq$ and $\text{Succ}(X)=\{ x+1 | x \in X \}$, and $\text{Sing}(X)$ holds if and only if $X$ is a singleton. We can then only consider subsets of $\mathbb{N}$ as the domain of our formulas. 

Because $\mathbb{N}$ is countable, we can encode subsets of $\mathbb{N}$ as infinite sequences of bits, where the $n$-th bit is $1$ if $n$ is in the subset and $0$ otherwise. This way we can interpret formulas in S1S as languages of infinite words over the alphabet $\{0,1\}$.

> [!WARNING]
> There is a catch in this reasoning. S1S is a second order theory which models subsets of $\mathbb{N}$. It is not obvious that there isn't an uncountable model in this theory.

We can now define an equivalence between formulas in S1S and Büchi automata. 

{{<mathdef type="definition" >}}
  We say that a formula $\phi$ in S1S is equivalent to a Büchi automaton $A$ if the language of infinite words recognized by $A$ is exactly the set of infinite words that encode subsets of $\mathbb{N}$ that satisfy $\phi$.
{{</mathdef>}}

There is a well-known result that states that for every formula $\phi$ in S1S, there exists a Büchi automaton $A$ such that $\phi$ is equivalent to $A$. Conversely, for every Büchi automaton $A$, there exists a formula $\phi$ in S1S such that $\phi$ is equivalent to $A$. For the purposes of this post we will only be interested in the first direction of this result as it gives a construction of a Büchi automaton from a formula in S1S.

{{<mathdef type="Theorem" id="thm:S1S-Buchi" name="Equivalence between S1S and Büchi Automata" >}}
  For every formula $\phi$ in S1S, there exists a Büchi automaton $A$ such that $\phi$ is equivalent to $A$.
{{</mathdef>}}












{{<mathdef type="definition" id="def:S1S" name="Monadic Second-order Logic of One Successor (S1S)" >}}
  The Monadic Second-order Logic of One Successor (S1S) is a formal system 
  
{{</mathdef>}}

