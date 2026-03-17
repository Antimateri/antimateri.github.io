---
title: "Stronger versions of homotopy equivalence and how to check them"
description: "Using the whitehead group we want to determine if a homotopy equivalence between finite CW-complexes can be expanded into stronger equivalences."
tags:
  - K-theory
  - Algebraic topology
date: "2026-03-12"
publishDate: "2026-03-12"
series:
  - Topological K-theory
prerequisites:
  - "lower-k-theory/index.md"
#  - "/blog/abouttheme.md"
#syndicate:
#  - "https://example.org"
Summary: "Using the whitehead group we want to determine if a homotopy equivalence between finite CW-complexes can be expanded into stronger equivalences."
audio: []
videos: []
images: []
---

# Introduction

Homotopy equivalences describes a very strong similarity between two topological spaces, nevertheless that function can be very hard to describe. Our objective will be to check a stronger condition of equivalence between spaces: simple homotopy equivalence, which implies the transformation between the spaces is simple.

# Simple Homotopy Equivalence

We start by defining what a simple Homotopy Equivalence is, for that we first need to understand the concept of elementary expansion and elementary retraction.

{{<mathdef type="Definition" name="Free face of a simplex">}}
Let $K$ be a simplicial complex and let $\sigma$ be a simplex of $K$. 
A face $\tau < \sigma$ is called a \emph{free face} of $\sigma$ if 
$\tau$ is contained in $\sigma$ and in no other simplex of $K$ of 
higher dimension.
{{</mathdef>}}

Essentially, a free face of a simplex $\sigma$ is a face whose only connection to the complex is by $\sigma$. With this we can define an elementary expansion.

{{<mathdef type="Definition" name="Elementary expansion">}}
Let $X$ be a CW complex. An <strong>elementary expansion</strong> of $X$ is the map describing the process of forming a new CW complex $Y$ by adjoining a pair of cells $(e^{n},e^{n+1})$ to $X$ where $e^{n}$ is a free face of $e^{n+1}$.
{{</mathdef>}}

An elementary expansion is, intuitively, to add a simplex and an exterior face to our space. 

The following pictures from <a href="https://www.math.toronto.edu/qiu/writings/SimpleHomotopy.pdf"> Arthur Lei Qiu's notes on "SIMPLE HOMOTOPY EQUIVALENCE AND WHITEHEAD GROUPS"</a> describe an elementary expansion on $X$ by a 1-cell:

<img src="images/simplehomotopy1.webp" style="width: 55%;" />
<img src="images/simplehomotopy2.webp" style="width: 55%; />

> [!NOTE] We then define an elementary collapse as the opposite operation, to remove a simplex with a face "in the boundary".

{{<mathdef type="Definition" name="Elementary collapse">}}
Let $K$ be a simplicial complex. Suppose $\sigma$ is a simplex of $K$ and 
$\tau < \sigma$ is a face of $\sigma$ that is a free face; that is, $\tau$ is 
contained in $\sigma$ and in no other simplex of $K$. We define an <strong>elementary collapse</strong> as the natural map from $K$ to $K\setminus \{\sigma, \tau\}$.
{{</mathdef>}}

We now have the language to define a simple homotopy equivalence

{{<mathdef type="Definition" name="Simple homotopy equivalence">}}
Let $f : X \to Y$ be a map of finite CW-complexes. We call it a <strong>simple homotopy equivalence</strong> if there is a sequence of maps

$$X = X[0] \xrightarrow{f_0} X[1] \xrightarrow{f_1} X[2] 
\xrightarrow{f_2} \cdots \xrightarrow{f_{n-1}} X[n] = Y$$
such that each $f_i$ is an elementary expansion or elementary collapse and $f$ is homotopic to the composite of the maps $f_i$.
{{</mathdef>}}

A function is a simple homotopy equivalence if it can be described by inserting or removing finitely many simplexes. Our objective in this post is to decide if a given homotopy equivalence is simple.

# The Whitehead torsion for chain complexes

We now define the obstruction used as a sufficient and necessary condition to check a chain homotopy equivalence is "simple" in a similar way as the one described above, we will later expand this definition to topological spaces.

## Definition

{{<mathdef type="Definition" name="Chain contraction">}}
Let $C_*$ be a contractible $R$-chain complex, we define a <strong>chain contraction</strong> as a collection of $R$-homomorphisms $\gamma_n:C_n\to C_{n+1}$ such that $c_{n+1}\circ \gamma_n +\gamma_{n-1}\circ c_n =id_{C_n}$ for all $n\in \mathbb{Z}$.
{{</mathdef>}}

Having a chain contraction is equivalent to being contractible as it can be easily checked that if a chain has a chain contraction, its homology is everywhere 0.

Because we are going to be working with the whitehead group it would be useful to not allow basis changes in the modules.

{{<mathdef type="Definition" name="Based free chain complex">}}
A chain complex $C_*$ of $R$-modules is called <strong>based free</strong> if for every $n$ the module $C_n$ is a finitely generated free $R$-module together with a specified basis.
{{</mathdef>}}

We are now ready to define the torsion of a chain complex

{{<mathdef type="Definition" name="Whitehead torsion of a chain complex">}}
Let $C_*$ be a based free contractible $R$-chain complex. Consider the functors $(-)_{odd}$ and $(-)_{even}$ with 
$$(C_*)_{odd}=\bigoplus_{n\in\mathbb{Z}}C_{2n+1}, \ (C_*)_{even}=\bigoplus_{n\in\mathbb{Z}}C_{2n}.$$
Let $\gamma_*$ be a chain contraction, we define the <strong>Whitehead torsion</strong> of $C_*$ as
$$\tau(C_*):=\left[(c_*+\gamma_*)_{odd}\right]\in \tilde{K}_1(R).$$
{{</mathdef>}}

The definition does not depend on the decision of $\gamma$ but I will leave this unproven.

## Examples

> [!NOTE] I want to add examples at some point but i am slightly out of time for my exam so I will do this later.

# The Whitehead torsion for topological spaces.

We now apply the previous definition to topological spaces

## Definition

> [!NOTE] I would like to add a bit of a preamble and explanation on here, TODO

{{<mathdef type="Definition" name="Whitehead torsion of a homotopy equivalence">}}
Let $f:X\to Y$ be a cellular homotopy equivalence of connected finite CW-complexes $X, Y$ with $\pi_1(X)=\pi_1(Y)=:\pi$, let $\tilde{X}$ and $\tilde{Y}$ be their respective universal coverings. consider the lift of $f$ along the covering $\tilde{f}: \tilde{X}\to \tilde{Y}$, we define the <strong>Whitehead torsion of </strong>$f$, $\tau(f)$, as the projection of 
$$\tau\left(cone\left(\tilde{f}\right)\right)\in\tilde{K}_1(\mathbb{Z}\pi)$$
into the whitehead group $Wh(\pi)$:
$$\tau(f):=\left[\tau\left(cone\left(\tilde{f}\right)\right)\right]\in Wh(\pi).$$
{{</mathdef>}}

This is well defined because $cone(\tilde{f})$ is contractible for any $f$ homotopy equivalence and you can always take a cellular basis as the preferred base for the $R\pi$-modules.

Since $\tau(f)\in Wh(\pi)$ the choice of the cellular basis does not
matter anymore. 

## Calculation

> [!NOTE] TODO: add an explicit calculation at some point, you would need to be insane to try to do it that way but it is nevertheless a good way of memorizing the definition. I would also like to clean this next lemma and calculate something using it.

{{<mathdef type="Theorem" name="Basic properties of the Whitehead torsion">}}
<ol>
<li>
Let $X_0, X_1, X_2, Y_0, Y_1, Y_2$ be finite CW-complexes such that there is a homotopy equivalence $f_i:X_i\to Y_i$ for $i=0,1,2$, then the function 
$$f:=f_1\bigcup_{f_0} f_2: X:=X_1\bigcup_{X_0} X_2\to Y:= Y_1\bigcup_{Y_0} Y_2$$ 

is a homotopy equivalence and we can calculate its torsion by
$$\tau(f) = (l_1)_* \tau(f_1) + (l_2)_* \tau(f_2) - (l_0)_* \tau(f_0)$$

where $l_i$ is the natural immersion from $Y_i$ to $Y$ for $i=0,1,2$.

</li>

<li>
<strong>Homotopy invariance</strong>

Let $ f \simeq g : X \to Y $ be homotopic maps of finite CW-complexes. Then the homomorphisms 
$ f_*, g_* : \mathrm{Wh}(\pi_1(X)) \to \mathrm{Wh}(\pi_1(Y))$ agree. If additionally f and g are homotopy equivalences, then we obtain
$$
\tau(g) = \tau(f);
$$
</li>

<li>
<strong>Composition formula</strong>

Let $ f : X \to Y $ and $ g : Y \to Z$ be homotopy equivalences of finite CW-complexes. Then we get
$$
\tau(g \circ f) = g_* \tau(f) + \tau(g);
$$
</li>

<li> <strong>Product formula</strong>

Let $f : X' \to X$ and $g : Y' \to Y$ be homotopy equivalences of connected finite CW-complexes. Then
$$
\tau(f \times g) = \chi(X) \cdot j_* \tau(g) + \chi(Y) \cdot i_* \tau(f)
$$
where $\chi(X), \chi(Y) \in \mathbb{Z}$ denote the Euler characteristics, $j_* : \mathrm{Wh}(\pi_1(Y)) \to \mathrm{Wh}(\pi_1(X \times Y)) $ is the homomorphism induced by 
$j : Y \to X \times Y, \quad y \mapsto (y, x_0)$
for some base point $ x_0 \in X $, and $i_*$ is defined analogously.
</li>
</ol>
{{</mathdef>}}

Notice that by using the homotopy invariance property we can can define the torsion over non-cellular $f$ thanks to the cellular approximation theorem.

# Checking if a homotopy equivalence is simple

This last theorem give us the sufficient and necessary condition we were looking for

{{<mathdef type="Theorem" name="Whitehead torsion and simple homotopy equivalences (Theorem 3.44)">}}
<ol>
 <li>Let $X$ be a finite CW-complex. Then for any element $x \in Wh(\pi_1(X))$ there is an inclusion
$$
i: X \to Y
$$
of finite CW-complexes such that $i$ is a homotopy equivalence and
$$
i_*(\tau(i))=x.
$$
</li>
<li>
Let $f: X \to Y$ be a homotopy equivalence of finite CW-complexes. Then its Whitehead torsion
$$
\tau(f) \in Wh(\pi_1(Y))
$$
vanishes if and only if $f$ is a simple homotopy equivalence.
</li>
</ol>
{{</mathdef>}}

> [!NOTE] TODO: add an example of usage like proving that any homotopy equivalence between spaces with fundamental group $\mathbb{Z}$ is simple.

# Bordisms

There is a subtly stronger relation than simple homotopy theory equivalence, which is the one of being the boundary of a bordism. In this section we will use again the Whitehead torsion to check if a homotopy equivalence is the boundary of a bordism.

## Definitions

We start by defining the concept of bordism.

{{<mathdef type="Definition" name="Cobordism or bordism">}}
Let $M_0, M_1$ be two closed $n$-manifolds. A <strong>cobordism</strong> $(W; M_0, f_0, M_1, f_1)$ between $M_0$ and $M_1$ is a compact $(n+1)$-manifold $W$ together with a decomposition of its boundary $\partial W = \partial W_0 \sqcup \partial W_1$ and diffeomorphisms $f_i: M_i \to \partial W_i$ for $i=0,1$.

I $f_0$ and $f_1$ are clear from the context, we will simply write $(W; M_0, M_1)$ for a cobordism between $M_0$ and $M_1$.
{{</mathdef>}}

This concept on its own is not particularly insightful, we are more interested then in bordisms with extra conditions.

{{<mathdef type="Definition" name="h-Cobordism and s-Cobordism">}}
Let $(W; M_0, f_0, M_1, f_1)$ be a cobordism between $M_0$ and $M_1$. We say that $W$ is an <strong>h-cobordism</strong> if the inclusions $\partial W_i \to W$ are homotopy equivalences for $i=0,1$. 

Symmetrically, we say that $W$ is an <strong>s-cobordism</strong> if the inclusions $\partial W_i \to W$ are simple homotopy equivalences for $i=0,1$.
{{</mathdef>}}

## Geometric interpretation

The h-cobordisms and s-cobordisms are generalizations of the concept of homotopy equivalence and simple homotopy equivalence respectively (where the map would be W plus the diffeomorphisms). That any h-cobordism (resp. s-cobordism) is a homotopy equivalence (resp. simple homotopy equivalence) is clear by the definition but we can get a stronger result. It is enough for a cobordism to be an h-cobordism to induce a simple homotopy equivalence between its boundaries (I will not prove this but with a couple additional results follows it trivially from the definition).

We then need another definition for the whitehead torsion of a cobordism, to distinguish between h-cobordisms and s-cobordisms.
{{<mathdef type="Definition" name="Whitehead torsion of a cobordism">}}
Let $(W; M_0, f_0, M_1, f_1)$ be an h-cobordism between $M_0$ and $M_1$. We define the <strong>Whitehead torsion of </strong>$W$ as the Whitehead torsion of the inclusion $f_0: M_0 \to W_0 \to W$:
$$\tau(W,M_0):=\tau(f_0)\in Wh(\pi_1(M_0)).$$
{{</mathdef>}}

with this we can state the equivalent theorem for h-cobordisms and s-cobordisms.

{{<mathdef type="Theorem" name="s-Cobordism Theorem">}}
Let $M_0$ be a connected closed manifold of dimension $n \ge 5$ with fundamental group $\pi = \pi_1(M_0)$. Then:
<ol>
 <li>Let $(W; M_0, f_0, M_1, f_1)$ be an $h$-cobordism over $M_0$. Then $W$ is diffeomorphic to $M_0 \times [0,1]$ if and only if its Whitehead torsion $\tau(W,M_0)$ vanishes.</li>

 <li>For any $x \in Wh(\pi)$ there is an $h$-cobordism $(W; M_0, f_0, M_1, f_1)$ over $M_0$ with
$$
  \tau(W,M_0)=x \in Wh(\pi).
$$
 </li>

 <li> The function assigning to an $h$-cobordism $(W; M_0, f_0, M_1, f_1)$ over $M_0$ its Whitehead torsion yields a bijection from the diffeomorphism classes relative $M_0$ of $h$-cobordisms over $M_0$ to the Whitehead group $Wh(\pi)$. </li>
</ol>
{{</mathdef>}}

Notice that from this theorem we get that the geometric intuition of a s-cobordism is to be diffeomorphic to a cone over the boundary, and that the h-cobordisms are a generalization of this concept where we allow some "twisting" of the cone, which is measured by the Whitehead torsion.

We can now define algebraic invariants between h-cobordisms up to bounded diffeomorphisms using also negative $K$-theory.

{{<mathdef type="Theorem" name="Bounded h-Cobordism Theorem">}}
Suppose that $M_0$ is parametrized over $\mathbb{R}^k$ and satisfies $\dim M_0 \ge 5$. Let $\pi$ be its fundamental groupoid. Equivalence classes of bounded $h$-cobordisms over $M_0$ modulo bounded diffeomorphism relative $M_0$ correspond bijectively to elements in $\kappa_{1-k}(\pi)$, where
$$
\kappa_{1-k}(\pi)=
\begin{cases}
Wh(\pi) & \text{if } k=0,\\
\widetilde{K}_0(\mathbb{Z}\pi) & \text{if } k=1,\\
K_{1-k}(\mathbb{Z}\pi) & \text{if } k\ge 2.
\end{cases}
$$
{{</mathdef>}}

The strength of this result comes from the weakness of the equivalence relation, asking for a bordism to be diffeomorphic to another is a very strong condition. This makes this algebraic invariant very powerful, as it can distinguish between different bordisms that are not diffeomorphic but are still "similar" in a homotopical sense.