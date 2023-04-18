<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <assign|chapter-nr|0><chapter|Elements of set theory>

  <section|Basic concepts about classes and sets>

  Every book about mathematical subjects must be based on one form of set
  theory. Because the focus of this book is on mathematical analysis instead
  of the foundations of mathematics, I have decided to use Von Neumann's set
  theory instead of the set theory of Fraenkel, Skolem and Zermelo. The
  benefit of Von Neumann's theory is that it is nearer to the naive set
  theory of Cantor. This book assumes that the basics of mathematical logic
  are understood, more specifically that the reader knows the meaning of the
  following terms:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<wedge\>>|<cell|meaning>|<cell|and>>|<row|<cell|\<vee\>>|<cell|meaning>|<cell|or>>|<row|<cell|\<neg\>>|<cell|meaning>|<cell|not>>|<row|<cell|\<Rightarrow\>>|<cell|meaning>|<cell|implies>>|<row|<cell|\<Leftrightarrow\>>|<cell|meaning>|<cell|is
    equivalent with>>|<row|<cell|\<vdash\>,\<vDash\>>|<cell|meaning>|<cell|with,where>>|<row|<cell|\<forall\>>|<cell|meaning>|<cell|<prefix-for-all>>>|<row|<cell|\<exists\>>|<cell|meaning>|<cell|there
    exists>>|<row|<cell|\<exists\>!>|<cell|meaning>|<cell|there exists a
    unique>>>>
  </eqnarray*>

  and how to use them. Axiomatic set theory is based on two undefined
  concepts: <with|font-series|bold|class> and the
  <with|font-series|bold|membership> relation between classes (noted as
  <math|\<in\>>). Intuitive you can think of a class as a collection and
  <math|x\<in\>A> to mean that <math|x> is part of the collection where
  <math|A> stands for. We introduce then axioms that state which are true
  statements about these undefined concepts. Further we introduce different
  definitions that helps us to simplify our notation. To start with, we
  define the concept of <math|\<nin\>> [not member of]

  <\definition>
    Let A be a class then <math|x\<nin\>A> is equivalent with saying
    <math|\<neg\><around*|(|x\<in\>A|)>>.\ 
  </definition>

  Next we define <with|font-series|bold|sets> and
  <with|font-series|bold|elements>, they are the same thing. A
  <with|font-series|bold|set> or <with|font-series|bold|element> is something
  that is a member of a class.

  <\definition>
    <label|element is set>We say that a <with|font-series|bold|class>
    <math|x> is a <with|font-series|bold|element> if <math|x\<in\>A> where
    <math|A> is a class. Another name for a <with|font-series|bold|element>
    is a <with|font-series|bold|set>
  </definition>

  From here on we use the following convention: elements are noted in
  <with|font-series|bold|lower-case> and classes are noted in
  <with|font-series|bold|upper-case>. Next we define equality of classes.

  <\definition>
    Let <math|A,B> classes then we say that <math|A=B> if and only if

    <\equation*>
      \<forall\>X<text| we have >A\<in\>X\<Rightarrow\>B\<in\>X\<wedge\>B\<in\>X\<Rightarrow\>A\<in\>X
    </equation*>

    Less formally, two classes <math|A> and <math|B> are equal if every class
    that contains A or B must contains <math|B> or <math|A>.
  </definition>

  Once we have defined equality we can define inequality

  <\definition>
    Let <math|A> and <math|B> classes then <math|A\<neq\>B> is equivalent
    with <math|\<neg\><around*|(|A=B|)>>
  </definition>

  If two classes are equal, we expect them to contain the same elements, this
  is stated in the first set axiom.

  <\axiom>
    <label|axiom of extent><index|axiom of extent><dueto|Axiom of extent>

    <\equation*>
      A=B\<Leftrightarrow\><around*|[|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A|]>
    </equation*>

    Less formally <math|A> is equal to <math|B> if and only if ever element
    of <math|A> is a element of <math|B> and every element of <math|B> is a
    element of <math|A>, in other words <math|A> and <math|B> have the same
    elements.
  </axiom>

  <\definition>
    Let <math|A> and <math|B> classes then <math|A> is a subclass of <math|B>
    noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B
    </equation*>

    So <math|A> is a subclass of <math|B> iff every element of <math|A> is
    also a element of <math|B>.
  </definition>

  <\definition>
    Let <math|A> and <math|B> classes then <math|A> is a proper subclass of
    <math|B> noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>A\<neq\>B
    </equation*>

    So <math|A> is a proper subclass of <math|B> iff <math|A> is different
    from <math|B> and every element of <math|A> is also a element of
    <math|B>.
  </definition>

  <\theorem>
    <label|class properties (1)>Let <math|A,B,C> be classes then the
    following holds:

    <\enumerate>
      <item>A=A

      <item><math|A=B\<Rightarrow\>B=A>

      <item><math|A=B\<wedge\>B=C\<Rightarrow\>A=C>

      <item><math|A\<subseteq\>B\<wedge\>B\<subseteq\>A\<Rightarrow\>A=B>

      <item><math|A\<subseteq\>B\<wedge\>B\<subseteq\>C\<Rightarrow\>A\<subseteq\>C>

      <item><math|A=B\<Rightarrow\>A\<subseteq\>B>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|x\<in\>A\<Rightarrow\>x\<in\>A> and
      <math|x\<in\>A\<Rightarrow\>x\<in\>A> are obviously true, hence using
      the Axiom of Extent [axiom: <reference|axiom of extent>] it follows
      that <math|A=A>

      <item>As <math|A=B> we have using the Axiom of Extent [axiom:
      <reference|axiom of extent>] that <math|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A>
      which is equivalent with <math|x\<in\>B\<Rightarrow\>x\<in\>A\<wedge\>x\<in\>A\<Rightarrow\>x\<in\>B>.
      Using the Axiom of Extent [axiom: <reference|axiom of extent>] it
      follows that <math|B=A>

      <item>As <math|A=B\<wedge\>B=A> we have by he Axiom of Extent [axiom:
      <reference|axiom of extent>] that

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>A>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<eq-number><label|eq
        1.1 001>>>|<row|<cell|x\<in\>B>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<eq-number><label|eq
        1.2 001>>>|<row|<cell|x\<in\>B>|<cell|\<Rightarrow\>>|<cell|x\<in\>C<eq-number><label|eq
        1.3 001>>>|<row|<cell|x\<in\>C>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<eq-number><label|eq
        1.4 001>>>>>
      </eqnarray*>

      From [eq: <reference|eq 1.1 001>] and [eq: <reference|eq 1.3 001>] it
      follows that <math|x\<in\>A\<Rightarrow\>x\<in\>C> and from [eq:
      <reference|eq 1.4 001>] and [eq: <reference|eq 1.2 001>] it follows
      that <math|x\<in\>C\<Rightarrow\>x\<in\>A>. Using the Axiom of Extent
      [axiom: <reference|axiom of extent>] it follows then that <math|A=C>.

      <item>From <math|A\<subseteq\>B\<wedge\>B\<subseteq\>A> it follows that
      <math|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A>,
      so by the Axiom of Extent [axiom: <reference|axiom of extent>] we have
      <math|A=b>

      <item>As <math|A\<subseteq\>B\<wedge\>B\<subseteq\>C> that
      <math|x\<in\>A\<Rightarrow\>x\<in\>B> and
      <math|x\<in\>B\<Rightarrow\>x\<in\>C> proving that
      <math|x\<in\>A\<Rightarrow\>x\<in\>C> or <math|A\<subseteq\>C>

      <item>If <math|x\<in\>A> then as <math|A=B> we have by the axiom of
      extension [axiom: <reference|axiom of extent>] that <math|x\<in\>B>,
      hence <math|A\<subseteq\>B>.
    </enumerate>

    \;
  </proof>

  One way to create a new class is to specify a predicate that a object must
  satisfies and then take the class of all objects that satisfies this
  predicate. The problem with this construction is that it can lead to
  paradoxes like the famous Russell paradox. Consider the predicate
  <math|R<around*|(|x|)>=x\<nin\>x>, this predicate is true for <math|x> if
  <math|x> is not a member of itself and consider the class that contains all
  classes that has not them self as member. Does this class contain itself
  yes or no? If the class contain itself then by definition
  <math|R<around*|(|x|)>> should be true so the class should not contain
  itself leading to a contradiction. If the class does not contain itself
  then it satisfies <math|R<around*|(|x|)>>, hence it is a member of itself
  again leading to a contradiction. So we can not test the predicate
  <math|R<around*|(|x|)>> for all classes and thus can not define the class
  of all classes for which <math|R<around*|(|x|)>> is true. The axiom of
  class construction allows us to create a new class in a safe way.

  <\axiom>
    <label|axiom of construction><dueto|Axiom of Construction>Let
    <math|P<around*|(|x|)>> be a statement about <math|x> [using mathematical
    logic] then there exists a class <math|C> such that <math|x\<in\>C> iff
    <math|x> is a element and <math|P<around*|(|x|)>> is true.

    <\notation>
      This class <math|C> is noted as <math|C=<around*|{|x\|P<around*|(|x|)>|}>>,
      note the use of lower cases for <math|x>, which is a visual indicator
      that <math|x> is a element.
    </notation>
  </axiom>

  Note that that <math|C> consists of <with|font-series|bold|elements> for
  which <math|P<around*|(|x|)>> is true, it is not enough that
  <math|P<around*|(|x|)>> is true to belong to <math|C>. A object must belong
  to a class [be a element or equivalently be a set] and
  <math|P<around*|(|x|)>> must be true to be a member of <math|C>. Let's see
  how that solves Russell's paradox. Define the class
  <math|R=<around*|{|x\|x\<nin\>x|}>> [Russel's class] and check if
  <math|R\<in\>R> or <math|R\<nin\>R> is true:\ 

  <\description>
    <item*|<math|R\<in\>R>>Then <math|R> is a element and <math|R\<nin\>R>
    giving the contradiction <math|R\<in\>R\<wedge\>R\<nin\>R>

    <item*|<math|R\<nin\>R>>Then <math|R> is not a element or <math|R\<in\>R>
    which as <math|R\<nin\>R> gives that <math|R> is not a element
  </description>

  So we have that <math|R> is not a element and indeed because of this that
  <math|R\<nin\>R>. You can ask yourself if there actually exists elements,
  none of the axioms up to now can be used to get elements [or equivalent
  sets], for this we need extra axioms.

  The axiom of construction can be used as a way of creating a subclass of a
  given class.

  <\definition>
    Let <math|A> be a class and <math|P<around*|(|x|)>> a predicate then
    <math|<around*|{|x\<in\>A\|P<around*|(|x|)>|}>=<around*|{|x\|x\<in\>A\<wedge\>P<around*|(|x|)>|}>>
  </definition>

  Using the axiom of construction [axiom: <reference|axiom of construction>]
  we can then define the universal class <math|\<cal-U\>>.\ 

  <\definition>
    <label|universal class><index|<math|\<cal-U\>>><dueto|Universal class>The
    universal class <math|\<cal-U\>> is defined by
    <math|\<cal-U\>=<around*|{|x\|x=x|}>>
  </definition>

  The universal class contains all the elements, as is expressed in the
  following theorem.

  <\theorem>
    <label|universal class property>If <math|x> is a element then
    <math|x\<in\>\<cal-U\>>
  </theorem>

  <\proof>
    Let <math|x> be a element then, as <math|x=x> [see theorem:
    <reference|class properties (1)>] we have that <math|x\<in\>\<cal-U\>>
  </proof>

  We use now the axiom of construction to define the union and intersection
  of two classes.

  <\definition>
    <index|<math|A<big|cup>B>>Let <math|A,B> be two classes then the union of
    <math|A> and <math|B>, noted as <math|A<big|cup>B> is defined by

    <\equation*>
      A<big|cup>B=<around*|{|x\|x\<in\>A\<vee\>x\<in\>B|}>
    </equation*>
  </definition>

  <\definition>
    <index|<math|A<big|cap>B>>Let <math|A,B> be two classes then the union of
    <math|A> and <math|B>, noted as <math|A<big|cap>B> is defined by

    <\equation*>
      A<big|cap>B=<around*|{|x\|x\<in\>A\<wedge\>x\<in\>B|}>
    </equation*>
  </definition>

  Next we define the empty class, the class that does not contains a element.

  <\definition>
    <label|class empty set definition><index|<math|\<emptyset\>>>The empty
    class <math|\<varnothing\>> is defined by\ 

    <\equation*>
      \<varnothing\>=<around*|{|x\|x\<neq\>x|}>
    </equation*>
  </definition>

  <\theorem>
    <label|empty set property><math|\<varnothing\>> does not contains
    elements, meaning if <math|x> is a element then
    <math|x\<nin\>\<varnothing\>>
  </theorem>

  <\proof>
    We proof this by contradiction, so assume that there exists a element
    <math|x\<in\>\<varnothing\>> then <math|x\<neq\>x>, contradicting
    <math|x=x> [see theorem: <reference|class properties (1)>].
  </proof>

  <\theorem>
    <label|class empty set>If <math|A> is a class then\ 

    <\enumerate>
      <item><math|\<varnothing\>\<subseteq\>A>

      <item><math|A\<subseteq\>\<cal-U\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We proof this by contra-position, as
      <math|\<varnothing\>\<subseteq\>A> is equivalent with
      <math|x\<in\>\<varnothing\>\<Rightarrow\>x\<in\>A>. We must proof that
      <math|x\<nin\>A\<Rightarrow\>x\<nin\>\<varnothing\>>. Well if
      <math|x\<nin\>A> then certainly <math|x\<nin\>\<varnothing\>> [Theorem:
      <reference|empty set property>] so that
      <math|x\<nin\>A\<Rightarrow\>x\<nin\>\<varnothing\>>.

      <item>If <math|x\<in\>A> then <math|x> is a element, hence
      <math|x\<in\>\<cal-U\>> by [Theorem: <reference|universal class
      property>]
    </enumerate>
  </proof>

  We also have that every class with no elements is equal to the empty set
  [there is only one empty set]

  <\theorem>
    <label|class empty set is unique>If <math|A> is a a class such that
    <math|x\<in\>A> yields a contradiction then <math|A=\<varnothing\>>
  </theorem>

  <\proof>
    Let <math|x\<in\>A> then we have a contradiction, so <math|x\<in\>A> must
    be false and thus <math|x\<in\>A\<Rightarrow\>x\<in\>\<varnothing\>> is
    vacuously true which proves that <math|A\<subseteq\>\<varnothing\>>,
    combining this with [theorem: <reference|class empty
    set>,<reference|class properties (1)>] proves that
    <math|A=\<varnothing\>>
  </proof>

  <\corollary>
    <label|class not empty sets>Let <math|A> be a class such that
    <math|A\<neq\>\<varnothing\>> then <math|\<exists\>x> such that
    <math|x\<in\>A>
  </corollary>

  <\proof>
    We proof this by contradiction. Assume that <math|\<forall\>x> we have
    <math|x\<nin\>A> then <math|x\<in\>A> yields the contradiction
    <math|x\<in\>A\<wedge\>x\<nin\>A>, hence by [theorem: <reference|class
    empty set is unique>] <math|A=\<varnothing\>> which contradicts
    <math|A\<neq\>\<varnothing\>>.
  </proof>

  <\definition>
    Two classes <math|A,B> are disjoint iff <math|A<big|cap>B=\<varnothing\>>
  </definition>

  We define now the complement of a class

  <\definition>
    Let <math|A> be a class then the complement of <math|A> noted by
    <math|A<rsup|c>> is defined by\ 

    <\equation*>
      A<rsup|c>=<around*|{|x\|x\<nin\>A|}>
    </equation*>
  </definition>

  Something similar to the complement of a class is the difference between
  two classes

  <\definition>
    Let <math|A,B> be classes then the difference between <math|A> and
    <math|B> noted by <math|A\\B> is defined by\ 

    <\equation*>
      A\\B=<around*|{|x\|x\<in\>A\<wedge\>x\<nin\>B|}>\<equallim\><rsub|shorter
      notation><around*|{|x\<in\>A\|x\<in\>B|}>
    </equation*>
  </definition>

  We can express the difference of two classes using the intersection and the
  complement.

  <\theorem>
    <label|class difference>Let <math|A,B> be classes then\ 

    <\equation*>
      A\\B=A<big|cap>B<rsup|c>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>A\\B> then <math|x\<in\>A\<wedge\>x\<nin\>B> so that
    <math|x\<in\>A\<wedge\>x\<in\>B<rsup|c>>, further if
    <math|x\<in\>A<big|cap>B<rsup|c>> then <math|x\<in\>A\<wedge\>x\<nin\>B>.
    Using then the axiom of extent [axiom: <reference|axiom of extent>].
  </proof>

  <section|Class operations>

  <\theorem>
    <label|class intersection, union, inclusion>Let <math|A,B> are classes
    then we have\ 

    <\enumerate>
      <item><math|A\<subseteq\>A<big|cup>B>

      <item><math|B\<subseteq\>A<big|cup>B>

      <item><math|A<big|cap>B\<subseteq\>A>

      <item><math|A<big|cap>B\<subseteq\>B>

      <item>If <math|C> is a class such that <math|A\<subseteq\>C> and
      <math|B\<subseteq\>C> then <math|A<big|cup>B\<subseteq\>C>

      <item>If <math|C> is a class such that <math|C\<subseteq\>A> and
      <math|C\<subseteq\>B> then <math|C\<subseteq\>A<big|cap>B>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>A> then <math|x\<in\>A\<vee\>x\<in\>B> proving
      that <math|x\<in\>A<big|cup>B>, hence <math|A\<subseteq\>A<big|cup>B>

      <item>If <math|x\<in\>B> then <math|x\<in\>A\<vee\>x\<in\>B> proving
      that <math|x\<in\>A<big|cup>B>, hence <math|B\<subseteq\>A<big|cup>B>

      <item>If <math|x\<in\>A<big|cap>B> then
      <math|x\<in\>A\<wedge\>x\<in\>B>, hence <math|x\<in\>A> so that
      <math|x\<in\>A>, hence <math|A<big|cap>B\<subseteq\>A>

      <item>If <math|x\<in\>A<big|cap>B> then
      <math|x\<in\>A\<wedge\>x\<in\>B>, hence <math|x\<in\>B> so that
      <math|x\<in\>A>, hence <math|A<big|cap>B\<subseteq\>B>

      <item>If <math|x\<in\>A<big|cup>B> then
      <math|x\<in\>A\<Rightarrowlim\><rsub|A\<subseteq\>C>x\<in\>C> or
      <math|x\<in\>B\<Rightarrowlim\><rsub|B\<subseteq\>C>x\<in\>C> proving
      that <math|x\<in\>C>

      <item>If <math|x\<in\>C> then <math|x\<in\>A> and <math|x\<in\>B> so
      that <math|x\<in\>A<big|cap>B>
    </enumerate>
  </proof>

  <\theorem>
    <label|class inclusion and union and intersection>If <math|A,B> are
    classes then we have\ 

    <\enumerate>
      <item><math|A\<subseteq\>B> if and only if <math|A<big|cup>B=B>

      <item><math|A\<subseteq\>B> if and only if <math|A<big|cap>B=A>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<in\>A<big|cup>B\<Rightarrow\>x\<in\>A\<Rightarrowlim\><rsub|A\<subseteq\>B>x\<in\>B>
        and thus <math|A<big|cup>B\<subseteq\>B>. From the previous theorem
        [theorem: <reference|class intersection, union, inclusion>] we have
        <math|B\<subseteq\>A<big|cup>B> so by <reference|class properties
        (1)> we have <math|A<big|cup>B=B>

        <item*|<math|\<Leftarrow\>>>If <math|A<big|cup>B=B> then
        <math|x\<in\>A\<Rightarrow\>x\<in\>A<big|cup>B\<Rightarrowlim\><rsub|A<big|cup>B=B>x\<in\>B>
        and thus <math|A\<subseteq\>B>
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<in\>A\<Rightarrowlim\><rsub|A\<subseteq\>B>x\<in\>B\<Rightarrow\>x\<in\>A\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A<big|cap>B>
        proving that <math|A\<subseteq\>A<big|cap>B>. From the previous
        theorem we have <math|A<big|cap>B\<subseteq\>A> so by [theorem:
        <reference|class properties (1)>] we have <math|A<big|cap>B=A>

        <item*|<math|\<Leftarrow\>>>If <math|A<big|cap>B=A> we have
        <math|x\<in\>A\<Rightarrow\>x\<in\>A<big|cap>B\<Rightarrow\><around*|(|x\<in\>A\<wedge\>x\<in\>B|)>\<Rightarrow\>x\<in\>B>
        so <math|A\<subseteq\>B>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|class absorption laws><dueto|Absorption Laws>If <math|A,B> are
    classes then\ 

    <\enumerate>
      <item><math|A<big|cup><around*|(|A<big|cap>B|)>=A>

      <item><math|A<big|cap><around*|(|A<big|cup>B|)>=A>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>By [theorem: <reference|class intersection, union, inclusion> we
      have <math|A<big|cap>B\<subseteq\>A>, hence using [theorem:
      <reference|class inclusion and union and intersection>] we have that
      <math|A<big|cup><around*|(|A<big|cap>B|)>=A>

      <item>By [theorem: <reference|class intersection, union, inclusion>] we
      have <math|A\<subseteq\>A<big|cup>B>, hence using [theorem:
      <reference|class inclusion and union and intersection>] we have that
      <math|A<big|cap><around*|(|A<big|cup>B|)>=A>
    </enumerate>
  </proof>

  <\theorem>
    <label|class complement of comploment>Let <math|A> be a class then
    <math|<around*|(|A<rsup|c>|)><rsup|c>=A>
  </theorem>

  <\proof>
    If <math|x\<in\><around*|(|A<rsup|c>|)><rsup|c>> then <math|x> is a
    element and <math|x\<nin\>A> then <math|x\<in\>A> [for if
    <math|x\<nin\>A> we have <math|x\<in\>A<rsup|c>>]. If <math|x\<in\>A>
    then <math|x\<nin\>A<rsup|c>> so that
    <math|x\<in\><around*|(|A<rsup|c>|)><rsup|c>>.
  </proof>

  <\theorem>
    <label|class de Morgan's law><dueto|DeMorgan's Law>For all classes
    <math|A,B,C> we have\ 

    <\enumerate>
      <item><math|<around*|(|A<big|cup>B|)><rsup|c>=A<rsup|c><big|cap>B<rsup|c>>

      <item><math|<around*|(|A<big|cap>B|)><rsup|c>=A<rsup|c><big|cup>B<rsup|c>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><around*|(|A<big|cup>B|)><rsup|c>> then
      <math|x\<nin\>A<big|cup>B>, so that
      <math|\<neg\><around*|(|x\<in\>A\<vee\>x\<in\>B|)>=x\<nin\>A\<wedge\>x\<nin\>B>
      proving that <math|x\<in\>A<rsup|c><big|cap>B<rsup|c>>. If
      <math|x\<in\>A<rsup|c><big|cap>B<rsup|c>> then
      <math|x\<nin\>A\<wedge\>x\<nin\>B=\<neg\><around*|(|x\<in\>A\<vee\>x\<in\>B|)>>,
      so that <math|x\<nin\>A<big|cup>B> or
      <math|x\<in\><around*|(|A<big|cup>B|)><rsup|c>>. The proof follows then
      from the axiom of extent [axiom: <reference|axiom of extent>]

      <item>If <math|x\<in\><around*|(|A<big|cap>B|)><rsup|c>> then
      <math|x\<nin\>A<big|cap>B>, so that
      <math|\<neg\><around*|(|x\<in\>A\<wedge\>x\<in\>B|)>=x\<nin\>A\<vee\>x\<nin\>B>
      proving that <math|x\<in\>A<rsup|c><big|cup>B<rsup|c>>. If
      <math|x\<in\>A<rsup|c><big|cup>B<rsup|c>> then
      <math|><math|x\<nin\>A\<vee\>x\<nin\>B=\<neg\><around*|(|x\<in\>A\<wedge\>x\<in\>B|)>>,
      so that <math|x\<in\><around*|(|A<big|cap>B|)><rsup|c>>. The proof
      follows then from axiom of extent [axiom: <reference|axiom of extent>]
    </enumerate>
  </proof>

  <\theorem>
    <label|class class commutative,idempotent,associative,distributivity>Let
    <math|A,B,C> be classes then we have:

    <\description>
      <item*|commutativity>

      <\enumerate>
        <item><math|A<big|cup>B=B<big|cup>A>

        <item><math|A<big|cap>B=B<big|cap>A>
      </enumerate>

      <item*|idem potency>\ 

      <\enumerate>
        <item><math|A<big|cup>A=A>

        <item><math|A<big|cap>A=A>
      </enumerate>

      <item*|associativity>\ 

      <\enumerate>
        <item><math|A<big|cup><around*|(|B<big|cup>C|)>=<around*|(|A<big|cup>B|)><big|cup>C>

        <item><math|A<big|cap><around*|(|B<big|cap>C|)>=<around*|(|A<big|cap>B|)><big|cap>C>
      </enumerate>

      <item*|Distributivity>

      <\enumerate>
        <item><math|A<big|cup><around*|(|B<big|cap>C|)>=<around*|(|A<big|cup>B|)><big|cap><around*|(|A<big|cup>C|)>>

        <item><math|A<big|cap><around*|(|B<big|cup>C|)>=<around*|(|A<big|cap>B|)><big|cup><around*|(|A<big|cap>C|)>>
      </enumerate>
    </description>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|commutatitivity>>

      <\enumerate>
        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cup>B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B\<vee\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B<big|cup>A>>>>
        </eqnarray*>

        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cap>B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B\<wedge\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B<big|cap>A>>>>
        </eqnarray*>
      </enumerate>

      <item*|idem potency>\ 

      <\enumerate>
        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cup>A>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A>>>>
        </eqnarray*>

        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cap>A>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A>>>>
        </eqnarray*>
      </enumerate>

      <item*|associativity>\ 

      <\enumerate>
        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cup><around*|(|B<big|cup>C|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>B<big|cup>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\><around*|(|x\<in\>B\<vee\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>A\<vee\>x\<in\>B|)>\<vee\>x\<in\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cup>B\<vee\>x\<in\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|*A<big|cup>B|)><big|cup>C>>>>
        </eqnarray*>

        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cap><around*|(|B<big|cap>C|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>B<big|cap>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\><around*|(|x\<in\>B\<wedge\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>A\<wedge\>x\<in\>B|)>\<wedge\>x\<in\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cap>B\<wedge\>x\<in\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|*A<big|cap>B|)><big|cap>C>>>>
        </eqnarray*>
      </enumerate>

      <item*|Distributivity>\ 

      <\enumerate>
        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cup><around*|(|B<big|cap>C|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>B<big|cap>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\><around*|(|x\<in\>B\<wedge\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>A\<vee\>x\<in\>B|)>\<wedge\><around*|(|x\<in\>A\<vee\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cup>B\<wedge\>x\<in\>A<big|cup>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|A<big|cup>B|)><big|cap><around*|(|A<big|cup>C|)>>>>>
        </eqnarray*>

        <item>This follows from [axiom: <reference|axiom of extent>] and

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A<big|cap><around*|(|B<big|cup>C|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>B<big|cup>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\><around*|(|x\<in\>B\<vee\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>A\<wedge\>x\<in\>B|)>\<vee\><around*|(|x\<in\>A\<wedge\>x\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cap>B\<wedge\>x\<in\>A<big|cap>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|A<big|cap>B|)><big|cup><around*|(|A<big|cap>C|)>>>>>
        </eqnarray*>
      </enumerate>
    </description>
  </proof>

  <\theorem>
    <label|class set difference and union , intersection>Let <math|A,B,C> be
    classes then we have\ 

    <\enumerate>
      <item><math|A\\<around*|(|B<big|cup>C|)>=<around*|(|A\\B|)><big|cap><around*|(|A\\C|)>>

      <item><math|A\\<around*|(|B<big|cap>C|)>=<around*|(|A\\B|)><big|cup><around*|(|A\\C|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|(|B<big|cup>C|)>>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|A<big|cap><around*|(|B<big|cup>C|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|class de Morgan's law>>>>|<cell|A<big|cap><around*|(|B<rsup|c><big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap>B<rsup|c>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|idem
        potency>>>|<cell|<around*|(|<around*|(|A<big|cap>A|)><big|cap>B<rsup|c>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap><around*|(|A<big|cap>B<rsup|c>|)>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|<around*|(|A<big|cap>B<rsup|c>|)><big|cap>A|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap>B<rsup|c>|)><big|cap><around*|(|A<big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|<around*|(|A\\B|)><big|cap><around*|(|A\\C|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|(|B<big|cap>C|)>>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|A<big|cap><around*|(|B<big|cap>C|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|class de Morgan's law>>>>|<cell|A<big|cap><around*|(|B<rsup|c><big|cup>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|Distributivity>>>|<cell|*<around*|(|A<big|cap>B<rsup|c>|)><big|cup><around*|(|A<big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|<around*|(|A\\B|)><big|cup><around*|(|A\\C|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|class universal and empotyset properties>Let <math|A> be a class
    then we have:

    <\enumerate>
      <item><math|\<varnothing\><big|cup>A=A>

      <item><math|\<varnothing\><big|cap>\<varnothing\>=\<varnothing\>>

      <item><math|A<big|cup>\<cal-U\>=\<cal-U\>>

      <item><math|A<big|cap>\<cal-U\>=A>

      <item><math|A\\A=\<varnothing\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<varnothing\>\<subseteq\>A> [theorem: <reference|class
      empty set>] we have by [theorem: <reference|class inclusion and union
      and intersection>] that <math|\<varnothing\><big|cup>A=A>

      <item>As <math|\<varnothing\>\<subseteq\>A> [theorem: <reference|class
      empty set>] we have by [theorem: <reference|class inclusion and union
      and intersection>] that <math|\<varnothing\><big|cap>A=A>

      <item>As <math|A\<subseteq\>\<cal-U\>> [theorem <reference|class empty
      set>] we have by [theorem: <reference|class inclusion and union and
      intersection>] that <math|A<big|cap>\<cal-U\>=A>

      <item>As <math|A\<subseteq\>\<cal-U\>> [theorem <reference|class empty
      set>] we have by [theorem: <reference|class inclusion and union and
      intersection>] that <math|A<big|cap>\<cal-U\>=A>

      <item>Let <math|x\<in\>A\\A> then <math|x\<in\>A\<wedge\>x\<nin\>A> a
      contradiction, so by [theorem: <reference|class empty set is unique>]
      we have that <math|A\\A=\<varnothing\>>
    </enumerate>
  </proof>

  <section|Cartesian products>

  If <math|a> is a element we can use the axiom of construction [axiom:
  <reference|axiom of construction>] to define the class
  <math|<around*|{|x\|x=a|}>>, this leads to the following definition.

  <\definition>
    If <math|a> is a element then <math|<around*|{|a|}>=<around*|{|x<around*|\||x=a|\<nobracket\>>|}>>
    is a class containing only one element. The class <math|<around*|{|a|}>>
    is called a <with|font-series|bold|singleton>.
  </definition>

  <\lemma>
    <label|element a=b=\<gtr\>{a}={b}>If <math|a,b> are elements such that
    <math|a=b> then <math|<around*|{|a|}>=<around*|{|b|}>>
  </lemma>

  <\proof>
    If <math|z\<in\><around*|{|a|}>> then <math|z=a> which by <math|a=b> and
    [theorem: <reference|class properties (1)>] proves that <math|z=b> hence
    <math|z\<in\><around*|{|b|}>>. Likewise if <math|z\<in\><around*|{|b|}>>
    then <math|z=b> which by <math|a=b> and [theorem: <reference|class
    properties (1)>] proves that <math|z=a> hence
    <math|z\<in\><around*|{|a|}>>. Using the axiom of extent [axiom:
    <reference|axiom of extent>] it follows then that
    <math|<around*|{|a|}>=<around*|{|b|}>>
  </proof>

  If <math|a,b> are elements then we can use the axiom of construction
  [axiom: <reference|axiom of construction>] to define the class
  <math|<around*|{|x<around*|\||x=a\<vee\>x=b|\<nobracket\>>|}>> consisting
  of two elements. This leads to the following definition.

  <\definition>
    If <math|a,b> are elements then <math|<around*|{|a,b|}>=<around*|{|x<around*|\||x=a\<vee\>x=b|\<nobracket\>>|}>>
    is called a <with|font-series|bold|unordered pair>.
  </definition>

  The next axiom ensures we can construct new elements from given elements..
  It allows us to create classes that has as members pairs of elements.

  <\axiom>
    <label|axiom of pairing><index|axiom of pairing><dueto|Axiom of
    Pairing>If <math|a,b> are elements then <math|<around*|{|a,b|}>> is a
    element
  </axiom>

  <\lemma>
    <label|element {a,a}={a}>If <math|a> is a element then
    <math|<around*|{|a,a|}>=<around*|{|a|}>>
  </lemma>

  <\proof>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|{|a,a|}>>|<cell|\<Leftrightarrow\>>|<cell|x=a\<vee\>x=a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x=a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|a|}>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|element: {a} is a element>If <math|a> is a element then
    <math|<around*|{|a|}>> is a element
  </theorem>

  <\proof>
    As <math|a> is a element we have by the axiom of pairing [axiom:
    <reference|axiom of pairing>] that <math|<around*|{|a,a|}>> is a element,
    which as <math|<around*|{|a|}>\<equallim\><rsub|<text|lemma:
    <reference|element {a,a}={a}>>><around*|{|a.,a|}>> proves that
    <math|<around*|{|a|}>> is a element.
  </proof>

  The following lemma characterize equality of unordered pairs and will be
  used later to characterize equality of ordered pairs.

  <\lemma>
    <label|element equalitiy of unordered pairs>If
    <math|x,y,x<rprime|'>,y<rprime|'>> are elements then\ 

    <\equation*>
      <around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}><text| implies
      ><around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>
    </equation*>
  </lemma>

  <\proof>
    Lets's consider the following possible cases <math|x,y>:

    <\description>
      <item*|<math|x=y>>Then <math|<around*|{|x,y|}>\<equallim\><rsub|<text|lemma:
      <reference|element {a,a}={a}>>><around*|{|x|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>.
      From <math|x<rprime|'>\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>=<around*|{|x|}>>
      it follows that <math|x=x<rprime|'>> and from
      <math|y<rprime|'>\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>=<around*|{|x|}>>
      it follows that <math|y=x>. As <math|x=x<rprime|'>> it follows from
      [theorem: <reference|class properties (1)>] that <math|y=x<rprime|'>>.
      So we have that <math|<around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>>
      from which it follows that

      <\equation*>
        <around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>
      </equation*>

      <item*|<math|x\<neq\>y>>Then as <math|x\<in\><around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>
      we have by [axiom: <reference|axiom of extent>] that
      <math|x\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>>, so by definition
      we have for <math|x> either\ 

      <\description>
        <item*|<math|x=x<rprime|'>>>Then as
        <math|y\<in\><around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>
        we have by [axiom: <reference|axiom of extent>] that
        <math|y\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>>, so by definition
        we have for <math|y> either:

        <\description>
          <item*|<math|y=x<rprime|'>>>As <math|x=x<rprime|'>\<Rightarrowlim\><rsub|<text|theorem:
          <reference|class properties (1)>>>x=y> we contradict
          <math|x\<neq\>y> so this case does not apply

          <item*|<math|y=y<rprime|'>>>Then
          <math|<around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>> hence
          <math|<around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>>
        </description>

        <item*|<math|x=y<rprime|'>>>Then as
        <math|y\<in\><around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>
        we have by [axiom: <reference|axiom of extent>] that
        <math|y\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>>, so by definition
        we have for <math|y> either:

        <\description>
          <item*|<math|y=x<rprime|'>>>Then
          <math|<around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>> hence
          <math|<around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>>

          <item*|<math|y=y<rprime|'>>>As <math|x=y<rprime|'>\<Rightarrowlim\><rsub|<text|theorem:
          <reference|class properties (1)>>>x=y> we contradict
          <math|x\<neq\>y> so this case does not apply
        </description>
      </description>

      So in all cases that apply we have

      <\equation*>
        <around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|element equality of unordered pairs (1)>If
    <math|x,y,x<rprime|'>,y<rprime|'>> are elements such that
    <math|<around*|(|x=x<rprime|'>\<wedge\>y=y<rprime|'>|)>\<vee\><around*|(|x=y<rprime|'>\<wedge\>y=x<rprime|'>|)>>
    then <math|<around*|{|x,y|}>=<around*|{|x,y<rprime|'>|}>>
  </lemma>

  <\proof>
    Let <math|z\<in\><around*|{|x,y|}>> then either:

    <\description>
      <item*|<math|z=x>>then if <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> we
      have using [theorem: <reference|class properties (1)>] that
      <math|z=x<rprime|'>>, hence by definition
      <math|z\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>> and if
      <math|x=y<rprime|'>\<wedge\>y=x<rprime|'>> we have using \ [theorem:
      <reference|class properties (1)>] that <math|z=y<rprime|'>>, hence by
      definition <math|x\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>>\ 

      <item*|<math|z=y>>then if <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> we
      have using [theorem: <reference|class properties (1)>] that
      <math|z=y<rprime|'>>, hence by definition
      <math|z\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>> and if
      <math|x=y<rprime|'>\<wedge\>y=x<rprime|'>> we have using \ [theorem:
      <reference|class properties (1)>] that <math|z=x<rprime|'>>, hence by
      definition <math|x\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 1.5.001><around*|{|x,y|}>\<subseteq\><around*|{|x<rprime|'>,y<rprime|'>|}>
    </equation>

    Let <math|z\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>> then either:

    <\description>
      <item*|<math|z=x<rprime|'>>>then if
      <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> we have using [theorem:
      <reference|class properties (1)>] that <math|z=x>, hence by definition
      <math|z\<in\><around*|{|x,y|}>> and if
      <math|x=y<rprime|'>\<wedge\>y=x<rprime|'>> we have using \ [theorem:
      <reference|class properties (1)>] that <math|z=y>, hence by definition
      <math|x\<in\><around*|{|x,y|}>>\ 

      <item*|<math|z=y>>then if <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> we
      have using [theorem: <reference|class properties (1)>] that <math|z=y>,
      hence by definition <math|z\<in\><around*|{|x,y|}>> and if
      <math|x=y<rprime|'>\<wedge\>y=x<rprime|'>> we have using \ [theorem:
      <reference|class properties (1)>] that <math|z=x>, hence by definition
      <math|x\<in\><around*|{|x,y|}>>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 1.6.001><around*|{|x<rprime|'>,y<rprime|'>|}>\<subseteq\><around*|{|x,y|}>
    </equation>

    Using [theorem: <reference|class properties (1)>] on [eq: <reference|eq
    1.5.001>,<reference|eq 1.6.001>] proves that\ 

    <\equation*>
      <around*|{|x=y|}>=<around*|{|x<rprime|'>=y<rprime|'>|}>
    </equation*>
  </proof>

  The above lemma actually shows that the order of the elements in unordered
  pairs do not matter, to remedy this we construct a ordered pair.

  <\definition>
    <label|pair of elements>If <math|a,b> are elements then

    <\equation*>
      <around*|(|a,b|)>=<around*|{|<around*|{|a|}>,<around*|{|a,b|}>|}>
    </equation*>

    <\note>
      As <math|<around*|{|a|}>,<around*|{|a,b|}>> are elements we have again
      that <math|<around*|{|<around*|{|a|}>,<around*|{|a,b|}>|}>> is a
      element, hence <math|<around*|(|a,b|)>> is also a element.
    </note>
  </definition>

  Next we show that the order of elements is important for a tuple

  <\theorem>
    <label|pair equality of pairs>Let <math|x,y,x<rprime|'>,y<rprime|'>> are
    elements then\ 

    <\equation*>
      <around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>\<Leftrightarrow\>x=x<rprime|'>\<wedge\>y=y<rprime|'>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>
      then by definition\ 

      <\equation*>
        <around*|{|<around*|{|x|}>,<around*|{|x,y|}>|}>=<around*|{|<around*|{|x<rprime|'>|}>,<around*|{|x<rprime|'>,y<rprime|'>|}>|}>
      </equation*>

      By [lemma: <reference|element equalitiy of unordered pairs>] we have
      either:

      <\description>
        <item*|<math|<around*|{|x|}>=<around*|{|x<rprime|'>|}>\<wedge\><around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>>then,
        as <math|x\<in\><around*|{|x|}>,> we have by definition
        <math|x=x<rprime|'>>, using \ [lemma: <reference|element equalitiy of
        unordered pairs>] again we have either:

        <\description>
          <item*|<math|x=x<rprime|'>\<wedge\>y=y<rprime|'>>>Then
          <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>>

          <item*|<math|x=y<rprime|'>\<wedge\>y=x<rprime|'>>>Then by [theorem:
          <reference|class properties (1)>] and <math|x=x<rprime|'>> we have
          <math|y<rprime|'>=x<rprime|'>> so that by \ [theorem:
          <reference|class properties (1)>] again <math|y=y<rprime|'>>. Hence
          we have <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>>
        </description>

        <item*|<math|<around*|{|x|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>\<wedge\><around*|{|x,y|}>=<around*|{|x<rprime|'>|}>>>Then
        as <math|x<rprime|'>,y<rprime|'>\<in\><around*|{|x<rprime|'>,y<rprime|'>|}>=<around*|{|x|}>>
        we have <math|x<rprime|'>=x\<wedge\>y<rprime|'>=x>, as
        <math|x,y\<in\><around*|{|x,y|}>=<around*|{|x<rprime|'>|}>> we have
        <math|x=x<rprime|'>\<wedge\>y=x<rprime|'>>. Using [theorem:
        <reference|class properties (1)>] on
        <math|y<rprime|'>=x\<wedge\>x=x<rprime|'>\<wedge\>y=x<rprime|'>> we
        have <math|y=y<rprime|'>>. Hence <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>>.
      </description>

      So in all cases we have\ 

      <\equation*>
        x=x<rprime|'>\<wedge\>y=y<rprime|'>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|x=x<rprime|'>> it follows from
      [lemma: <reference|element a=b=\<gtr\>{a}={b}>] that
      <math|<around*|{|x|}>=<around*|{|x<rprime|'>|}>>, from
      <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> we have by [lemma:
      <reference|element equality of unordered pairs (1)>] that
      <math|<around*|{|x,y|}>=<around*|{|x<rprime|'>,y<rprime|'>|}>>. Using
      [lemma: <reference|element equality of unordered pairs (1)>] gives then
      that <math|<around*|{|<around*|{|x|}>,<around*|{|x,y|}>|}>=<around*|{|<around*|{|x<rprime|'>|}>,<around*|{|x<rprime|'>,y<rprime|'>|}>|}>>
      which by definition gives\ 

      <\equation*>
        <around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>
      </equation*>
    </description>
  </proof>

  We are now ready to define the Cartesian product of two classes, using the
  axiom of construction [axiom: <reference|axiom of construction>].

  <\definition>
    <label|cartesian product><index|cartesian
    product><index|<math|A\<times\>B>>If <math|A,B> are classes then the
    <with|font-series|bold|Cartesian product >of <math|A> and <math|B> noted
    by <math|A\<times\>B> is defined as\ 

    <\equation*>
      A\<times\>B=<around*|{|z\|z=<around*|(|a,b|)>\<wedge\>a\<in\>A\<wedge\>b\<in\>B|}>
    </equation*>

    <\notation>
      Instead of writing <math|<around*|{|z\|z=<around*|(|a,b|)>\<wedge\>a\<in\>A\<wedge\>b\<in\>A|}>>
      we use in the future the shorter notation
      <math|<around*|{|<around*|(|a,b|)>\|a\<in\>A\<wedge\>b\<in\>B|}>>
    </notation>
  </definition>

  A special case of the Cartesian product is the Cartesian product of empty
  sets.\ 

  <\example>
    <label|cartesian product of the empty
    set><math|\<varnothing\>=\<varnothing\>\<times\>\<varnothing\>>
  </example>

  <\proof>
    If <math|z\<in\>\<varnothing\>\<times\>\<varnothing\>> then there exists
    a <math|x,y\<in\>\<varnothing\>> such that <math|z=<around*|(|x,y|)>>
    which contradict <math|x,y\<nin\>\<varnothing\>> \ [theorem:
    <reference|empty set property>] hence by <reference|class empty set is
    unique> we have <math|\<varnothing\>\<times\>\<varnothing\>=\<varnothing\>>.
  </proof>

  <\theorem>
    <label|cartesian product with enpty set>Let <math|A> be a class then
    <math|A\<times\>\<varnothing\>=\<varnothing\>> and
    <math|\<varnothing\>\<times\>A=\<varnothing\>>
  </theorem>

  <\proof>
    If <math|z\<in\>A\<times\>\<varnothing\>> then <math|z=<around*|(|x,y|)>>
    where <math|y\<in\>\<varnothing\>>, which contradicts
    <math|y\<nin\>\<varnothing\>> [theorem: <reference|empty set property>],
    so using [theorem: <reference|class empty set is unique>] we have that

    <\equation*>
      A\<times\>\<varnothing\>=\<varnothing\>
    </equation*>

    \ Likewise if <math|x\<in\>\<varnothing\>\<times\>A> then
    <math|z=<around*|(|x,y|)>> where <math|x\<in\>\<varnothing\>>, which
    contradicts <math|x\<nin\>\<varnothing\>> \ [theorem: <reference|empty
    set property>], so using [theorem: <reference|class empty set is unique>]
    we have that

    <\equation*>
      \<varnothing\>\<times\>A=\<varnothing\>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|cartesian product and inclusion>If <math|A,B,C,D> are classes then
    we have:

    <\enumerate>
      <item>If <math|A\<subseteq\>B\<wedge\>C\<subseteq\>D> then
      <math|A\<times\>C\<subseteq\>B\<times\>D>

      <item>Let <math|A\<neq\>\<varnothing\>\<wedge\>C\<neq\>\<varnothing\>>
      then if <math|A\<times\>C\<subseteq\>B\<times\>D> it follows that
      <math|A\<subseteq\>B\<wedge\>C\<subseteq\>D>

      <item>Let <math|A\<neq\>\<varnothing\>\<wedge\>B\<neq\>\<varnothing\>\<wedge\>C\<neq\>\<varnothing\>>
      then <math|A\<times\>C=B\<times\>D\<Leftrightarrow\>A=B\<wedge\>C=D>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|z\<in\>A\<times\>C> then there exists a <math|x\<in\>A>
      and <math|y\<in\>C> such that <math|z=<around*|(|x,y|)>>. As
      <math|A\<subseteq\>B\<wedge\>C\<subseteq\>D> it follows that
      <math|x\<in\>B\<wedge\>y\<in\>D> so that
      <math|z=<around*|(|x,y|)>\<in\>B\<times\>D>/ Hence\ 

      <\equation*>
        A\<times\>C\<subseteq\>B\<times\>D
      </equation*>

      <item>Let <math|x\<in\>A> then, as <math|C\<neq\>\<varnothing\>>, we
      have by \ [corollary: <reference|class not empty sets>] the existence
      of a <math|y\<in\>C>, then <math|<around*|(|x,y|)>\<in\>A\<times\>C>
      which as <math|A\<times\>C\<subseteq\>B\<times\>D> proves that
      <math|<around*|(|x,y|)>\<in\>B\<times\>D>. By definition we have then
      that <math|x\<in\>B> proving\ 

      <\equation*>
        A\<subseteq\>B
      </equation*>

      Likewise, let <math|y\<in\>C> then, as <math|A\<neq\>\<varnothing\>> we
      have by \ [corollary: <reference|class not empty sets>] the existence
      of a <math|x\<in\>A>, hence <math|<around*|(|x,y|)>\<in\>A\<times\>C>,
      which as <math|A\<times\>C\<subseteq\>B\<times\>D>, proves
      <math|<around*|(|x,y|)>\<in\>B*\<times\>D> and by definition
      <math|y\<in\>D>. Hence

      <\equation*>
        C\<subseteq\>D
      </equation*>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>First as <math|A\<times\>C=B\<times\>D>
        we have by [theorem: <reference|class properties (1)>] that
        <math|A\<times\>C\<subseteq\>B\<times\>D>, using (2) proves then that\ 

        <\equation>
          <label|eq 1.7.001>A\<subseteq\>B\<wedge\>C\<subseteq\>B
        </equation>

        Next as <math|A\<times\>C=B\<times\>D> we have by [theorem:
        <reference|class properties (1)>] that
        <math|B\<times\>D\<subseteq\>A\<times\>C>, using (2) proves then that\ 

        <\equation>
          <label|eq 1.8.001>B\<subseteq\>A\<wedge\>C\<subseteq\>D
        </equation>

        Combining then [eq <reference|eq 1.7.001>,<reference|eq 1.8.001>]
        with [theorem: <reference|class properties (1)>] proves\ 

        <\equation*>
          A=B\<wedge\>C=D
        </equation*>

        <item*|<math|\<Leftarrow\>>>As <math|A=B\<wedge\>C=D> we have by
        [theorem: <reference|class properties (1)>] that
        <math|A\<subseteq\>B>, <math|C\<subseteq\>D>,
        <math|B\<subseteq\>A>,<math|D\<subseteq\>C> which using (1) gives
        that <math|A\<times\>C\<subseteq\>B\<times\>D\<wedge\>B\<times\>D\<subseteq\>A\<times\>C>.
        Using [theorem: <reference|class properties (1)> it follows then that\ 

        <\equation*>
          A\<times\>C=B\<times\>D
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|cartesian product properties (1)>Let A,B,C and <math|D> be classes
    then we have

    <\enumerate>
      <item><math|A\<times\><around*|(|B<big|cap>C|)>=<around*|(|A\<times\>B|)><big|cap><around*|(|A\<times\>C|)>>

      <item><math|A\<times\><around*|(|B<big|cup>C|)>=<around*|(|A\<times\>B|)><big|cup><around*|(|A\<times\>C|)>>

      <item><math|<around*|(|A\<times\>B|)><big|cap><around*|(|C\<times\>D|)>=<around*|(|A<big|cap>C|)>\<times\><around*|(|B<big|cap>D|)>>

      <item><math|<around*|(|B<big|cap>C|)>*\<times\>A=<around*|(|B\<times\>A|)><big|cap><around*|(|C\<times\>A|)>>

      <item><math|<around*|(|B<big|cup>C|)>\<times\>A=<around*|(|B\<times\>A|)><big|cup><around*|(|C\<times\>A|)>>

      <item><math|<around*|(|A\<times\>B|)>\\<around*|(|C\<times\>D|)>=<around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|B\\D|)>|)>>

      <item><math|<around*|(|A\\B|)>\<times\>C=<around*|(|A\<times\>C|)>\\<around*|(|B\<times\>C|)>>

      <item><math|A\<times\><around*|(|B\\C|)>=<around*|(|A\<times\>B|)>\\<around*|(|A\<times\>C|)>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\>A\<times\><around*|(|B<big|cap>C|)>>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\><around*|(|B<big|cap>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\><around*|(|y\<in\>B\<wedge\>y\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<wedge\><around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>A\<times\>B\<wedge\>z\<in\>A\<times\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|A\<times\>B|)><big|cap><around*|(|A\<times\>C|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\>A\<times\><around*|(|B<big|cup>C|)>>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\><around*|(|B<big|cup>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\><around*|(|y\<in\>B\<vee\>y\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<vee\><around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>C|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>A\<times\>B\<vee\>z\<in\>A\<times\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|A\<times\>B|)><big|cup><around*|(|A\<times\>C|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|A\<times\>B|)><big|cap><around*|(|C\<times\>D|)>>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>A\<times\>B\<wedge\>z\<in\>C\<times\>D>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<wedge\><around*|(|z=<around*|(|x<rprime|'>,y<rprime|'>|)>\<wedge\>x<rprime|'>\<in\>C\<wedge\>y<rprime|'>\<in\>D|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|x,y|)>=z=<around*|(|x<rprime|'>,y<rprime|'>|)>\<Rightarrow\>x=x<rprime|'>,y=y<rprime|'>>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B\<wedge\>x\<in\>C\<wedge\>y\<in\>D>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\><around*|(|x\<in\>A\<wedge\>x\<in\>C|)>\<wedge\><around*|(|y\<in\>B\<wedge\>y\<in\>D|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\><around*|(|x\<in\>A<big|cap>C|)>\<wedge\><around*|(|y\<in\>B<big|cap>D|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|A<big|cap>C|)>\<times\><around*|(|B<big|cap>D|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|B<big|cap>C|)>\<times\>A>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>B<big|cap>C\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>B\<wedge\>x\<in\>C\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>B\<wedge\>y\<in\>A|)>\<wedge\><around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>C\<wedge\>y\<in\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>B\<times\>A\<wedge\>z\<in\>C\<times\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|B*\<times\>A|)><big|cap><around*|(|C\<times\>A|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|B<big|cup>C|)>\<times\>A>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\>x\<in\>B<big|cup>C\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|x,y|)>\<wedge\><around*|(|x\<in\>B\<vee\>x\<in\>C|)>\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>B\<wedge\>y\<in\>A|)>\<vee\><around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>C\<wedge\>y\<in\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z\<in\>B\<times\>A|)>\<vee\><around*|(|z\<in\>C\<times\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|B\<times\>A|)><big|cup><around*|(|C\<times\>A|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|A\<times\>B|)>\\<around*|(|C\<times\>D|)>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<wedge\><around*|(|x,y|)>\<nin\>C\<times\>D>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<wedge\>\<neg\><around*|(|x\<in\>C\<wedge\>y\<in\>D|)>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B|)>\<wedge\><around*|(|x\<nin\>C\<vee\>y\<nin\>D|)>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|<around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B\<wedge\>x\<nin\>C|)>\<vee\><around*|(|z=<around*|(|x,y|)>\<wedge\>x\<in\>A\<wedge\>y\<in\>B\<wedge\>y\<nin\>D|)>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|z=<around*|(|x,y|)>\<wedge\><around*|[|<around*|(|x,y|)>\<in\><around*|(|A\\C|)>\<times\>B\<vee\><around*|(|x,y|)>\<in\>A\<times\><around*|(|B\\D|)>|]>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|z\<in\><around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|B\\D|)>|)>>|<cell|\<Leftrightarrow\>>|<cell|>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|A\<times\>C|)>\\<around*|(|B\<times\>C|)>>|<cell|\<equallim\><rsub|<around*|(|6|)>>>|<cell|<around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|C\\C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|<around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup><around*|(|A\<times\>\<varnothing\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product with enpty
        set>>>>|<cell|<around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|<around*|(|A\\C|)>\<times\>B>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|A\<times\>B|)>\\<around*|(|A\<times\>C|)>>|<cell|\<equallim\><rsub|<around*|(|6|)>>>|<cell|<around*|(|<around*|(|A\\A|)>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|B\\C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|<around*|(|\<varnothing\>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|B\\C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product with enpty
        set>>>>|<cell|\<varnothing\><big|cup><around*|(|A\<times\><around*|(|B\\C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|A\<times\><around*|(|B\\C|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <section|Sets>

  Remember that that another name for <with|font-series|bold|element> is
  <with|font-series|bold|set> [definition: <reference|element is set>]. Up to
  now we have used the name <with|font-series|bold|element>, because we want
  to think of a element as a member of a class. However a element is also a
  class and can contain other elements. If we want to stress the collection
  aspect then we use the word <with|font-series|bold|set> instead of
  <with|font-series|bold|element>. The convention is to use uppercase to
  represent a set and lower cases for a element. Of course set and element
  are the same thing, we just want to stress different aspects of the same
  thing. Note that we have two kinds of classes classes that are a member of
  another class and classes that are not a member of a class. This leads to
  the following definition.

  <\definition>
    <label|set element proper class>A class <math|A> is a
    <with|font-series|bold|set> [or <with|font-series|bold|element>] if there
    exists a class <math|B> such that <math|A\<in\>B>. A class that is never
    a member of another class is called a <with|font-series|bold|proper
    class>.
  </definition>

  Up to know we had axioms that given a element/set create a new element/set,
  but we have not ensured the existence of a element/set. To this we must
  first define the concept of a successor set.

  <\definition>
    <label|successor set><index|successor set>A set <math|S> is a
    <with|font-series|bold|successor set> iff

    <\enumerate>
      <item><math|\<varnothing\>\<in\>S>

      <item>If <math|X\<in\>S> then <math|X<big|cup><around*|{|X|}>\<in\>S>
    </enumerate>
  </definition>

  Of course nothing proves that successor set's exists, to ensure the
  existence of a successor set we have the axiom of infinity.

  <\axiom>
    <label|axiom of infinity><index|axiom of infinity><dueto|Axiom of
    Infinity>There exists a <with|font-series|bold|successor set>
  </axiom>

  This axiom ensures that we have at least one set. We can then use the other
  axioms about elements/sets to create new elements. Later we will use the
  Axiom of Infinity to create the Natural Numbers, form which we build all
  the other numbers (integers, rationals, reals, complex numbers). The Axiom
  of Infinity ensures also that the empty class is actually a set.

  <\theorem>
    <math|\<varnothing\>> is a set
  </theorem>

  <\proof>
    The Axiom of Infinity [axiom: <reference|axiom of infinity>] ensures the
    existence of a successor set <math|S>. By definition we have then that
    <math|\<varnothing\>\<in\>S> which proves that <math|\<varnothing\>> is a
    set.
  </proof>

  So now we have two sets to start with, the successor set and the empty set.
  We can use the Axiom of Pairing [axiom: <reference|axiom of pairing>] to
  create new sets like singletons, unordered pairs and pairs. We introduce
  now extra axioms to create new sets given existing sets.

  <\axiom>
    <label|axiom of subsets><index|axiom of subsets><dueto|Axiom of
    Subsets>Every subclass of a set is a set
  </axiom>

  As a application we proof that the intersection of two sets is a set

  <\theorem>
    <label|set intersection of two sets is aset>Let <math|A,B> be sets then
    <math|A<big|cap>B> is a set
  </theorem>

  <\proof>
    By [theorem: <reference|class intersection, union, inclusion>] we have
    that <math|A<big|cap>B\<subseteq\>A>, so by the axiom of infinity [axiom:
    <reference|axiom of infinity>] it follows that <math|A<big|cap>B> is a
    set.
  </proof>

  We define now a more general concept of union and intersection

  <\definition>
    <label|class union>Let <math|\<cal-A\>> be a class then using the Axiom
    of Construction [axiom: <reference|axiom of construction>] we define
    <math|<big|cup>\<cal-A\>=<around*|{|x\|\<exists\>y\<in\>\<cal-A\><text|
    such that >x\<in\>y|}>>
  </definition>

  <\definition>
    <label|class intersection>Let <math|\<cal-A\>> be a class then using the
    Axiom of Construction [axiom: <reference|axiom of construction>] we
    define <math|<big|cap>\<cal-A\>=<around*|{|x\|\<forall\>y\<in\>\<cal-A\><text|
    we have >x\<in\>y|}>>
  </definition>

  <\example>
    <label|class trivial union intersection>Let <math|A> be a class then\ 

    <\enumerate>
      <item><math|<big|cup><around*|{|A|}>=A>

      <item><math|<big|cap><around*|{|A|}>=A>

      <item><math|<big|cup>\<varnothing\>=\<varnothing\>>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cup><around*|{|A|}>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\><around*|{|A|}><text|
        with >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|y\<in\><around*|{|A|}>\<Leftrightarrow\>y=A>>|<cell|x\<in\>A>>>>
      </eqnarray*>

      proving that

      <\equation*>
        <big|cup><around*|{|A|}>=A
      </equation*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><around*|{|A|}>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>y\<in\><around*|{|A|}><text|
        we have >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|y\<in\><around*|{|A|}>\<Leftrightarrow\>y=A>>|<cell|x\<in\>A>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <big|cap><around*|{|A|}>=A
      </equation*>

      <item>Assume that <math|x\<in\>\<varnothing\>> then
      <math|\<exists\>y\<in\>\<varnothing\>> such that <math|x\<in\>y> which
      lead by the definition of <math|\<varnothing\>> [definition:
      <reference|class empty set definition>] to the contradiction that
      <math|y\<neq\>y>.
    </enumerate>
  </proof>

  <\example>
    <label|class union{A,B}>Let <math|A> and <math|B> classes then\ 

    <\enumerate>
      <item><math|<big|cup><around*|{|A,B|}>=A<big|cup>B>

      <item><math|<big|cap><around*|{|A,B|}>=A<big|cap>B>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cup><around*|{|A,B|}>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\><around*|{|A,B|}><text|
        with >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|y\<in\><around*|{|A,B|}>\<Leftrightarrow\>y=A\<vee\>y=B>>|<cell|x\<in\>A\<vee\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cup>B>>>>
      </eqnarray*>

      proving that

      <\equation*>
        <big|cup><around*|{|A,B|}>=A<big|cup>B
      </equation*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><around*|{|A,B|}>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>y\<in\><around*|{|A,B|}><text|
        with >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|y\<in\><around*|{|A,B|}>\<Leftrightarrow\>y=A\<vee\>y=B>>|<cell|x\<in\>A\<wedge\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<big|cap>B>>>>
      </eqnarray*>

      proving that

      <\equation*>
        <big|cap><around*|{|A,B|}>=A<big|cap>B
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|class general intersection>If <math|\<cal-A\>> is a class\ 

    <\enumerate>
      <item>If <math|A\<in\>\<cal-A\>> then
      <math|<big|cap>\<cal-A\>\<subseteq\>A>

      <item>If <math|\<cal-A\>\<neq\>\<varnothing\>> then
      \ <math|<big|cap>\<cal-A\>> is a set
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|A\<in\>\<cal-A\>> then if
      <math|x\<in\><big|cap>\<cal-A\>> we have by definition of
      <math|<big|cap>\<cal-A\>> that <math|x\<in\>A>. Hence
      <math|<big|cap>\<cal-A\>\<subseteq\>A>

      <item>As <math|\<cal-A\>\<neq\>\<varnothing\>> there exists a
      <math|A\<in\>\<cal-A\>>, which by definition means that <math|A> is a
      set. Using (1) we have <math|<big|cap>\<cal-A\>\<subseteq\>A>, applying
      then the Axiom of Subsets [axiom: <reference|axiom of subsets>] it
      follows that <math|<big|cap>\<cal-A\>> is a set.
    </enumerate>
  </proof>

  The above is not applicable for unions, however we state the Axiom of
  Unions that will ensure that <math|<big|cup>\<cal-A\>> is a set if
  <math|\<cal-A\>> is a set\ 

  <\axiom>
    <label|axiom of union><index|axiom of union><dueto|Axiom of Unions>If
    <math|\<cal-A\>> is a set then <math|<big|cup>\<cal-A\>> is a set
  </axiom>

  A consequence of the above axiom is that the union of two sets is a set

  <\theorem>
    <label|set union of two sets is a set>Let <math|A,B> be tow sets then
    <math|A<big|cup>B> is a set
  </theorem>

  <\proof>
    Using the Axiom of Pairing [axiom: <reference|axiom of pairing>] we have
    that <math|<around*|{|A,B|}>> is a set. Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>A<big|cup>B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<vee\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>C\<in\><around*|{|A,B|}><text|
      with >x\<in\>C>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<big|cup><around*|{|A,B|}>>>>>
    </eqnarray*>

    proving by the Axiom of Union [axiom: <reference|axiom of union>] we have
    that <math|A<big|cup>B> is a set.
  </proof>

  <\definition>
    <label|power set><index|power set><index|<math|\<cal-P\><around*|(|A|)>>>Let
    <math|A> be a set then we use the Axiom of Construction to define
    <math|\<cal-P\><around*|(|A|)>> by\ 

    <\equation*>
      \<cal-P\><around*|(|A|)>=<around*|{|B\|B\<subseteq\>A|}>
    </equation*>
  </definition>

  We introduce now the Axiom of Power Sets to ensure that
  <math|\<cal-P\><around*|(|A|)>> is a set, called the
  <with|font-series|bold|power set> of <math|A>.

  <\axiom>
    <label|axiom of power><index|axiom of power><dueto|Axiom of Power Sets>If
    <math|A> is a set then <math|\<cal-P\><around*|(|A|)>> is a set
  </axiom>

  <\theorem>
    <label|set restriction of a set of sets>If <math|A> is a set and
    <math|P<around*|(|X|)>> a predicate then
    <math|<around*|{|X\|X\<subseteq\>A\<wedge\>P<around*|(|X|)>|}>> is a set.
  </theorem>

  <\proof>
    If <math|B\<in\><around*|{|X\|X\<subseteq\>A\<wedge\>P<around*|(|X|)>|}>>
    then <math|B\<subseteq\>A> so that <math|B\<in\>\<cal-P\><around*|(|A|)>>,
    proving that

    <\equation*>
      <around*|{|X\|X\<subseteq\>A\<wedge\>P<around*|(|X|)>|}>\<subseteq\>\<cal-P\><around*|(|A|)>
    </equation*>

    Using the Axiom of Power Sets [axiom: <reference|axiom of power>]
    <math|\<cal-P\><around*|(|A|)>> is a set, so we can use the Axiom of
    Subsets to prove that <math|<around*|{|X\|X\<subseteq\>A\<wedge\>P<around*|(|X|)>|}>>
    is a set.
  </proof>

  <\lemma>
    <label|set A*B is subset of P(P(AUB))>If A,B are classes then
    <math|A\<times\>B\<subseteq\>\<cal-P\><around*|(|\<cal-P\><around*|(|A<big|cup>B|)>|)>>
  </lemma>

  <\proof>
    Let <math|z\<in\>A\<times\>B> then there exists a <math|x\<in\>A> and a
    <math|y\<in\>B> so that <math|z=<around*|(|x,y|)>>. Now <math|if
    e\<in\><around*|{|x|}>> then <math|e=x> proving that <math|e\<in\>A>,
    hence we have, by definition of the union, that
    <math|<around*|{|x|}>\<subseteq\>A<big|cup>B>. By definition of the
    <math|\<cal-P\><around*|(|A<big|cup>B|)>> set it follows then that\ 

    <\equation*>
      <around*|{|x|}>\<in\>\<cal-P\><around*|(|A<big|cup>B|)>
    </equation*>

    Likewise if <math|e\<in\><around*|{|x,y|}>> then either
    <math|e=x\<Rightarrow\>e\<in\>A> or <math|e=y\<Rightarrow\>e\<in\>B>,
    hence ,by definition of the union, \ we have
    <math|<around*|{|x,y|}>\<subseteq\>A<big|cup>B>. Using the definition
    <math|\<cal-P\><around*|(|A<big|cup>B|)>> we have then

    <\equation*>
      <around*|{|x,y|}>\<in\>\<cal-P\><around*|(|A<big|cup>B|)>
    </equation*>

    Now if <math|e\<in\><around*|{|<around*|{|x|}>,<around*|{|x,y|}>|}>> then
    either <math|e=<around*|{|x|}>\<in\>\<cal-P\><around*|(|A<big|cup>B|)>>
    or <math|e=<around*|{|z,y|}>\<in\>\<cal-P\><around*|(|A<big|cup>B|)>>
    which proves that <math|<around*|{|<around*|{|x|}>,<around*|{|x,y|}>|}>\<subseteq\>\<cal-P\><around*|(|A<big|cup>B|)>>
    or\ 

    <\equation*>
      z\<in\><around*|{|<around*|{|x|}>,<around*|{|x,y|}>|}>\<in\>\<cal-P\><around*|(|\<cal-P\><around*|(|A<big|cup>B|)>|)>
    </equation*>

    giving finally\ 

    <\equation*>
      A\<times\>B\<subseteq\>\<cal-P\><around*|(|\<cal-P\><around*|(|A<big|cup>B|)>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|set A*B>If <math|A> and <math|B> are sets then <math|A\<times\>B>
    is a set
  </theorem>

  <\proof>
    As <math|A,B> are sets we have by [theorem: <reference|set union of two
    sets is a set>] that <math|A<big|cup>B> is a set, using the Axiom of
    Power sets [axiom: <reference|axiom of power>] it follows that
    <math|\<cal-P\><around*|(|A<big|cup>B|)>> is a set, using the Axiom of
    Power sets [axiom: <reference|axiom of power>] again proves that
    <math|\<cal-P\><around*|(|\<cal-P\><around*|(|A<big|cup>B|)>|)>> is a
    set. Finally by [lemma: <reference|set A*B is subset of P(P(AUB))>] we
    have that <math|A\<times\>B\<subseteq\>\<cal-P\><around*|(|\<cal-P\><around*|(|A<big|cup>B|)>|)>>,
    which using the Axiom of Subsets [axiom: <reference|axiom of subsets>]
    proves that\ 

    <\equation*>
      A\<times\>B<text| is a set>
    </equation*>
  </proof>

  <chapter|Partial Functions and Functions>

  <section|Pairs and Triples>

  Although we have already defined the concept of a pair, we can not simple
  extend this to pairs (and later triples) of classes. If <math|A,B> are pure
  classes (classes that are not elements) then we can not just form
  <math|<around*|(|A,B|)>=<around*|{|A,<around*|{|B|}>|}>> because this would
  mean that <math|A,B> are elements and not pure classes. So we need another
  way of forming pairs, triples and so on.\ 

  <\definition>
    If <math|A,B> are classes then <math|<around*|\<langle\>|A,B|\<rangle\>>>
    is defined by <math|<around*|\<langle\>|A,B|\<rangle\>>=<around*|(|A\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>>
  </definition>

  We show now that from <math|<around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|A<rprime|'>,<rprime|'>B|\<rangle\>>>
  it follows that <math|A=A<rprime|'>\<wedge\>B=B<rprime|'>>, first we need
  some lemma's

  <\lemma>
    <label|set emptyset is not set of empty set>We have
    <math|\<varnothing\>\<neq\><around*|{|\<varnothing\>|}>>
  </lemma>

  <\proof>
    Assume that <math|<around*|{|\<varnothing\>|}>=\<varnothing\>> then, as
    <math|\<varnothing\>\<in\><around*|{|\<varnothing\>|}>> it follows that
    <math|\<varnothing\>> which is a contradiction, hence\ 

    <\equation*>
      \<varnothing\>\<neq\><around*|{|\<varnothing\>|}>
    </equation*>

    \;
  </proof>

  <\lemma>
    <label|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D>If
    <math|A,B,C,D> are classes then <math|<around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|C,D|\<rangle\>>\<Leftrightarrow\>A=C\<wedge\>B=D>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|<around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|C,D|\<rangle\>>>
      then by definition

      <\equation>
        <label|eq 2.1.001.1><around*|(|A*\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>=<around*|(|C\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>
      </equation>

      Let now <math|x\<in\>A> then <math|<around*|(|x,\<varnothing\>|)>\<in\><around*|(|A\<times\><around*|{|\<varnothing\>|}>|)>>
      so that by the axiom of extent [axiom: <reference|axiom of extent>] and
      [eq: <reference|eq 2.1.001.1>]

      <\equation*>
        <around*|(|x,\<varnothing\>|)>\<in\><around*|(|C\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>
      </equation*>

      which by the definition of the union gives\ 

      <\equation>
        <label|eq 2.1.001><around*|(|x,\<varnothing\>|)>\<in\>C\<times\><around*|{|\<varnothing\>|}>\<vee\><around*|(|x,\<varnothing\>|)>\<in\>D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>
      </equation>

      Now if <math|<around*|(|x,\<varnothing\>|)>\<in\>D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      then <math|\<varnothing\>\<in\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      or <math|\<varnothing\>=<around*|{|\<varnothing\>|}>> which is
      impossible by [lemma: <reference|set emptyset is not set of empty set>]
      so that by [eq: <reference|eq 2.1.001>] we have
      <math|<around*|(|x,\<varnothing\>|)>\<in\>C\<times\><around*|{|\<varnothing\>|}>>,
      hence <math|x\<in\>C>. This proves that\ 

      <\equation>
        <label|eq 2.3.001.2>A\<subseteq\>C
      </equation>

      Likewise, let <math|x\<in\>C> then <math|<around*|(|x,\<varnothing\>|)>\<in\><around*|(|C\<times\><around*|{|\<varnothing\>|}>|)>>
      so that by the axiom of extent [axiom: <reference|axiom of extent>] and
      [eq: <reference|eq 2.1.001.1>\ 

      <\equation*>
        <around*|(|x,\<varnothing\>|)>\<in\><around*|(|A\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>
      </equation*>

      which by the definition of the union gives\ 

      <\equation>
        <label|eq 2.2.001><around*|(|x,\<varnothing\>|)>\<in\>A\<times\><around*|{|\<varnothing\>|}>\<vee\><around*|(|x,\<varnothing\>|)>\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>
      </equation>

      Now if <math|<around*|(|x,\<varnothing\>|)>\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      then <math|\<varnothing\>\<in\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      or <math|\<varnothing\>=<around*|{|\<varnothing\>|}>> which is
      impossible by [lemma: <reference|set emptyset is not set of empty set>]
      so that by [eq: <reference|eq 2.2.001>] we have
      <math|<around*|(|x,\<varnothing\>|)>\<in\>C\<times\><around*|{|\<varnothing\>|}>>,
      hence <math|x\<in\>A>. This proves that\ 

      <\equation>
        <label|eq 2.5.001.2>C\<subseteq\>A
      </equation>

      Combining [eq: <reference|eq 2.3.001.2>,<reference|eq 2.5.001.2>] with
      [theorem: <reference|class properties (1)>] proves\ 

      <\equation*>
        A=C
      </equation*>

      Further if <math|x\<in\>B> then <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      so that by the axiom of extent [axiom: <reference|axiom of extent>] and
      [eq: <reference|eq 2.1.001.1>]\ 

      <\equation*>
        <around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\><around*|(|C\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>
      </equation*>

      or using the definition of the union that\ 

      <\equation>
        <label|eq 2.6.001><around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>C\<times\><around*|{|\<varnothing\>|}>\<vee\><around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>
      </equation>

      If <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>C\<times\><around*|{|\<varnothing\>|}>>
      then <math|<around*|{|\<varnothing\>|}>\<in\><around*|{|\<varnothing\>|}>>
      or <math|<around*|{|\<varnothing\>|}>=\<varnothing\>> which is
      impossible by [lemma: <reference|set emptyset is not set of empty
      set>], so by [eq: <reference|eq 2.6.001>] we have that
      <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>,
      hence <math|x\<in\>D>. This proves that\ 

      <\equation>
        <label|eq 2.7.001>B\<subseteq\>D
      </equation>

      Likewise, if <math|x\<in\>D> then <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>
      so that by the axiom of extent [axiom: <reference|axiom of extent>] and
      [eq: <reference|eq 2.1.001.1>]\ 

      <\equation*>
        <around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\><around*|(|A\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>
      </equation*>

      or using the definition of the union that\ 

      <\equation>
        <label|eq 2.8.001><around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>A\<times\><around*|{|\<varnothing\>|}>\<vee\><around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>
      </equation>

      If <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>A\<times\><around*|{|\<varnothing\>|}>>
      then <math|<around*|{|\<varnothing\>|}>\<in\><around*|{|\<varnothing\>|}>>
      or <math|<around*|{|\<varnothing\>|}>=\<varnothing\>> which is
      impossible by [lemma: <reference|set emptyset is not set of empty
      set>], so by [eq: <reference|eq 2.8.001>] we have that
      <math|<around*|(|x,<around*|{|\<varnothing\>|}>|)>\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>,
      hence <math|x\<in\>B>. This proves that\ 

      <\equation>
        <label|eq 2.9.001>D\<subseteq\>B
      </equation>

      Combining [eq: <reference|eq 2.7.001>,<reference|eq 2.9.001>] with
      [theorem: <reference|class properties (1)>] proves

      <\equation*>
        B=D
      </equation*>

      <item*|<math|\<Leftarrow\>>>Assume that <math|A=C\<wedge\>B=D> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|\<langle\>|A,B|\<rangle\>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|A\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<times\><around*|{|\<varnothing\>|}>\<vee\>x\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x=<around*|(|a,\<varnothing\>|)>\<wedge\>a\<in\>A|)>\<vee\><around*|(|x=<around*|(|b,<around*|{|\<varnothing\>|}>|)>\<wedge\>b\<in\>B|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[axiom:
        <reference|axiom of extent>]>>>|<cell|<around*|(|x=<around*|(|a,\<varnothing\>|)>\<wedge\>a\<in\>C|)>\<vee\><around*|(|x=<around*|(|b,<around*|{|\<varnothing\>|}>|)>\<wedge\>b\<in\>D|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|C\<times\><around*|{|\<varnothing\>|}>|)><big|cup><around*|(|D\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|e\<in\><around*|\<langle\>|C,D|\<rangle\>>>>>>
      </eqnarray*>

      so that by the Axiom of Extent [axiom: <reference|axiom of extent>]\ 

      <\equation*>
        <around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|C,D|\<rangle\>>
      </equation*>
    </description>
  </proof>

  We can now easily extend <math|<around*|\<langle\>|A,B|\<rangle\>>> to a
  triple <math|<around*|\<langle\>|A,B,C|\<rangle\>>>.

  <\definition>
    <index|<math|<around*|\<langle\>|A,B,C|\<rangle\>>>>Let <math|A,B,C> be
    classes then <math|<around*|\<langle\>|A,B,C|\<rangle\>>> is defined by\ 

    <\equation*>
      <around*|\<langle\>|A,B,C|\<rangle\>>=<around*|\<langle\>|<around*|\<langle\>|A,B|\<rangle\>>,C|\<rangle\>>
    </equation*>
  </definition>

  <\lemma>
    <label|\<less\>A,B,C\<gtr\>=\<less\>D,E,F\<gtr\>=\<gtr\>A=E,B=D,C=F>Let
    <math|A,B,C,D,E,F> be classes then\ 

    <\equation*>
      <around*|\<langle\>|A,B,C|\<rangle\>>=<around*|\<langle\>|D,E,F|\<rangle\>>\<Leftrightarrow\>A=D\<wedge\>B=E\<wedge\>C=F
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|<around*|\<langle\>|A,B,C|\<rangle\>>=<around*|\<langle\>|D,E,F|\<rangle\>>>
      then by definition <math|<around*|\<langle\>|<around*|\<langle\>|A,B|\<rangle\>>,C|\<rangle\>>=<around*|\<langle\>|<around*|\<langle\>|D,E|\<rangle\>>,F|\<rangle\>>>,
      by [lemma: <reference|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D>]
      then <math|C=F\<wedge\><around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|D,E|\<rangle\>>>,
      using [lemma: <reference|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D>]
      again proves then <math|A=D\<wedge\>B=E>.

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|A=D\<wedge\>B=E\<wedge\>C=F> then by [lemma:
      <reference|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D>]
      <math|<around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|D,E|\<rangle\>>>,
      using [lemma: <reference|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D>]
      again we have <math|<around*|\<langle\>|<around*|\<langle\>|A,B|\<rangle\>>,C|\<rangle\>>=<around*|\<langle\>|<around*|\<langle\>|D,E|\<rangle\>>,F|\<rangle\>>>
      which by definition proves that\ 

      <\equation*>
        <around*|\<langle\>|A,B,C|\<rangle\>>=<around*|\<langle\>|D,E,F|\<rangle\>>
      </equation*>
    </description>
  </proof>

  <section|Partial functions and Functions>

  The concept of a function as a mapping of one value to a unique value is
  used throughout mathematics, especially in analysis, which is essential a
  theory of functions. Note that a function maps a value <math|x> to a
  <with|font-series|bold|unique> value <math|y> which in the context of a set
  theory defines a pair <math|<around*|(|x,y|)>>. This leads to the following
  definition of a graph.

  <subsection|Partial function>

  <\definition>
    Then a triple <math|<around*|\<langle\>|A,B,f|\<rangle\>>> is a
    <with|font-series|bold|partial function between <math|A> and <math|B>> if\ 

    <\enumerate>
      <item><math|f\<subseteq\>A\<times\>B>

      <item>If <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>f>
      then <math|y=y<rprime|'>>
    </enumerate>

    we class <math|f> the <with|font-series|bold|graph> of the function.
  </definition>

  <\remark>
    Instead of writing <math|<around*|\<langle\>|A,B,f|\<rangle\>>> for a
    partial function between <math|A> and <math|B> we use the notation
    <math|f:A\<rightarrow\>B> or <math|A<long-arrow|\<rubber-rightarrow\>|f>>B.
    Further the condition (2) ensurese that only one value can be associated
    with <math|x>. So it is useful to use a special notation for this unique
    value, especially if we have a expression to calculate this unique value.
  </remark>

  <\definition>
    Let <math|f:A\<rightarrow\>B> be a partial function then
    <math|<around*|(|x,y|)>\<in\>f> is equivalen with
    <math|y=f<around*|(|x|)>>
  </definition>

  From now on we will use the Axiom of Construction [axiom: <reference|axiom
  of construction>] to define different classes related to partial functions
  without explicitly mentioning this. It is assumed that the reader
  understand when to use this axiom.

  <\definition>
    Let <math|f:A\<rightarrow\>B> be a partial function then its domain noted
    as <math|dom<around*|(|f|)>> and range noted as
    <math|range<around*|(|f|)>> is defined by\ 

    <\equation*>
      dom<around*|(|f|)>=<around*|{|x\|\<exists\>y<text| such that
      ><around*|(|x,y|)>\<in\>f|}>
    </equation*>

    <\equation*>
      range<around*|(|f|)>=<around*|{|y\|\<exists\>x<text| such that
      ><around*|(|x,y|)>\<in\>f|}>
    </equation*>
  </definition>

  <\theorem>
    <label|partial function dom(f) range(f) as subclasses>If
    <math|f:A\<rightarrow\>B> is a partial function then
    <math|dom<around*|(|f|)>\<subseteq\>A> and
    <math|range<around*|(|f|)>\<subseteq\>B>
  </theorem>

  <\proof>
    If <math|x\<in\>dom<around*|(|f|)>> then <math|\<exists\>y> such that
    <math|<around*|(|x,y|)>\<in\>f\<Rightarrowlim\><rsub|f\<subseteq\>A\<times\>B><around*|(|x,y|)>\<in\>A\<times\>B>
    proving that <math|x\<in\>A>, hence\ 

    <\equation*>
      dom<around*|(|f|)>\<subseteq\>A
    </equation*>

    Further if <math|y\<in\>range<around*|(|f|)>> then <math|\<exists\>x>
    such that <math|<around*|(|x,y|)>\<in\>f\<Rightarrowlim\><rsub|f\<subseteq\>A\<times\>B><around*|(|x,y|)>\<in\>A\<times\>B>
    proving that <math|y\<in\>B>, hence

    <\equation*>
      range<around*|(|f|)>\<subseteq\>B
    </equation*>
  </proof>

  <\corollary>
    <label|partial function set domain range>If <math|A,B> are sets and
    <math|f:A\<rightarrow\>B> a partial function then
    <math|dom<around*|(|f|)>> and <math|range<around*|(|f|)>> are sets
  </corollary>

  <\proof>
    Using [theorem: <reference|partial function dom(f) range(f) as
    subclasses>] we have that <math|dom<around*|(|f|)>\<subseteq\>A> and
    <math|range<around*|(|f|)>\<subseteq\>B>, so applying the Axiom of
    Subsets [axiom: <reference|axiom of subsets>] proves that
    <math|dom<around*|(|f|)>> and <math|range<around*|(|f|)>> are sets.
  </proof>

  <\definition>
    <label|partial function image><index|image>Let <math|f:A\<rightarrow\>B>
    be a partial function and <math|C> a class such that
    <math|C\<subseteq\>A> then<with|font-series|bold| the image of <math|C>
    by <math|f> >noted as <math|f<around*|(|C|)>> is defined by\ 

    <\equation*>
      f<around*|(|C|)>=<around*|{|y\|\<exists\>x\<in\>C<text| such that
      ><around*|(|x,y|)>\<in\>f|}>
    </equation*>
  </definition>

  <\remark>
    Note that we use a conflicting notation here. On one hand
    <math|y=f<around*|(|x|)>> can be interpreted as
    <math|<around*|(|x,y|)>\<in\>f>, on the other hand it can also means that
    <math|y> is the image of <math|x> by <math|f>. We adopt the following
    convention. If lower cases are used as in <math|y=f<around*|(|x|)>> we
    interpret this as <math|<around*|(|x,y|)>\<in\>f> and if we use uppercase
    like in <math|f<around*|(|C|)>> we are talking about images. In case of
    doubt <math|<around*|(|f|)><around*|(|C|)>> always refers to the image.
  </remark>

  <\definition>
    <label|partial function preimage>Let <math|f:A\<rightarrow\>B> be a
    partial function and <math|C> a class such that <math|C\<subseteq\>B>
    then <with|font-series|bold|the preimage of C by f> noted as
    <math|f<rsup|-1><around*|(|C|)>> is defined by\ 

    <\equation*>
      f<rsup|-1><around*|(|C|)>=<around*|{|x\|\<exists\>y\<in\>B<text| such
      that ><around*|(|x,y|)>\<in\>f|}>
    </equation*>
  </definition>

  <\theorem>
    <label|partial functions image/preimage properties>Let
    <math|f:A\<rightarrow\>B> be a partial function, <math|C\<subseteq\>A>
    and <math|D\<subseteq\>B> then we have:

    <\enumerate>
      <item><math|f<around*|(|C|)>\<subseteq\>range<around*|(|f|)>>

      <item><math|f<rsup|-1><around*|(|D|)>\<subseteq\>dom<around*|(|f|)>>

      <item><math|f<around*|(|A|)>=range<around*|(|f|)>>

      <item><math|f<rsup|-1><around*|(|B|)>=dom<around*|(|f|)>>
    </enumerate>

    and if in addition <math|A,B> are sets then <math|f<around*|(|C|)>> and
    <math|f<rsup|-1><around*|(|D|)>> are sets
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|y\<in\>f<around*|(|C|)>> then there exists a
      <math|x\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f>, so
      <math|y\<in\>range<around*|(|f|)>>. Hence\ 

      <\equation*>
        f<around*|(|C|)>\<subseteq\>range<around*|(|f|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|D|)>> then there exists a
      <math|y\<in\>D> such that <math|<around*|(|x,y|)>\<in\>f>, which proves
      that <math|x\<in\>dom<around*|(|f|)>>, hence\ 

      <\equation*>
        f<rsup|-1><around*|(|D|)>\<subseteq\>dom<around*|(|f|)>
      </equation*>

      <item>If <math|y\<in\>range<around*|(|f|)>> then <math|\<exists\>x>
      such that <math|<around*|(|x,y|)>\<in\>f>, which as
      <math|f\<subseteq\>A\<times\>B> proves that <math|x\<in\>A>, hence
      <math|y\<in\>f<around*|(|A|)>>, or <math|range<around*|(|f|)>\<subseteq\>f<around*|(|A|)>>.
      From (1) we have <math|f<around*|(|A|)>\<subseteq\>range<around*|(|f|)>>,
      so using [theorem: <reference|class properties (1)>]\ 

      <\equation*>
        f<around*|(|A|)>=range<around*|(|f|)>
      </equation*>

      <item>If <math|x\<in\>dom<around*|(|f|)>> then <math|\<exists\>y> such
      that <math|<around*|(|x,y|)>\<in\>f>, which as
      <math|f\<subseteq\>A\<times\>B> proves that <math|y\<in\>B>, giving
      <math|x\<in\>f<rsup|-1><around*|(|B|)>>, hence
      <math|dom<around*|(|f|)>\<subseteq\>f<rsup|-1><around*|(|B|)>>. From
      (2) we have <math|f<rsup|-1><around*|(|B|)>\<subseteq\>dom<around*|(|f|)>>,
      so using [theorem: <reference|class properties (1)>]\ 

      <\equation*>
        f<rsup|-1><around*|(|B|)>=dom<around*|(|f|)>
      </equation*>
    </enumerate>

    Finally if <math|A>, <math|B> are sets then using [theorem:
    <reference|partial function set domain range>]
    <math|range<around*|(|f|)>> and <math|dom<around*|(|f|)>> are sets,
    applying then the Axiom of Subsets [axiom: <reference|axiom of subsets>]
    proves that <math|f<around*|(|C|)>> and <math|f<rsup|-1><around*|(|D|)>>
    are sets.
  </proof>

  Next we define the composition of two partial functions.

  <\definition>
    <label|partial function composition of graphs>Let
    <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> be two partial
    function then we define the composition of <math|f> and <math|g> noted as
    <math|g\<circ\>f> by\ 

    <\equation*>
      g\<circ\>f=<around*|{|z\|z=<around*|(|x,y|)><text| such that
      <math|\<exists\>u<text| with <math|<around*|(|x,u|)>\<in\>f\<wedge\><around*|(|u,y|)>\<in\>g>>>>|}>
    </equation*>
  </definition>

  The above defines the graph of a new partial function as is expressed in
  the following theorem

  <\theorem>
    <label|partial function composition of partial functions>Let
    <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> be partial
    functions then <math|g\<circ\>f:A\<rightarrow\>C> is a partial function.
  </theorem>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>g\<circ\>f> then there exist a <math|u>
    such that <math|<around*|(|x,u|)>\<in\>f> and
    <math|<around*|(|u,y|)>\<in\>g>, as <math|f>, <math|g> are partial
    functions we have that <math|f\<subseteq\>A\<times\>B> and
    <math|g\<subseteq\>B\<times\>C>. So <math|<around*|(|x,u|)>\<in\>A\<times\>B>
    and <math|<around*|(|u,y|)>\<in\>B\<times\>C>. So <math|x\<in\>A> and
    <math|y\<in\>C> proving that <math|<around*|(|x,y|)>\<in\>A\<times\>C>.
    Hence

    <\equation*>
      g\<circ\>f\<subseteq\>A\<times\>C
    </equation*>

    Further if <math|<around*|(|x,y|)>\<in\>g\<circ\>f\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>g\<circ\>f>
    then there exists <math|u,v> such that
    <math|<around*|(|x,u|)>\<in\>f\<wedge\><around*|(|u,y|)>\<in\>g\<wedge\><around*|(|x,v|)>\<in\>f\<wedge\><around*|(|v,y<rprime|'>|)>\<in\>g>.
    From <math|<around*|(|x,u|)>\<in\>f\<wedge\><around*|(|x,v|)>\<in\>f> it
    follows [as <math|f> is a partial function] that <math|u=v>. So
    <math|<around*|(|u,y|)>\<equallim\><rsub|<text|u=v and [theorem:
    <reference|pair equality of pairs>]>><around*|(|u,y<rprime|'>|)>\<in\>g>.
    Hence as <math|g> is a partial function it follows that
    <math|y=y<rprime|'>>. To summarize

    <\equation*>
      If <around*|(|x,y|)>\<in\>g\<circ\>f\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>g\<circ\>f
      <text| then >y=y<rprime|'>
    </equation*>

    So all the requirements for <math|g\<circ\>f:A\<rightarrow\>C> to be a
    partial function are satisfied.
  </proof>

  <\theorem>
    <label|partial function associativity><dueto|Associativity of
    Composition>Let <math|f:A\<rightarrow\>B>, <math|g:B\<rightarrow\>C> and
    <math|h:C\<rightarrow\>D> be functions then
    <math|h\<circ\><around*|(|g\<circ\>f|)>=<around*|(|h\<circ\>g|)>\<circ\>f>
  </theorem>

  <\proof>
    If <math|<around*|(|x.z|)>\<in\>h\<circ\><around*|(|g\<circ\>f|)>> then
    <math|\<exists\>u> such that <math|<around*|(|x,u|)>\<in\>g\<circ\>f> and
    <math|<around*|(|u,z|)>\<in\>h>. As <math|<around*|(|x,u|)>\<in\>g\<circ\>f>
    there exists a <math|v> such that <math|<around*|(|x,v|)>\<in\>f> and
    <math|<around*|(|v,u|)>\<in\>g>. As <math|<around*|(|v,u|)>\<in\>g\<wedge\><around*|(|u,z|)>\<in\>h>
    we have that <math|<around*|(|v,z|)>\<in\>h\<circ\>g>, as
    <math|<around*|(|x,v|)>\<in\>f> it follows
    <math|<around*|(|x,z|)>\<in\><around*|(|h\<circ\>g|)>\<circ\>f>.

    If <math|<around*|(|x,z|)>\<in\><around*|(|h\<circ\>g|)>\<circ\>f> there
    <math|\<exists\>u> such that <math|<around*|(|x,u|)>\<in\>f> and
    <math|<around*|(|u,z|)>\<in\>h\<circ\>g>. As
    <math|<around*|(|u,z|)>\<in\>h\<circ\>g> there <math|\<exists\>v> such
    that <math|<around*|(|u,v|)>\<in\>g> and <math|<around*|(|v,z|)>\<in\>h>.
    From <math|<around*|(|x,u|)>\<in\>f> and <math|<around*|(|u,v|)>\<in\>g>
    we have that <math|<around*|(|x,v|)>\<in\>g\<circ\>f>. As
    <math|<around*|(|v,z|)>\<in\>h> we have that
    <math|<around*|(|x,z|)>\<in\>h\<circ\><around*|(|h\<circ\>f|)>>.

    Using the Axiom of Extent [axiom: <reference|axiom of extent>] it follows
    that\ 

    <\equation*>
      h\<circ\><around*|(|g\<circ\>f|)>=<around*|(|h\<circ\>g|)>\<circ\>f
    </equation*>
  </proof>

  Let's look now at the domain and range of of the composition of two partial
  functions.

  <\theorem>
    <label|partial function domain range composition>Let
    <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> be partial
    functions then for <math|g\<circ\>f:A\<rightarrow\>C> we have\ 

    <\enumerate>
      <item><math|dom*<around*|(|g\<circ\>f|)>=dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>>

      <item><math|range<around*|(|g\<circ\>f|)>=g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>>

      <item><math|range<around*|(|g\<circ\>f|)>\<subseteq\>range<around*|(|g|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>dom<around*|(|g\<circ\>f|)>> then there exist a
      <math|z> such that <math|<around*|(|x,z|)>\<in\>g\<circ\>f>. So there
      exist a <math|y> such that <math|<around*|(|x,y|)>\<in\>f> and
      <math|*<around*|(|y,z|)>\<in\>g>, hence
      <math|x\<in\>dom<around*|(|f|)>> and
      <math|y\<in\>dom<around*|(|g|)>\<Rightarrowlim\><rsub|<around*|(|x,y|)>\<in\>f>x\<in\>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>>.
      So <math|x\<in\>dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>>.
      Hence\ 

      <\equation>
        <label|eq 2.10.001>dom<around*|(|g\<circ\>f|)>\<subseteq\>dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>
      </equation>

      If <math|x\<in\>dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|\<nobracket\>|g|)>|)>>
      then <math|x\<in\>dom<around*|(|f|)>> so that <math|\<exists\>y> such
      that <math|<around*|(|x,y|)>\<in\>f> and
      <math|x\<in\>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>> so that
      <math|\<exists\>y<rprime|'>\<in\>dom<around*|(|g|)>> such that
      <math|<around*|(|x,y<rprime|'>|)>\<in\>f>. As <math|f> is a partial
      function it follows that <math|y=y<rprime|'>>. So
      <math|y\<in\>dom<around*|(|g|)>>, from which it follows that
      <math|\<exists\>z> such that <math|<around*|(|y,z|)>\<in\>g>. As we
      have <math|<around*|(|x,y|)>\<in\>f> and
      <math|<around*|(|y,z|)>\<in\>g> it follows that
      <math|<around*|(|x.z|)>\<in\>g\<circ\>f> or
      <math|x\<in\>dom<around*|(|g\<circ\>f|)>>. This proves that
      <math|dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>\<subseteq\>dom<around*|(|g\<circ\>f|)>>,
      combining this with [eq: <reference|eq 2.10.001>] allows us to use
      [theorem: <reference|class properties (1)>] to get\ 

      <\equation*>
        dom<around*|(|g\<circ\>f|)>=dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>
      </equation*>

      <item>If <math|z\<in\>range<around*|(|g\<circ\>f|)>> then there exists
      a <math|x\<in\>A> such that <math|<around*|(|x,z|)>\<in\>g\<circ\>f>,
      so there exist a <math|y> such that
      <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>. Then
      <math|y\<in\>range<around*|(|f|)>> and <math|y\<in\>dom<around*|(|g|)>>
      or <math|y\<in\>range<around*|(|f|)><big|cap>dom<around*|(|g|)>>, which
      as <math|<around*|(|y,z|)>\<in\>g> proves that
      <math|z\<in\>g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>>.
      Hence\ 

      <\equation>
        <label|eq 2.11.001>range<around*|(|g\<circ\>f|)>\<subseteq\>g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>
      </equation>

      If <math|z\<in\>g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>>
      then <math|\<exists\>y\<in\>range<around*|(|f|)><big|cap>dom<around*|(|g|)>>
      such that <math|<around*|(|y,z|)>\<in\>g>. From
      <math|y\<in\>range<around*|(|f|)>> it follows that there exist a
      <math|x> such that <math|<around*|(|x,y|)>\<in\>f>. So
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f> proving that
      <math|x\<in\>range<around*|(|g\<circ\>f|)>>, hence
      <math|g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>\<subseteq\>range<around*|(|g\<circ\>f|)>>.
      Combining this with [eq: <reference|eq 2.11.001>] allows us to use
      [theorem: <reference|class properties (1)>] to get <math|>

      <\equation*>
        range<around*|(|g\<circ\>f|)>=g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>
      </equation*>

      <item>If <math|z\<in\>range<around*|(|g\<circ\>f|)>> then there exists
      a <math|x> such that <math|<around*|(|x,z|)>\<in\>g\<circ\>f>, so there
      exists a <math|y> such that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>.
      Hence <math|z\<in\>range<around*|(|g|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|partial function image preimage of compositions>If
    <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are partial
    functions then we have\ 

    <\enumerate>
      <item>If <math|C\<subseteq\>A> then
      <math|<around*|(|g\<circ\>f|)><around*|(|C|)>=g<around*|(|f<around*|(|C|)>|)>>

      <item>If <math|D\<subseteq\>B> then
      <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|z\<in\><around*|(|g\<circ\>f|)><around*|(|C|)>> then
      there exists a <math|x\<in\>C> such that
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f>. So by definition there exist
      a <math|y> such that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>.
      From <math|<around*|(|x,y|)>\<in\>f> it follows that
      <math|y\<in\>f<around*|(|C|)>> and as <math|<around*|(|y,z|)>\<in\>g>
      it follows that <math|z\<in\>g<around*|(|f<around*|(|C|)>|)>>. Hence\ 

      <\equation>
        <label|eq 2.12.002><around*|(|g\<circ\>f|)><around*|(|C|)>\<subseteq\>g<around*|(|f<around*|(|C|)>|)>
      </equation>

      On the other hand if <math|z\<in\>g<around*|(|f<around*|(|C|)>|)>>
      there exist a <math|y\<in\>f<around*|(|C|)>> such that
      <math|<around*|(|y,z|)>\<in\>g>. As <math|y\<in\>f<around*|(|C|)>>
      there exists a <math|x\<in\>C> such that
      <math|<around*|(|x,y|)>\<in\>f>. From
      <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g> it
      follows that <math|<around*|(|x,z|)>\<in\>g\<circ\>f> so that [as
      <math|x\<in\>C>] <math|z\<in\><around*|(|g\<circ\>f|)><around*|(|C|)>>.
      Proving <math|g<around*|(|f<around*|(|C|)>|)>\<subseteq\><around*|(|g\<circ\>f|)><around*|(|C|)>>,
      combining this with [eq <reference|eq 2.12.002>] and [theorem:
      <reference|class properties (1)>] gives\ 

      <\equation*>
        <around*|(|g\<circ\>f|)><around*|(|C|)>=g<around*|(|f<around*|(|C|)>|)>
      </equation*>

      <item>If <math|x\<in\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>>
      then there exist a <math|z\<in\>D> such that
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f>, hence <math|\<exists\>y> such
      that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>.
      So by definition <math|y\<in\>g<rsup|-1><around*|(|D|)>> and as
      <math|<around*|(|x,y|)>\<in\>f> it follows that
      <math|x\<in\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>>. Hence\ 

      <\equation>
        <label|eq 2.13.002><around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>\<subseteq\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>
      </equation>

      If <math|x\<in\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>> then
      there exist a <math|y\<in\>g<rsup|-1><around*|(|D|)>> such that
      <math|<around*|(|x,y|)>\<in\>f>, as
      <math|y\<in\>g<rsup|-1><around*|(|D|)>> then there exist a
      <math|z\<in\>D> such that <math|<around*|(|y,z|)>\<in\>g>. From
      <math|z\<in\>D\<wedge\><around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>
      it follows that <math|x\<in\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>>
      proving that <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>\<subseteq\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>>.
      Combining this with [eq: <reference|eq 2.13.002>] and [theorem:
      <reference|class properties (1)>] gives

      <\equation*>
        <around*|(|g\<circ\>f|)><rsup|-1><around*|(|D|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|D|)>|)>
      </equation*>
    </enumerate>
  </proof>

  \;

  <subsection|Functions>

  <\definition>
    <label|function><index|function>A partial function
    <math|f:A\<rightarrow\>B> is a <with|font-series|bold|function> iff
    <math|dom<around*|(|f|)>=A>
  </definition>

  So every function is also a partial function, hence statements about
  partial functions applies also for functions.

  <\proposition>
    <label|function condition (1)>A partial function
    <math|f:A\<rightarrow\>B> is a function iff
    <math|A\<subseteq\>dom<around*|(|f|)>>
  </proposition>

  <\proof>
    As <math|A\<subseteq\>dom<around*|(|f|)>> and
    <math|dom<around*|(|f|)>\<subseteq\>A> [theorem: <reference|partial
    function dom(f) range(f) as subclasses>] we have by [theorem:
    <reference|class properties (1)>] that

    <\equation*>
      dom<around*|(|f|)>=A
    </equation*>
  </proof>

  <\example>
    <label|function between {0,1} and {A,B}>Let <math|A,B> be classes and
    define <math|f=<around*|{|<around*|(|0,A|)>,<around*|(|1,B|)>|}>> then
    <math|f:<around*|{|0,1|}>\<rightarrow\><around*|{|A,B|}>> is a function
  </example>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>f> then

    <\equation*>
      <around*|(|x,y|)>=<around*|(|0,A|)>\<Rightarrow\>x=1\<in\><around*|{|0,1|}>\<wedge\>y=A\<in\><around*|{|A,B|}><text|
      so that ><around*|(|x,y|)>\<in\><around*|{|0,1|}>\<times\><around*|{|A,B|}>
    </equation*>

    or

    <\equation*>
      <around*|(|x,y|)>=<around*|(|1,B|)>\<Rightarrow\>x=1\<in\><around*|{|0,1|}>\<wedge\>y=B\<in\><around*|{|A,B|}><text|
      so that ><around*|(|x,y|)>\<in\><around*|{|0,1|}>\<times\><around*|{|A,B|}>
    </equation*>

    proving that\ 

    <\equation*>
      f\<subseteq\><around*|{|0,1|}>\<times\><around*|{|A,B|}>
    </equation*>

    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> then for
    <math|<around*|(|x,y|)>> we have either:

    <\description>
      <item*|<math|<around*|(|x,y|)>=<around*|(|0,A|)>>>Then <math|x=0> and
      <math|y=A> so that <math|<around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|0,y<rprime|'>|)>\<in\>f\<Rightarrow\>y<rprime|'>=A>
      hence <math|y=y<rprime|'>>

      <item*|<math|<around*|(|x,y|)>=<around*|(|1,B|)>>>Then <math|x=1> and
      <math|y=B> so that <math|<around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|1,y<rprime|'>|)>\<in\>f\<Rightarrow\>y<rprime|'>=B>
      hence <math|y=y<rprime|'>>
    </description>

    which proves that\ 

    <\equation*>
      f:<around*|{|0,1|}>\<rightarrow\><around*|{|A,B|}><text| is a partial
      function>
    </equation*>

    If <math|x\<in\><around*|{|0,1|}>> then either <math|x=0> so that
    <math|<around*|(|0,A|)>\<in\>f> or <math|x=1> so that
    <math|<around*|(|1,B|)>\<in\>f>, so <math|<around*|{|0,1|}>\<subseteq\>dom<around*|(|f|)>>.
    Using [proposition: <reference|function condition (1)>] it follows that\ 

    <\equation*>
      f:<around*|{|0,1|}>\<rightarrow\><around*|{|A,B|}><text| is a function>
    </equation*>
  </proof>

  Next we define the class of all the graphs of functions between two classes

  <\note>
    Be aware that some books calls partial functions functions and functions
    mappings.\ 
  </note>

  <\definition>
    <label|function B^A><index|<math|B<rsup|A>>>Let <math|A,B> be two classes
    then we define the class <math|B<rsup|A>> [using the Axiom of
    Construction] as\ 

    <\equation*>
      B<rsup|A>=<around*|{|f\|f:A\<rightarrow\>B<text| is a function>|}>
    </equation*>
  </definition>

  <\note>
    <math|B<rsup|A>> is not the class of functions between <math|A> and
    <math|B>, but the class of graphs of functions between <math|A> and
    <math|B>. This distinction is important because it makes the following
    theorem possible.
  </note>

  <\example>
    <label|function A^empty is empty>Let <math|A> be a class then
    <math|A<rsup|\<varnothing\>>=<around*|{|\<varnothing\>|}>>
  </example>

  <\proof>
    Let <math|f\<in\>A<rsup|\<varnothing\>>> then
    <math|f:\<varnothing\>\<Rightarrow\>A> is a function, so that
    <math|f\<subseteq\>\<varnothing\>\<times\>A=\<varnothing\>> or
    <math|f=\<varnothing\>>
  </proof>

  <\theorem>
    <label|function B^A and inclusion>Let <math|A,B,C> be classes such that
    <math|B\<subseteq\>C> then <math|B<rsup|A>\<subseteq\>C<rsup|A>>
  </theorem>

  <\proof>
    Let <math|f\<in\>B<rsup|A>> then <math|f:A\<rightarrow\>B> is a function,
    so by definition <math|f\<subseteq\>A\<times\>B>, if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> then
    <math|y=y<rprime|'>> and <math|dom<around*|(|f|)>=A>, As
    <math|B\<subseteq\>C> we have using [theorem: <reference|cartesian
    product and inclusion>] that <math|A\<times\>B\<subseteq\>C>, so using
    [theorem: <reference|class properties (1)>] we have that
    <math|f\<subseteq\>A\<times\>C>. So <math|f:A\<rightarrow\>C> is a
    function, hence <math|f\<in\>C<rsup|A>>m proving that\ 

    <\equation*>
      B<rsup|A>\<subseteq\>C<rsup|A>
    </equation*>

    \;
  </proof>

  We have also the following relation between <math|A\<times\>B> and
  <math|B<rsup|C>>

  <\theorem>
    <label|function: A^B and sets>Let <math|A,B> be two classes then we have:

    <\enumerate>
      <item><math|B<rsup|A>\<subseteq\>A\<times\>B>

      <item>If <math|A,B> are sets then <math|B<rsup|A>> is a set
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|f\<in\>B<rsup|A>> then <math|f:A\<rightarrow\>B> is a
      function so that <math|f\<subseteq\>A\<times\>B> proving that
      <math|B<rsup|A>\<subseteq\>A\<times\>B>

      <item>If <math|A,B> are sets then by [theorem: <reference|set A*B>] we
      have that <math|A\<times\>B> is a set. So using the Axiom of Subsets
      [axiom: <reference|axiom of subsets>] we have that <math|f> is a set,
    </enumerate>
  </proof>

  <\theorem>
    <label|function power of intersection>Let <math|A,B,C> be classes then
    <math|A<rsup|C><big|cap>B<rsup|C>=<around*|(|A<big|cap>B|)><rsup|C>>
  </theorem>

  <\proof>
    First by [theorem: <reference|class intersection, union, inclusion>] we
    have <math|A<big|cap>B\<subseteq\>A> and <math|A<big|cap>B\<subseteq\>B>
    it follows from the above theorem [theorem: <reference|function B^A and
    inclusion>] that <math|<around*|(|A<big|cap>B|)><rsup|C>\<subseteq\>A<rsup|C>>
    and <math|<around*|(|A<big|cap>B|)><rsup|C>\<subseteq\>B<rsup|C>>.
    Applying then [theorem: <reference|class inclusion and union and
    intersection>] gives\ 

    <\equation>
      <label|eq 2.14.009><around*|(|A<big|cap>B|)><rsup|C>\<subseteq\>A<rsup|C><big|cap>B<rsup|C>
    </equation>

    For the opposite inclusion, let <math|f\<in\>A<rsup|C><big|cap>B<rsup|C>>
    then <math|f\<in\>A<rsup|C>\<wedge\>f\<in\>B<rsup|C>> so that
    <math|f:C\<rightarrow\>A> and <math|f:C\<rightarrow\>B> are functions.
    Then we have that <math|f\<subseteq\>C\<times\>A> and
    <math|f\<subseteq\>C\<times\>B> so that

    <\equation*>
      f\<subseteq\><around*|(|C\<times\>A|)><big|cap><around*|(|C\<times\>B|)>\<equallim\><rsub|<text|<reference|cartesian
      product properties (1)>>><around*|(|C<big|cap>C|)>\<times\><around*|(|A<big|cap>B|)>\<equallim\><rsub|<text|[theorem:
      <reference|class class commutative,idempotent,associative,distributivity>]>>C\<times\><around*|(|A<big|cap>B|)>
    </equation*>

    Further as <math|f:A\<rightarrow\>C> is a function we have
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> and
    <math|dom<around*|(|f|)>=C> so that\ 

    <\equation*>
      f:C\<rightarrow\><around*|(|A<big|cap>B|)><text| is a function>
    </equation*>

    proving that <math|f\<in\><around*|(|A<big|cap>B|)><rsup|I>>. So
    <math|A<rsup|C><big|cap>B<rsup|C>\<subseteq\><around*|(|A<big|cap>B|)><rsup|C>>
    which combined with [eq: <reference|eq 2.14.009>] gives

    <\equation*>
      A<rsup|C><big|cap>B<rsup|C>=<around*|(|A<big|cap>B|)><rsup|C>
    </equation*>
  </proof>

  We have the follow trivial fact about a function

  <\proposition>
    <label|function range restriction>Let <math|f:A\<rightarrow\>B> be a
    function then if <math|range<around*|(|f|)>\<subseteq\>C> we have that
    <math|f:A\<rightarrow\>C> is a function.
  </proposition>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>f> then
    <math|y\<in\>range<around*|(|f|)>> hence as
    <math|range<around*|(|f|)>\<subseteq\>C> <math|y\<in\>C>. As
    <math|f\<subseteq\>A\<times\>B> we have also <math|x\<in\>A> so that
    <math|<around*|(|x,y|)>\<in\>C\<times\>B>. Hence
    <math|f\<subseteq\>A\<times\>C>, further if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> we have as
    <math|f:A\<rightarrow\>B> is a function that <math|y=y<rprime|'>>. So

    <\equation*>
      f:A\<rightarrow\>C<text| is a partial function>
    </equation*>

    As <math|range<around*|(|f|)>=A> (because <math|f:A\<rightarrow\>B> is a
    function] we have that <math|f:A\<rightarrow\>C> a function
  </proof>

  We have the following trivial proposition about the equality of two
  functions

  <\proposition>
    <label|function equality (1)>Two functions <math|f:A\<rightarrow\>B> and
    <math|g:A\<rightarrow\>B> are equal if

    <\equation*>
      <around*|[|<around*|(|x,y|)>\<in\>f\<Rightarrow\><around*|(|x,y|)>\<in\>g\<wedge\><around*|(|x,y|)>\<in\>g\<Rightarrow\><around*|(|x,y|)>\<in\>f|]>
    </equation*>
  </proposition>

  <\proof>
    Note that the statement <math|f:A\<rightarrow\>B> and
    <math|g:A\<rightarrow\>B> are equal is equivalent with
    <math|<around*|\<langle\>|A,B,f|\<rangle\>>=<around*|\<langle\>|A,B,g|\<rangle\>>>,
    which by <reference|\<less\>A,B,C\<gtr\>=\<less\>D,E,F\<gtr\>=\<gtr\>A=E,B=D,C=F>
    is equivalent with <math|A=A\<wedge\>B=B\<wedge\>f=g>, As <math|A=A> and
    <math|B=B> are true this is equivalent with <math|f=g>. Now by the Axiom
    of Extent [axiom: <reference|axiom of extent>] we have that\ 

    <\equation*>
      f=g\<Leftrightarrow\><around*|[|<around*|(|x,y|)>\<in\>f\<Rightarrow\><around*|(|x,y|)>\<in\>g\<wedge\><around*|(|x,y|)>\<in\>g\<Rightarrow\><around*|(|x,y|)>\<in\>f|]>
    </equation*>

    \;
  </proof>

  If <math|f:A\<rightarrow\>B> is a function then for every <math|x\<in\>A>
  we have a unique <math|y\<in\>B> such that <math|<around*|(|x,y|)>\<in\>f>.
  Furthermore in many cases we have actually a expression valid for every
  <math|x\<in\>A> to calculate this unique value. To express this we use the
  following notation.

  <\definition>
    <label|function f(x)>If <math|f:A\<rightarrow\>B> is a function then
    <with|font-series|bold|<math|y=f<around*|(|x|)>>> or
    <with|font-series|bold|<math|f<around*|(|x|)>=y>> where
    <math|<with|font-series|bold|y>> is a symbol or a mathematical expression
    is equivalent with\ 

    <\equation*>
      <with|font-series|bold|<around*|(|x,y|)>\<in\>f>
    </equation*>

    Further if <math|D\<subseteq\>B> then
    <with|font-series|bold|<math|f<around*|(|x|)>\<in\>D>> is the same as
    <with|font-series|bold|<math|\<exists\>y\<in\>D> such that
    <math|y=f<around*|(|x|)>>>
  </definition>

  <\example>
    Let <math|3\<cdot\>x+1> be the value associated with <math|x>, so
    <math|f=<around*|{|z\|z=<around*|(|x,3\<cdot\>x+1|)>\<in\>f\<wedge\>x\<in\>A|}>>,
    then we can use the following equivalent notations to define our function

    <\equation*>
      f:A\<rightarrow\>B \ <text|is defined by > x\<rightarrow\>3\<cdot\>x+1
    </equation*>

    If we have defined a function <math|f:A\<rightarrow\>B> using a
    expression and we want to refer to the expression of the function we use
    the notation <math|f<around*|(|x|)>>. Hence we define a function also as\ 

    <\equation*>
      f:A\<rightarrow\>B<text| is defined by
      >x\<rightarrow\>f<around*|(|x|)>=3\<cdot\>x+1
    </equation*>

    or

    <\equation*>
      f:A\<rightarrow\>B is defined by x\<rightarrow\>f<around*|(|x|)> where
      f<around*|(|x|)>=3\<cdot\>x+1
    </equation*>

    or

    <\equation*>
      f:A\<rightarrow\>B<text| is defined by >f<around*|(|x|)>=3\<ast\>x+1
    </equation*>

    In all of the above cases we actually means that
    <math|<around*|\<langle\>|f,A,B|\<rangle\>>> is a function with
    <math|f=<around*|{|z\|z=<around*|(|x,3\<cdot\>x+1|)>\<wedge\>x\<in\>A|}>>.
  </example>

  Using the above notation we can reformulate [proposition:
  <reference|function equality (1)>] in a form that is easier to work with if
  we use expressions to define a function.

  <\proposition>
    <label|function equality (2)>Two functions <math|f:A\<rightarrow\>B> and
    <math|g:A\<rightarrow\>B> are equal if and only if

    <\equation*>
      \<forall\>x\<in\>A<text| >f<around*|(|x|)>=g<around*|(|x|)>
    </equation*>
  </proposition>

  <\proof>
    Assume that <math|f:A\<rightarrow\>B> and <math|g:A\<rightarrow\>B> are
    equal then if <math|x\<in\>A> we have <math|\<exists\>y\<in\>B> such that
    <math|<around*|(|x,y|)>\<in\>f> or <math|y=f<around*|(|x|)>>, using
    [proposition: <reference|function equality (1)>] we have also
    <math|<around*|(|x,y|)>\<in\>g> hence <math|y=g<around*|(|x|)>> which
    proves that <math|f<around*|(|x|)>=g<around*|(|x|)>>.\ 

    On the other hand assume that <math|\<forall\>x\<in\>A>
    <math|f<around*|(|x|)>=g<around*|(|x|)>> then if
    <math|<around*|(|x,y|)>\<in\>f> we have
    <math|y=f<around*|(|x|)>=g<around*|(|x|)>> so that
    <math|<around*|(|x,y|)>\<in\>g>. If <math|<around*|(|x,y|)>\<in\>g> then
    <math|y=g<around*|(|x|)>=f<around*|(|x|)>> or
    <math|<around*|(|x,y|)>\<in\>g>. Using [proposition: <reference|function
    equality (1)>] we have then that <math|f:A\<rightarrow\>B> and
    <math|g:A\<rightarrow\>B> are equal.
  </proof>

  Using the new notation, composition of function is written as\ 

  <\theorem>
    <label|function alternative for composition>f <math|f:A\<rightarrow\>B>
    and <math|g:B\<rightarrow\>C> are two functions then\ 

    <\equation*>
      <around*|(|g\<circ\>f|)><around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>
    </equation*>
  </theorem>

  <\proof>
    \ Take <math|z=<around*|(|g\<circ\>f|)><around*|(|x|)>> then
    <math|<around*|(|x,z|)>\<in\>g\<circ\>f> so that <math|\<exists\>y> such
    that <math|<around*|(|x,y|)>\<in\>f> and <math|<around*|(|y,z|)>\<in\>g>.
    Hence <math|y=f<around*|(|x|)>> and <math|z=g<around*|(|y|)>> so that
    <math|z=g<around*|(|f<around*|(|x|)>|)>>, proving
    <math|<around*|(|g\<circ\>f|)><around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>>.
  </proof>

  Image and pre-image can also be expressed in the new notation.

  <\proposition>
    <label|function image preimage alternative>Let <math|f:A\<rightarrow\>B>
    a function, <math|C\<subseteq\>A> and
    <math|D\<subseteq\>B><space|1em>then\ 

    <\enumerate>
      <item><math|y\<in\>f<around*|(|C|)>\<Leftrightarrow\>\<exists\>x\<in\>A>
      such that <math|y=f<around*|(|x|)>>

      <item><math|x\<in\>f<rsup|-1><around*|(|D|)>\<Leftrightarrow\>f<around*|(|x|)>\<in\>D>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>f<around*|(|C|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>x\<in\>C<text|
        such that ><around*|(|x,y|)>\<in\>f>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>x\<in\>C<text|
        such that >y=f<around*|(|x|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|C|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>D<text|
        such that ><around*|(|x,y|)>\<in\>f>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>D<text|
        such that >y=f<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<in\>D>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  Let's now look at some example of functions:

  <\example>
    <label|function empty function><dueto|Empty
    Function><math|\<varnothing\>:\<varnothing\>\<rightarrow\>B>
  </example>

  <\proof>
    First <math|\<varnothing\>\<subseteq\>\<varnothing\>\<times\>B> by
    [theorem: <reference|class empty set>], if
    <math|x\<in\>dom<around*|(|\<varnothing\>|)>> then
    <math|\<exists\>y\<in\>\<varnothing\>> such that
    <math|<around*|(|x,y|)>\<in\>\<varnothing\>> which is a contradiction, so
    by [theorem: <reference|class empty set is unique>] we have that
    <math|dom<around*|(|\<varnothing\>|)>=\<varnothing\>>. And finally
    <math|<around*|(|x,y|)>\<in\>\<varnothing\>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>\<varnothing\>\<Rightarrow\>y=y<rprime|'>>
    is satisfied vacuously as <math|<around*|(|x,y|)>\<in\>\<varnothing\>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>\<varnothing\>>
    is never true.\ 
  </proof>

  <\example>
    <label|function constant function><dueto|Constant Function>Let <math|A>,
    <math|B> classes and <math|c\<in\>B> then
    <math|C<rsub|c>:A\<rightarrow\>B> is defined by
    <math|C<rsub|c><around*|(|x|)>=c> or formally
    <math|C<rsub|c>=<around*|{|z\|z=<around*|(|x,c|)>\|x\<in\>A|}>=A\<times\><around*|{|c|}>>
  </example>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>C<rsub|c>> then <math|x\<in\>A> and
    <math|y=c\<in\>B> so that <math|C<rsub|c>\<subseteq\>A\<times\>B>. If
    <math|<around*|(|x,y|)>\<in\>C<rsub|c>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>C<rsub|c>>
    then <math|y=c\<wedge\>y<rprime|'>=c> so that <math|y=y<rprime|'>>. So\ 

    <\equation*>
      C<rsub|c>:A\<rightarrow\>B<text| is a partial function>
    </equation*>

    \ Finally if <math|x\<in\>A> then <math|<around*|(|x,c|)>\<in\>C<rsub|c>>
    so that <math|A\<subseteq\>dom<around*|(|C<rsub|c>|)>> which by
    [proposition: <reference|function condition (1)>] proves that\ 

    <\equation*>
      C<rsub|c>:A\<rightarrow\>B is a function
    </equation*>
  </proof>

  <\example>
    <label|function characteristics function><dueto|Characteristics
    Function>Let <math|A> be a class and <math|B\<subseteq\>A> then
    <math|\<cal-X\><rsub|A,B>:A\<rightarrow\><around*|{|0.1|}>> is defined by
    <math|\<cal-X\><rsub|A,B>=<around*|(|B\<times\><around*|{|1|}>|)><big|cup><around*|(|<around*|(|A\\B|)>\<times\><around*|{|0|}>|)>>
    [so that <math|\<cal-X\><rsub|A,B><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1
    <text|if >x\<in\>B>>|<row|<cell|0<text| if >x\<in\>A\\B>>>>>>
  </example>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>\<cal-X\><rsub|A,B>> then either
    <math|<around*|(|x,y|)>\<in\><around*|(|B\<times\><around*|{|1|}>|)>\<Rightarrow\>x\<in\>B\<Rightarrowlim\><rsub|B\<subseteq\>A>x\<in\>A>
    and <math|y=1\<in\><around*|{|0,1|}>> or
    <math|<around*|(|x,y|)>\<in\><around*|(|<around*|(|A\\B|)>,<around*|{|0|}>|)>\<Rightarrow\>x\<in\>A\\B\<Rightarrow\>x\<in\>A>
    and <math|y=1\<in\><around*|{|0,1|}>> so that\ 

    <\equation*>
      \<cal-X\><rsub|A,B>\<subseteq\>A\<times\><around*|{|0,1|}>
    </equation*>

    Also if <math|*<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>\<cal-X\><rsub|A,B>>
    then for <math|<around*|(|x,y|)>> we have either:

    <\description>
      <item*|<math|<around*|(|x,y|)>\<in\>B\<times\><around*|{|1|}>>>then
      <math|x\<in\>B> so that <math|<around*|(|x,y<rprime|'>|)>\<in\>B\<times\><around*|{|1|}>>
      hence <math|y=1=y<rprime|'>>

      <item*|<math|<around*|(|x,y|)>\<in\><around*|(|A\\B|)>\<times\><around*|{|0|}>>>then
      <math|x\<in\>A\\B> so that <math|<around*|(|x,y<rprime|'>|)>\<in\><around*|(|A\\B|)>\<times\><around*|{|0|}>>
      hence <math|y=0=y<rprime|'>>
    </description>

    or in all cases <math|y=y<rprime|'>> and
    <math|x\<in\>B<big|cup><around*|(|A\\B|)>=A>. Hence
    <math|\<cal-X\><rsub|A,B>:A\<rightarrow\><around*|{|0,1|}>> is a
    function.
  </proof>

  <\example>
    <label|function identity function><index|identity
    function><index|<math|Id<rsub|A>>><dueto|Identity Function>Let <math|A>
    be a class then <math|Id<rsub|A>:A\<rightarrow\>A> is defined by

    <\equation*>
      I<rsub|A>=<around*|{|z<mid|\|>z=<around*|(|x,x|)>\<wedge\>x\<in\>A|}>
    </equation*>
  </example>

  <\proof>
    Trivially we have <math|Id<rsub|A>\<subseteq\>A\<times\>A>. If
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>Id<rsub|A>> then
    <math|<around*|(|x,y|)>=<around*|(|x,x|)>=<around*|(|x,y<rprime|'>|)>>
    proving that <math|y=x=y<rprime|'>>. Hence
    <math|I<rsub|d>:A\<rightarrow\>A> is a partial function. Further if
    <math|x\<in\>A> then <math|<around*|(|x,x|)>\<in\>Id<rsub|A>> so that
    <math|x\<in\>dom<around*|(|Id<rsub|A>|)>> or
    <math|dom<around*|(|Id<rsub|A>|)>\<subseteq\>A> which by [proposition:
    <reference|function condition (1)>] proves that\ 

    <\equation*>
      Id<rsub|A>:A\<rightarrow\>A<text| is a function>
    </equation*>
  </proof>

  <\proposition>
    <label|function composition of Id function>Let <math|f:A\<rightarrow\>B>
    be a partial function then <math|f=f\<circ\>Id<rsub|A>> and
    <math|f=Id<rsub|B>\<circ\>f>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|<around*|(|x,y|)>\<in\>f> then as
      <math|f\<subseteq\>A\<times\>B> we have
      <math|x\<in\>A\<wedge\>x\<in\>B>, by the definition of
      <math|Id<rsub|A>> we have <math|<around*|(|x,x|)>\<in\>Id<rsub|A>>, as
      <math|<around*|(|x,y|)>\<in\>f> we have
      <math|<around*|(|x,y|)>\<in\>Id<rsub|A>\<circ\>f>. If
      <math|<around*|(|x,y|)>\<in\>f\<circ\>Id<rsub|A>> then
      <math|\<exists\>x<rprime|'>> such that
      <math|<around*|(|x,x<rprime|'>|)>\<in\>Id<rsub|A>\<wedge\><around*|(|x<rprime|'>,y|)>\<in\>f>.
      By definition of <math|Id<rsub|A>> we have that
      <math|\<exists\>z\<in\>A> such that
      <math|<around*|(|x,x<rprime|'>|)>=<around*|(|z,z|)>> hence
      <math|x=x<rprime|'>> so that <math|<around*|(|x,y|)>\<in\>f>. Using the
      Axiom of Extent [axiom: <reference|axiom of extent>] we have then that\ 

      <\equation*>
        f=f\<circ\>Id<rsub|A>
      </equation*>

      <item>If <math|<around*|(|x,y|)>\<in\>f> then as
      <math|f\<subseteq\>A\<times\>B> we have
      <math|x\<in\>A\<wedge\>x\<in\>B>, by the definition of
      <math|Id<rsub|B>> we have <math|<around*|(|y,y|)>\<in\>Id<rsub|B>>, so
      <math|<around*|(|x,y|)>\<in\>Id<rsub|B>\<circ\>f>. If
      <math|<around*|(|x,y|)>\<in\>Id<rsub|B>\<circ\>f> then
      <math|\<exists\>y<rprime|'>> such that
      <math|<around*|(|x,y<rprime|'>|)>\<in\>f\<wedge\><around*|(|y,y<rprime|'>|)>>,
      from the definition of <math|Id<rsub|B>> we have that
      <math|y=y<rprime|'>> so that <math|<around*|(|x,y|)>\<in\>f>. Using the
      Axiom of Extent [axiom: <reference|axiom of extent>] we have then that\ 

      <\equation*>
        f=Id<rsub|B>\<circ\>f
      </equation*>
    </enumerate>
  </proof>

  As a function <math|f:A\<rightarrow\>B> is a partial function with
  <math|dom<around*|(|f|)>=A> we can refine [theorem: <reference|partial
  functions image/preimage properties>].

  <\theorem>
    <label|function image preimage>If <math|f:A\<rightarrow\>B> is a function
    <math|C\<subseteq\>B> and <math|D\<subseteq\>B> then we have\ 

    <\enumerate>
      <item><math|f<around*|(|C|)>\<subseteq\>B>

      <item><math|f<rsup|-1><around*|(|D|)>\<subseteq\>A>

      <item><math|f<around*|(|A|)>=range<around*|(|f|)>>

      <item><math|f<rsup|-1><around*|(|B|)>=A>
    </enumerate>
  </theorem>

  <\proof>
    This follows from \ <reference|partial functions image/preimage
    properties> taking in account that <math|A=dom<around*|(|f|)>>
  </proof>

  Next we proof that the composition of two functions is again a function

  <\theorem>
    <label|function composition of functions is a fucntion>Let
    <math|f:A\<rightarrow\>B> and <math|g:A\<rightarrow\>B> functions then
    <math|g\<circ\>f:A\<rightarrow\>C> is also a function with
    <math|range<around*|(|f|)>=g<around*|(|range<around*|(|f|)>|)>>
  </theorem>

  <\proof>
    Using [theorem: <reference|partial function composition of partial
    functions>] we have that\ 

    <\equation*>
      g\<circ\>f:A\<rightarrow\>C<text| is a partial function>
    </equation*>

    Further using [theorem: <reference|partial function domain range
    composition>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|dom<around*|(|g\<circ\>f|)>>|<cell|=>|<cell|dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f,g
      <text| are functions>>>|<cell|A<big|cap>f<rsup|-1><around*|(|B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function image preimage>>>>|<cell|A>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      g\<circ\>f<text| is a function>
    </equation*>

    Finally

    <\eqnarray*>
      <tformat|<table|<row|<cell|range<around*|(|g\<circ\>f|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|partial function domain range
      composition>>>>|<cell|g<around*|(|range<around*|(|f|)><big|cap>dom<around*|(|g|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
      is a function>>>|<cell|g<around*|(|range<around*|(|f|)><big|cap>B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|range<around*|(|f|)>\<subseteq\>B<text|
      [theorem: <reference|partial function dom(f) range(f) as
      subclasses>]>>>|<cell|g<around*|(|range<around*|(|f|)>|)>>>>>
    </eqnarray*>
  </proof>

  <subsection|Injectivity, Surjectivity and bijectivity>

  First we define injectivity and surjectivity of partial functions.

  <\definition>
    <label|partial function injectivity and surjectivity>Let
    <math|f:A\<rightarrow\>B> be a partial function then we say that:

    <\enumerate>
      <item><math|f> is <with|font-series|bold|injective> iff if
      <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x<rprime|'>,y|)>\<in\>f>
      implies <math|x=x<rprime|'>>

      <item><math|f> is <with|font-series|bold|surjective> iff
      <math|range<around*|(|f|)>=B>
    </enumerate>
  </definition>

  <\proposition>
    <label|function surjection condition>A partial function
    <math|f:A\<rightarrow\>B> is surjective if
    <math|B\<subseteq\>range<around*|(|f|)>>
  </proposition>

  <\proof>
    By [theorem: <reference|partial function dom(f) range(f) as subclasses>]
    <math|range<around*|(|f|)>\<subseteq\>B>, so if
    <math|B\<subseteq\>range<around*|(|f|)>> it follows from [theorem:
    <reference|class properties (1)>] that <math|B=range<around*|(|f|)>>,
    proving surjectivity.
  </proof>

  Using the notation <math|y=f<around*|(|x|)>> is the same as
  <math|<around*|(|x,y|)>\<in\>f> we have

  <\theorem>
    <label|function injectivity, surjectivity>Let <math|f:A\<rightarrow\>B>
    be a function then\ 

    <\enumerate>
      <item><math|f> is injective if and only if <math|\<forall\>x,x\<in\>A>
      with <math|f<around*|(|x|)>=f<around*|(|x<rprime|'>|)>> we have
      <math|x=x<rprime|'>>

      <item><math|f> is surjective if and only if \ <math|\<forall\>y\<in\>B>
      there exists a <math|x\<in\>A> such that <math|y=f<around*|(|x|)>>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|x,x<rprime|'>\<in\>A> then if
        <math|y=f<around*|(|x|)>=f<around*|(|x<rprime|'>|)>> we have
        <math|<around*|(|x,y|)>\<in\>f> and
        <math|<around*|(|x<rprime|'>,y|)>> so that <math|x=x<rprime|'>>

        <item*|<math|\<Leftarrow\>>>If <math|<around*|(|x,y|)>\<in\>f> and
        <math|<around*|(|x<rprime|'>,y|)>\<in\>f> then
        <math|y=f<around*|(|x|)>\<wedge\>y=f<around*|(|x<rprime|'>|)>> so
        that <math|f<around*|(|x|)>=f<around*|(|x<rprime|'>|)>> so that
        <math|x=x<rprime|'>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|B=range<around*|(|f|)>> we have
        <math|y\<in\>B> then <math|\<exists\>x> such that
        <math|<around*|(|x,y|)>\<in\>f\<Rightarrow\>y=f<around*|(|x|)>> which
        as <math|f\<subseteq\>A\<times\>B> proves that <math|x\<in\>A>. So
        <math|\<forall\>y\<in\>B> <math|\<exists\>x\<in\>A> such that
        <math|y=f<around*|(|x|)>>

        <item*|<math|\<Leftarrow\>>>Let <math|y\<in\>B> then
        <math|\<exists\>x\<in\>A> such that <math|y=f<around*|(|x|)>> or
        <math|<around*|(|x,y|)>\<in\>f> proving that
        <math|B\<subseteq\>range<around*|(|f|)>>, using [proposition:
        <reference|function surjection condition>] we have that <math|f> is
        sujective
      </description>
    </enumerate>
  </proof>

  <\example>
    <label|function inclusion function><index|<math|i<rsub|B>>>Let <math|A,B>
    be classes, <math|B\<subseteq\>A> then <math|i<rsub|B>:B\<rightarrow\>A>
    defined by <math|i<rsub|B>=<around*|{|<around*|(|x,x|)>\|x\<in\>B|}>> is
    a injective function. This function is called the
    <with|font-series|bold|inclusion> function.\ 
  </example>

  <\proof>
    First if <math|<around*|(|x,y|)>\<in\>i<rsub|B>> then
    <math|\<exists\>b\<in\>B> such that <math|<around*|(|x,y|)>=<around*|(|b,b|)>>
    so that <math|x=b\<in\>B\<wedge\>y=b\<in\>B\<subseteq\>A> proving that

    <\equation*>
      i<rsub|B>\<subseteq\>B*\<times\>A
    </equation*>

    Further if <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>i<rsub|B>>
    then <math|\<exists\>b,b<rprime|'>\<in\>B> such that
    <math|<around*|(|x,y|)>=<around*|(|b,b|)>\<wedge\><around*|(|x,y<rprime|'>|)>=<around*|(|b<rprime|'>,b<rprime|'>|)>>,
    so that <math|x=b\<wedge\>y=b\<wedge\>x=b<rprime|'>\<wedge\>y<rprime|'>=b<rprime|'>>,
    hence <math|y=y<rprime|'>>. So\ 

    <\equation*>
      i<rsub|B>:B\<rightarrow\>A<text| is a partial function>
    </equation*>

    If <math|x\<in\>B> then <math|<around*|(|x,x|)>\<in\>i<rsub|B>> proving
    that <math|A\<subseteq\>dom<around*|(|i<rsub|b>|)>> so using
    [proposition: <reference|function condition (1)>] it follows that

    <\equation*>
      i<rsub|B>:B\<rightarrow\>A<text| is a function>
    </equation*>

    Finally if <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>i<rsub|B>>
    then there exists <math|b,b<rprime|'>\<in\>B > such that
    <math|<around*|(|x,y|)>=<around*|(|b,b|)>\<wedge\><around*|(|x<rprime|'>,y|)>=<around*|(|b<rprime|'>,b<rprime|'>|)>>,
    so that <math|x=b\<wedge\>y=b\<wedge\>x<rprime|'>=b<rprime|'>\<wedge\>y=b<rprime|'>>,
    hence <math|x=x<rprime|'>>, proving injectivity.

    \;
  </proof>

  The following axiom ensures that the image of a set by a surjection is a
  set.

  <\axiom>
    <label|Axiom of Replacement><dueto|Axiom of Replacement>If <math|A> is a
    set and <math|f:A\<rightarrow\>B> a surjection then <math|B> is a set.
  </axiom>

  <\proposition>
    <label|function preimage of image>If <math|f:A\<rightarrow\>B> is a a
    function and <math|C\<subseteq\>A>,<math|D\<subseteq\>B> then\ 

    <\enumerate>
      <item><math|C\<subseteq\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>>

      <item>If <math|f> is injective then
      <math|C=f<rsup|-1><around*|(|f<around*|(|C|)>|)>>

      <item>If <math|f> is surjective then
      <math|D=f<around*|(|f<rsup|-1><around*|(|D|)>|)>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>C> then, as <math|f> is a function,
      <math|A=dom<around*|(|f|)>>, so there exists a <math|y> such that
      <math|<around*|(|x,y|)>\<in\>f> proving that
      <math|y\<in\>f<around*|(|C|)>>, hence
      <math|x\<in\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>>. So\ 

      <\equation*>
        C\<subseteq\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>> then
      <math|\<exists\>y\<in\>f<around*|(|C|)>> such that
      <math|<around*|(|y,x|)>\<in\>f<rsup|-1>>, hence
      <math|<around*|(|x,y|)>\<in\>f>. As <math|y\<in\>f<around*|(|C|)>>
      there exists a <math|x<rprime|'>\<in\>C> such that
      <math|<around*|(|x<rprime|'>,y|)>\<in\>f>. Given that <math|f> is
      injective it follows from <math|<around*|(|x,y|)>,*<around*|(|x<rprime|'>,y|)>\<in\>f>
      that <math|x=x<rprime|'>>, so as <math|x<rprime|'>\<in\>C> it follow
      that <math|x\<in\>C>. Hence <math|f<rsup|-1><around*|(|f<around*|(|C|)>|)>\<subseteq\>C>
      which combined with (1) proves\ 

      <\equation*>
        C=f<rsup|-1><around*|(|f<around*|(|C|)>|)>
      </equation*>

      <item>If <math|y\<in\>f<around*|(|f<rsup|-1><around*|(|D|)>|)>> then
      <math|\<exists\>x\<in\>f<rsup|-1><around*|(|D|)>> such that
      <math|<around*|(|x,y|)>\<in\>f>, hence <math|\<exists\>z\<in\>D> such
      that <math|<around*|(|z,x|)>\<in\>f<rsup|-1>\<Rightarrow\><around*|(|x,z|)>\<in\>f>,
      As <math|f> is a function we have <math|y=z> so that <math|y\<in\>D>.
      Hence\ 

      <\equation>
        <label|eq 2.15.013>f<around*|(|f<rsup|-1><around*|(|D|)>|)>\<subseteq\>D
      </equation>

      If <math|y\<in\>D> then as <math|f> is a surjection there exist a
      <math|x\<in\>A> such that <math|<around*|(|x,y|)>\<in\>f>, hence
      <math|x\<in\>f<rsup|-1><around*|(|D|)>> proving that
      <math|y\<in\>f<around*|(|f<rsup|-1><around*|(|D|)>|)>>. So
      <math|D\<subseteq\>f<around*|(|f<rsup|-1><around*|(|D|)>|)>> which
      together with [eq: <reference|eq 2.15.013>] proves\ 

      <\equation*>
        D=f<around*|(|f<rsup|-1><around*|(|D|)>|)>
      </equation*>
    </enumerate>
  </proof>

  The importance of injectivity is that it allows us to define the inverse of
  a partial function. First we define the inverse graph of the graph of a
  partial function.

  <\definition>
    <label|partial function inverse graph>Let <math|f:A\<rightarrow\>B> be a
    partial function then the <with|font-series|bold|inverse of the graph f>
    noted as <math|f<rsup|-1>> is defined by\ 

    <\equation*>
      f<rsup|-1>=<around*|{|z\<of\>z=<around*|(|z,y|)><text| where
      ><around*|(|y,x|)>\<in\>f|}>
    </equation*>
  </definition>

  <\theorem>
    <label|partial function inverse if injective>Let
    <math|f:A\<rightarrow\>B> be a <with|font-series|bold|injective >partial
    function then <math|f<rsup|-1>:B\<rightarrow\>A> is a partial function
  </theorem>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>f<rsup|-1>> then
    <math|*<around*|(|y,x|)>\<in\>f> which, as
    <math|f\<subseteq\>A\<times\>B>, gives
    <math|<around*|(|y,x|)>\<in\>A\<times\>B>, so
    <math|x\<in\>B\<wedge\>y\<in\>A>, proving
    <math|<around*|(|x,y|)>\<in\>B\<times\>Y>. Hence\ 

    <\equation*>
      f<rsup|-1>\<subseteq\>B\<times\>A
    </equation*>

    Further if <math|<around*|(|x,y|)>\<in\>f<rsup|-1>> and
    <math|<around*|(|x,y<rprime|'>|)>\<in\>f<rsup|-1>> then
    <math|<around*|(|y,x|)>\<in\>f\<wedge\><around*|(|y,x<rprime|'>|)>\<in\>f>
    which, as <math|f> is injectivity proves that <math|y=y<rprime|'>>. So
    all the conditions are satisfied to make
    <math|f<rsup|-1>:B\<rightarrow\>A> a partial function.
  </proof>

  <\note>
    The requirement that <math|f> is injective is needed to make
    <math|f<rsup|-1>> is a partial function. For example assume that
    <math|A=<around*|{|1,2,3|}>>, <math|B=<around*|{|10,20|}>> and
    <math|f=<around*|{|<around*|(|1,10|)>,<around*|(|2,10|)>,<around*|(|3,20|)>|}>>
    then <math|f<rsup|-1>=<around*|{|<around*|(|10,1|)>,<around*|(|10,2|)>,<around*|(|20,3|)>|}>>
    which is not the graph of a partial function.\ 
  </note>

  If <math|f> is a injective function then the above theorem ensures that
  <math|f<rsup|-1>> is a partial function however \ <math|f<rsup|-1>> can be
  a graph of a function if we restrict the source of the inverse function.

  <\theorem>
    <label|function injective inverse is a function>If
    <math|f:A\<rightarrow\>B> is a injective function then
    <math|f<rsup|-1>:f<around*|(|A|)>\<rightarrow\>A> is a function
  </theorem>

  <\proof>
    First if <math|<around*|(|x,y|)>\<in\>f<rsup|-1>> then
    <math|<around*|(|y,x|)>\<in\>f\<subseteq\>A\<times\>B> so that
    <math|y\<in\>A\<wedge\>x\<in\>B>, as <math|<around*|(|y,x|)>\<in\>f> we
    have that <math|x\<in\>f<around*|(|A|)>>, hence
    <math|<around*|(|x,y|)>\<in\>f<around*|(|A|)>\<times\>A>. So
    <math|f<rsup|-1>\<subseteq\>f<around*|(|A|)>\<times\>B>. Further if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<rsup|-1>> then
    <math|<around*|(|y,x|)>,<around*|(|y<rprime|'>,x|)>\<in\>f> which as
    <math|f> is injective proves <math|y=y<rprime|'>>. Hence

    <\equation*>
      f<rsup|-1>:f<around*|(|A|)>\<rightarrow\>A<text| is a partial function>
    </equation*>

    Further if <math|x\<in\>f<around*|(|A|)>> then there exists a
    <math|y\<in\>A> such that <math|<around*|(|y,x|)>\<in\>f>, hence
    <math|<around*|(|x,y|)>\<in\>f<rsup|-1>> so that
    <math|x\<in\>dom<around*|(|f<rsup|-1>|)>>, proving that
    <math|f<around*|(|A|)>\<subseteq\>dom<around*|(|f<rsup|-1>|)>>. Hence\ 

    <\equation*>
      f<rsup|-1>:f<around*|(|A|)>\<rightarrow\>A<text| is a function>
    </equation*>
  </proof>

  From the above theorem it follows that if <math|f<around*|(|A|)>=B> that
  <math|f<rsup|-1>:B\<rightarrow\>A> is a function, that is the idea of a
  bijection.

  <\definition>
    <label|bijection><index|bijection>A function <math|f:A\<rightarrow\>B> is
    a <with|font-series|bold|bijection> if the function is
    <with|font-series|bold|injective> and <with|font-series|bold|surjective>.
  </definition>

  <\definition>
    <label|bijective classes><index|bijective>Two classes <math|A> and
    <math|B> are bijective iff there exists a bijection between <math|A> and
    <math|B>
  </definition>

  <\example>
    <label|function identity map is a bijection>Let <math|A> be a class then
    <math|Id<rsub|A>:A\<rightarrow\>A> [example: <reference|function identity
    function>] is a bijection
  </example>

  <\proof>
    Let <math|<around*|(|x,y|)>\<in\>Id<rsub|A>\<wedge\><around*|(|x<rprime|'>,y|)>\<in\>IdA>
    then <math|\<exists\>z,z<rprime|'>\<in\>A> such that
    <math|<around*|(|x,y|)>=<around*|(|z,z|)>\<wedge\><around*|(|x<rprime|'>,y|)>=<around*|(|z<rprime|'>,z<rprime|'>|)>>.
    So using [theorem: <reference|pair equality of pairs>]
    <math|x=z\<wedge\>y=z\<wedge\>x=z<rprime|'>\<wedge\>y=z<rprime|'>>. Using
    [theorem: <reference|class properties (1)>] repeatedly gives then
    <math|x=x<rprime|'>> proving that\ 

    <\equation*>
      Id<rsub|A><text| is injective>
    </equation*>

    If <math|y\<in\>A> then by definition
    <math|<around*|(|y,y|)>\<in\>Id<rsub|A>> so that
    <math|range<around*|(|Id<rsub|A>|)>\<subseteq\>A>. Using [theorem:
    <reference|function surjection condition>] it follows that

    <\equation*>
      Id<rsub|A><text| is surjective>
    </equation*>
  </proof>

  <\example>
    <label|function trivial bijection>Let <math|I=<around*|{|1|}>> <math|B> a
    class and take <math|f:I\<rightarrow\><around*|{|B|}>> defined by
    <math|f=<around*|{|<around*|(|1,B|)>|}>> is a bijection
  </example>

  <\proof>
    As <math|1\<in\><around*|{|1|}>> and <math|B\<in\><around*|{|B|}>> it
    follows that <math|<around*|(|1,B|)>\<in\><around*|{|1|}>\<times\><around*|{|B|}>>,
    hence <math|f=<around*|{|<around*|(|1,B|)>|}>\<subseteq\><around*|{|1|}>\<times\><around*|{|B|}>>.
    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f=<around*|{|1|}>\<times\><around*|{|B|}>>
    then <math|y=B=y<rprime|'>>, further <math|dom<around*|(|f|)>=<around*|{|1|}>=I>.
    So we conclude that <math|f:<around*|{|1|}>\<rightarrow\><around*|{|B|}>>
    is indeed a function. Further if <math|y\<in\><around*|{|B|}>> then
    <math|y=B> and as <math|<around*|(|1,B|)>\<in\>f> it follows that
    <math|y\<in\>range<around*|(|f|)>> or
    <math|<around*|{|B|}>\<subseteq\>range<around*|(|f|)>>, which by
    [theorem: <reference|function surjection condition>] proves that <math|f>
    is surjective. Finally if <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f=<around*|{|<around*|(|1,B|)>|}>>
    then <math|x=1=x<rprime|'>> proving that
    <math|f:<around*|{|1|}>\<rightarrow\><around*|{|B|}>> is a bijection.
  </proof>

  <\proposition>
    <label|function injectivity to bijection>If <math|f:A\<rightarrow\>B> is
    a injective function then <math|f:A\<rightarrow\>f<around*|(|A|)>> is a
    bijection
  </proposition>

  <\proof>
    As injectivity is a property of the graph of a
    function,<space|1em><math|>the function <math|f:A\<rightarrow\>B> is
    still injective. Further <math|range<around*|(|f|)>\<equallim\><rsub|<text|[theorem:
    <reference|partial functions image/preimage
    properties>]>>f<around*|(|A|)>> which proves surjectivity.
  </proof>

  <\theorem>
    <label|function bijection has a inverse><math|If f:A\<rightarrow\>B> is a
    bijection then <math|f<rsup|-1>:B\<rightarrow\>A> is a function\ 
  </theorem>

  <\proof>
    As <math|f:A\<rightarrow\>B> is injective and surjective we have that
    <math|f<around*|(|A|)>=B> and by [theorem: <reference|function injective
    inverse is a function>] that <math|f<rsup|-1>\<of\>f<around*|(|A|)>\<rightarrow\>B>
    is a function. Hence <math|f<rsup|-1>:B\<rightarrow\>A> is a function.
  </proof>

  <\theorem>
    <label|function bijection f,f-1>If <math|f:A\<rightarrow\>B> is bijective
    then\ 

    <\enumerate>
      <item><math|f\<circ\>f<rsup|-1>=Id<rsub|B>>

      <item><math|f<rsup|-1>\<circ\>f=Id<rsub|A>>
    </enumerate>
  </theorem>

  <\proof>
    \ First <math|f<rsup|-1>:B\<rightarrow\>A> is a function by [theorem:
    <reference|function bijection has a inverse>].\ 

    <\enumerate>
      <item>Let <math|<around*|(|x,y|)>\<in\>f\<circ\>f<rsup|-1>> then
      <math|\<exists\>z> such that <math|<around*|(|x,z|)>\<in\>f<rsup|-1>\<Rightarrow\><around*|(|z,x|)>>
      and <math|<around*|(|z,y|)>\<in\>f>. As <math|f<rsup|-1>> is the graph
      of a function we have that <math|x=y>. Further from
      <math|<around*|(|x,z|)>\<in\>f<rsup|-1>\<subseteq\>B\<times\>A> it
      follow that <math|x\<in\>B>. Hence <math|<around*|(|x,y|)>=<around*|(|x,x|)>\<in\>Id<rsub|B>>,
      proving that\ 

      <\equation>
        <label|eq 2.12.001>f\<circ\>f<rsup|-1>\<subseteq\>Id<rsub|B>
      </equation>

      If <math|<around*|(|x,y|)>\<in\>Id<rsub|B>> then
      <math|\<exists\>z\<in\>B> such that
      <math|<around*|(|x,y|)>=<around*|(|z,z|)>> so that <math|x=y\<in\>B>,
      As <math|B=dom<around*|(|f<rsup|-1>|)>> there exists a <math|u> such
      that <math|<around*|(|y,u|)>\<in\>f<rsup|-1>\<Rightarrow\><around*|(|u,y|)>\<in\>f>
      so that <math|<around*|(|y,y|)>\<in\>f\<circ\>f<rsup|-1>\<Rightarrowlim\><rsub|x=y><around*|(|x,y|)>\<in\>f\<circ\>f<rsup|-1>>.
      So <math|Id<rsub|B>\<subseteq\>f\<circ\>f<rsup|-1>>. Combining this
      with [eq: <reference|eq 2.12.001>] proves that\ 

      <\equation*>
        f\<circ\>f<rsup|-1>=Id<rsub|B>
      </equation*>

      <item>Let <math|<around*|(|x,y|)>\<in\>f<rsup|-1>\<circ\>f> then
      <math|\<exists\>z> such that <math|<around*|(|x,z|)>\<in\>f\<Rightarrow\><around*|(|z,x|)>\<in\>f<rsup|-1>>
      and <math|<around*|(|z,y|)>\<in\>f<rsup|-1>>. As <math|f<rsup|-1>> is
      the graph of a function we have that <math|x=y>. Further from
      <math|<around*|(|x,z|)>\<in\>f\<subseteq\>A\<times\>B> it follows that
      <math|x\<in\>A>. Hence <math|<around*|(|x,y|)>=<around*|(|x,x|)>\<in\>Id<rsub|A>>,
      proving that\ 

      <\equation>
        <label|eq 2.13.001>f<rsup|-1>\<circ\>f\<subseteq\>I<rsub|A>
      </equation>

      If <math|<around*|(|x,y|)>\<in\>Id<rsub|A>> then
      <math|\<exists\>z\<in\>A> such that
      <math|<around*|(|x,y|)>=<around*|(|z,z|)>> so that <math|x=y\<in\>A>,
      As <math|A=dom<around*|(|f|)>> there exists a <math|u> such that
      <math|<around*|(|x,u|)>\<in\>f<rsup|>\<Rightarrow\><around*|(|u,x|)>\<in\>f<rsup|-1>>
      so that <math|<around*|(|x,x|)>\<in\>f<rsup|-1>\<circ\>f\<Rightarrowlim\><rsub|x=y><around*|(|x,y|)>\<in\>f<rsup|-1>\<circ\>f>.
      So <math|Id<rsub|B>\<subseteq\>f<rsup|-1>\<circ\>f>. Combining this
      with [eq: <reference|eq 2.13.001>] proves that\ 

      <\equation*>
        f<rsup|-1>\<circ\>f=Id<rsub|A>
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|function inverse function and f(x)>If <math|f:A\<rightarrow\>B> is
    bijection then\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>A> we have
      <math|<around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>=x>

      <item><math|\<forall\>y\<in\>B> we have
      <math|f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>=y>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>A> then <math|<around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>=<around*|(|<around*|(|f<rsup|-1>|)>\<circ\>f|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      >>Id<rsub|A><around*|(|x|)>=x>

      <item>If <math|y\<in\>B> then <math|f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>\<equallim\><rsub|<text|[theorem:
      >>Id<rsub|B><around*|(|y|)>=y>
    </enumerate>
  </proof>

  <\corollary>
    <label|function bijection condition (2)>Let <math|f:A\<rightarrow\>B> a
    function then the following are equivalent:

    <\enumerate>
      <item><math|f:A\<rightarrow\>B> is a bijection

      <item>There exists a function <math|g:B\<rightarrow\>A> such that
      <math|f\<circ\>g=id<rsub|B>> and <math|g\<circ\>f=Id<rsub|A>>
    </enumerate>
  </corollary>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This follows from [theorem:
      <reference|function bijection f,f-1>] by taking <math|g=f<rsup|-1>>

      <item*|<math|2\<Rightarrow\>1>>Let <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f\<subseteq\>A\<times\>B>,
      as <math|y=dom<around*|(|g|)>> there exists a <math|z> such that
      <math|<around*|(|y,z|)>\<in\>g>, hence
      <math|<around*|(|x,z|)>,<around*|(|x<rprime|'>,z|)>\<in\>g\<circ\>f=Id<rsub|A>>
      so that <math|x=z=x<rprime|'>> proving that\ 

      <\equation*>
        f:A\<rightarrow\>B<text| is injective>
      </equation*>

      Further if <math|y\<in\>B> then <math|<around*|(|y,y|)>\<in\>Id<rsub|B>=f\<circ\>g>
      so there exists a <math|z\<in\>A> such that
      <math|<around*|(|y,z|)>\<in\>g> and <math|<around*|(|z,y|)>\<in\>f>.
      Proving that <math|B\<subseteq\>range<around*|(|f|)>> so by
      [proposition: <reference|function surjection condition>]

      <\equation*>
        f:A\<rightarrow\>B<text| is a surjection>
      </equation*>
    </description>
  </proof>

  The inverse of a bijection is again a bijection

  <\corollary>
    <label|function bijection and inverse>If <math|f:A\<rightarrow\>B> is a
    bijection then <math|f<rsup|-1>:B\<rightarrow\>A> is a bijection\ 
  </corollary>

  <\proof>
    If <math|f:A\<rightarrow\>B> is a bijection then by [theorem:
    <reference|function bijection f,f-1>]
    <math|f\<circ\>f<rsup|-1>=Id<rsub|B>> and
    <math|f<rsup|-1>\<circ\>f=Id<rsub|A>> which by [theorem:
    <reference|function bijection condition (2)>] proves that
    <math|f<rsup|-1>:B\<rightarrow\>A> is a bijection.
  </proof>

  <\proposition>
    <label|function inverse of a bijection is unique>If
    <math|f:A\<rightarrow\>B> is a bijection then we have:

    <\enumerate>
      <item>If <math|g:B\<rightarrow\>A> is such that
      <math|f\<circ\>g=Id<rsub|B>> and <math|g\<circ\>f=Id<rsub|A>> then
      <math|g=f<rsup|-1>>

      <item><math|<around*|(|f<rsup|-1>|)><rsup|-1>=f>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f\<circ\>g=Id<rsub|B>>|<cell|\<Rightarrow\>>|<cell|f<rsup|-1>\<circ\><around*|(|f\<circ\>g|)>=f<rsup|-1>\<circ\>Id<rsub|B>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[proposition:
        <reference|function composition of Id
        function>>>>|<cell|f<rsup|-1>\<circ\><around*|(|f\<circ\>g|)>=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|partial function associativity>]>>>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)>\<circ\>g=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[function:
        <reference|function bijection f,f-1>]>>>|<cell|Id<rsub|B>\<circ\>g=f<rsup|-1>>>|<row|<cell|>|<cell|<math|\<Rightarrowlim\><rsub|<text|[proposition:
        <reference|function composition of Id
        function>>>>>|<cell|g=f<rsup|-1>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\><around*|(|f<rsup|-1>|)><rsup|-1>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|y,x|)>\<in\>f<rsup|-1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\>f>>>>
      </eqnarray*>

      which by the Axiom of Extent [axiom: <reference|axiom of extent>]
      proves\ 

      <\equation*>
        <around*|(|f<rsup|-1>|)><rsup|-1>=f
      </equation*>
    </enumerate>
  </proof>

  Composition preserves injectivity, surjectivity and <math|bijectivity>

  <\theorem>
    <label|function composition injectivity, surjectivity and bijectivity>If
    <math|A,B> and <math|C> are classes then we have

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      injective partial functions then <math|g\<circ\>f:A\<rightarrow\>C> is
      a injective partial function

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      surjective partial functions then <math|g\<circ\>f:A\<rightarrow\>C> is
      a surjective partial function

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      bijective functions then <math|g\<circ\>f:A\<rightarrow\>C> is a
      bijective function

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      bijective functions then <math|<around*|(|g\<circ\>f|)><rsup|-1>=f<rsup|-1>\<circ\>g<rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|(|x,z|)>,<around*|(|x<rprime|'>,z|)>\<in\>g\<circ\>f>
      then <math|\<exists\>u,v> such that

      <\equation*>
        <around*|(|x,u|)>\<in\>f\<wedge\><around*|(|x<rprime|'>,v|)>\<in\>f\<wedge\><around*|(|u,y|)>\<in\>g\<wedge\><around*|(|v,y|)>\<in\>g
      </equation*>

      As <math|g> is injective we have <math|u=v>, but that means from the
      above that <math|<around*|(|x,u|)>\<in\>f\<wedge\><around*|(|x<rprime|'>,u|)>\<in\>f>,
      which as <math|f> is injective proves\ 

      <\equation*>
        x=x<rprime|'>
      </equation*>

      <item>Let <math|z\<in\>C> then as <math|g> is surjective there
      <math|\<exists\>y\<in\>B> such that <math|<around*|(|y,z|)>\<in\>g>. As
      <math|f> is surjective there exists a <math|x\<in\>A> such that
      <math|<around*|(|x,y|)>\<in\>f>. But then
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f> proving that <math|g\<circ\>f>
      is surjective.

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>A> are
      bijections then these two functions are injective and surjective. Using
      (1) and (2) proves that <math|g\<circ\>f:A\<rightarrow\>C> is injective
      and surjective and thus by definition bijective.

      <item>By (3) <math|g\<circ\>f> is a bijection, so by [theorem:
      <reference|function bijection f,f-1>] we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\><around*|(|g\<circ\>f|)>=Id<rsub|A>>|<cell|\<Rightarrowlim\><rsub|<text|[associativity:
        <reference|partial function associativity>]
        >>>|<cell|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\>f=Id<rsub|A>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\>f|)>\<circ\>f<rsup|-1>=Id<rsub|A>\<circ\>f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[proposition:
        <reference|function composition of Id
        function>]>>>|<cell|<around*|(|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\>f|)>\<circ\>f<rsup|-1>=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[associativity:
        <reference|partial function associativity>]
        >>>|<cell|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\><around*|(|f\<circ\>f<rsup|-1>|)>=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>]<math|>>>>|<cell|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\>Id<rsub|B>=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[proposition:
        <reference|function composition of Id
        function>]>>>|<cell|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g=f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>g|)>\<circ\>g<rsup|-1>=f<rsup|-1>\<circ\>g<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[associativity:
        <reference|partial function associativity>]
        >>>|<cell|<around*|(|g\<circ\>f<rsup|-1>|)>\<circ\><around*|(|g\<circ\>g<rsup|-1>|)>=f<rsup|-1>\<circ\>g<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>]<math|>>>>|<cell|<around*|(|g\<circ\>f|)><rsup|-1>\<circ\>Id<rsub|A>=f<rsup|-1>\<circ\>g<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[proposition:
        <reference|function composition of Id
        function>]>>>|<cell|<around*|(|g\<circ\>f|)><rsup|-1>=f<rsup|-1>\<circ\>g<rsup|-1>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  The following is a example of a bijection between a class and the class of
  functions in this set.

  <\theorem>
    <label|function and power>Let <math|A> be a class then there exists a
    bijection between <math|A> and <math|A<rsup|<around*|{|1|}>>>
  </theorem>

  <\proof>
    Given <math|x\<in\>A> define the function
    <math|f<rsub|x>:<around*|{|1|}>\<rightarrow\><around*|{|x|}>> where
    <math|f<rsub|x>=<around*|{|<around*|(|1,x|)>|}>> [see [example:
    <reference|function trivial bijection>] to prove that this is a function
    (even a bijection)]. So <math|f<rsub|x>\<in\><around*|{|x|}><rsup|<around*|{|1|}>>,>
    which as <math|<around*|{|x|}>\<subseteq\>A> proves by [theorem:
    <reference|function B^A and inclusion>] that
    <math|f<rsub|x>\<in\>A<rsup|<around*|{|1|}>>>. Define now
    <math|f=<around*|{|z\|z=<around*|(|x,f<rsub|x>|)><text| where
    >x\<in\>A|}>>. If <math|<around*|(|x,y|)>\<in\>f> we have <math|x\<in\>A>
    and thus <math|y=f<rsub|x>\<in\>A<rsup|<around*|{|1|}>>> hence
    <math|<around*|(|x,y|)>\<in\>A\<times\>A<rsup|<around*|{|1|}>>>. Also if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>A> then
    <math|y=f<rsub|x>> and <math|y<rprime|'>=f<rsub|x>> so that
    <math|y=y<rprime|'>>. Further for every <math|x\<in\>A> we have by the
    definition of <math|f> that <math|<around*|(|x,f<rsub|x>|)>\<in\>f>. So
    we conclude that

    <\equation*>
      f:A\<rightarrow\>A<rsup|<around*|{|1|}>><text| is a function>
    </equation*>

    Assume now that <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f>
    then <math|f<rsub|x>=y=f<rsub|x<rprime|'>>>, so that
    <math|<around*|{|<around*|(|1,x|)>|}>=<around*|{|<around*|(|1,x<rprime|'>|)>|}>>,
    hence <math|<around*|(|1,x|)>=<around*|(|1,x<rprime|'>|)>>, from which it
    follows that <math|x=x<rprime|'>>. this proves that\ 

    <\equation*>
      f:A\<rightarrow\>A<rsup|<around*|{|1|}>><text| is a injective function>
    </equation*>

    If <math|y\<in\>A<rsup|<around*|{|1|}>>> then
    <math|y:<around*|{|1|}>\<rightarrow\>A> is a function, hence
    <math|1\<in\><around*|{|1|}>=dom<around*|(|y|)>>, so there exists a
    <math|z> such that <math|<around*|(|1,z|)>\<in\>y\<subseteq\><around*|{|1|}>\<times\>A>
    proving that <math|z\<in\>A>. Hence\ 

    <\equation>
      <label|eq 2.16.005><around*|{|<around*|(|1,z|)>|}>\<subseteq\>y\<wedge\>z\<in\>A<text|>
    </equation>

    If <math|<around*|(|u,v|)>\<in\>y\<subseteq\><around*|{|1|}>\<times\>A>
    then <math|u=1> so that <math|<around*|(|1,u|)>\<in\>y>, which, as
    <math|<around*|(|1,z|)>\<in\>y> and <math|y> is a function, proves that
    <math|u=z> or <math|<around*|(|u,v|)>=<around*|(|1,z|)>\<in\><around*|{|<around*|(|1,z|)>|}>>.
    <math|>So <math|y\<subseteq\><around*|{|<around*|(|1,z|)>|}>> which
    combined with [eq: <reference|eq 2.16.005>] proves that
    <math|<around*|{|<around*|(|1,z|)>|}>=y>. As
    <math|f<rsub|z>=<around*|{|<around*|(|1,z|)>|}>=y> we have that
    <math|<around*|(|z,y|)>\<in\>f> which proves that\ 

    <\equation*>
      f<text| is a surjection>
    </equation*>
  </proof>

  <\theorem>
    <label|function P(A)=2^A>If <math|A> is a class then there is a bijection
    between <math|\<cal-P\><around*|(|A|)>> and
    <math|<around*|{|0,1|}><rsup|A>>.
  </theorem>

  <\proof>
    Define <math|\<gamma\>:\<cal-P\><around*|(|A|)>\<rightarrow\><around*|{|0,1|}><rsup|A>>
    by <math|\<gamma\>=<around*|{|z\|z=<around*|(|B,\<cal-X\><rsub|A,B>|)><text|
    where >B\<in\>\<cal-P\><around*|(|A|)>|}>> where
    <math|\<cal-X\><rsub|A,B>=<around*|(|B\<times\><around*|{|1|}>|)><big|cup><around*|(|<around*|(|A\\B|)>\<times\><around*|{|0|}>|)>>
    is the graph of the Characteristic function [example: <reference|function
    characteristics function>]. If <math|<around*|(|B,f|)>\<in\>\<gamma\>>
    then \ <math|B\<in\>\<cal-P\><around*|(|A|)>> and
    <math|f=\<cal-X\><rsub|A,B>>, as <math|B\<in\>\<cal-P\><around*|(|A|)>\<Rightarrow\>B\<subseteq\>A>
    it follow using [example: <reference|function characteristics function>]
    that <math|\<cal-X\><rsub|A,B>:A\<rightarrow\><around*|{|0,1|}>> is a
    function. So <math|<around*|(|B,f|)>\<in\><around*|{|0,1|}><rsup|A>>
    giving\ 

    <\equation*>
      \<gamma\>\<subseteq\>\<cal-P\><around*|(|A|)>\<times\><around*|(|<around*|{|0,1|}><rsup|A>|)>
    </equation*>

    If <math|<around*|(|B,f|)>,<around*|(|B,g|)>\<in\>\<gamma\>> then
    <math|f=\<cal-X\><rsub|A,B>> and <math|g=\<cal-X\><rsub|A,B>> so that
    <math|f=g>, also by the definition of <math|\<gamma\>> we have that
    <math|dom<around*|(|\<gamma\>|)>=\<cal-P\><around*|(|A|)>>, hence

    <\equation*>
      \<gamma\>:\<cal-P\><around*|(|A|)>\<rightarrow\><around*|{|0,1|}><rsup|A><text|
      is a function>
    </equation*>

    If <math|<around*|(|B,f|)>,<around*|(|B<rprime|'>,f|)>\<in\>\<gamma\>>
    then <math|\<cal-X\><rsub|A,B>=\<cal-X\><rsub|A,B<rprime|'>>> so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>B>|<cell|\<Leftrightarrow\>>|<cell|\<cal-X\><rsub|A,B><around*|(|x|)>=1>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<cal-X\><rsub|A,B>=\<cal-X\><rsub|A,B<rprime|'>>>>|<cell|\<cal-X\><rsub|A,B<rprime|'>><around*|(|x|)>=1>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B<rprime|'>>>>>
    </eqnarray*>

    proving that <math|B=B<rprime|'>>. Hence\ 

    <\equation*>
      \<gamma\>:\<cal-P\><around*|(|A|)>\<rightarrow\><around*|{|0,1|}><rsup|A><text|
      is injective>
    </equation*>

    Let <math|f\<in\><around*|{|0,1|}><rsup|A>>, define
    <math|B=<around*|{|x\<in\>A\|<around*|(|x,1|)>\<in\>f|}>\<subseteq\>A>,
    then <math|B\<in\>\<cal-P\><around*|(|A|)>>.\ 

    If <math|<around*|(|x,y|)>\<in\>f> then we have for x either:

    <\description>
      <item*|<math|x\<in\>B>>Then <math|<around*|(|x,1|)>\<in\>f> and as
      <math|<around*|(|x,y|)>\<in\>f> we have that <math|y=1> so that
      <math|<around*|(|x,y|)>=<around*|(|x,1|)>\<in\>\<cal-X\><rsub|A,B>>

      <item*|<math|x\<nin\>B>>Then <math|<around*|(|x,0|)>\<in\>f> and as
      <math|<around*|(|x,y|)>\<in\>f> we have that <math|y=0> so that
      <math|<around*|(|x,y|)>=<around*|(|x,0|)>\<in\>\<cal-X\><rsub|A,B>> [as
      <math|x\<in\>A\\B>]
    </description>

    proving that\ 

    <\equation>
      <label|eq 2.17.006>f\<subseteq\>\<cal-X\><rsub|A,B>
    </equation>

    If <math|<around*|(|x,y|)>\<in\>\<cal-X\><rsub|A,B>> then we have for
    <math|x> either:

    <\description>
      <item*|<math|x\<in\>B>>Then as <math|<around*|(|x,1|)>\<in\>\<cal-X\><rsub|A,B>>
      we must have that <math|y=1>, using the definition of <math|B> we have
      also <math|<around*|(|x,1|)>\<in\>f\<Rightarrow\><around*|(|x,y|)>\<in\>f>

      <item*|<math|x\<nin\>B>>Then <math|x\<in\>A\\B> so that
      <math|<around*|(|x,0|)>\<in\>\<cal-X\><rsub|A,B>> hence we must have
      that <math|y=0>. As <math|<around*|(|x,0|)>\<in\>f> [if
      <math|<around*|(|x,1|)>\<in\>f> then <math|x\<in\>B> a contradiction]
      it follows that <math|<around*|(|x,y|)>=<around*|(|x,0|)>\<in\>f>
    </description>

    proving that <math|\<cal-X\><rsub|A,B>\<subseteq\>f>, which combined with
    <reference|eq 2.17.006> gives

    <\equation>
      <label|eq 2.18.006>\<cal-X\><rsub|A,B>=f
    </equation>

    So given <math|f\<in\><around*|{|0,1|}><rsup|A>> we have found a
    <math|B\<in\>\<cal-P\><around*|(|A|)>> such that
    <math|\<cal-X\><rsub|A,B>\<equallim\><rsub|<text|[eq: <reference|eq
    2.18.006>]>>f>, hence <math|<around*|(|B,f|)>\<in\>\<gamma\>> proving
    that\ 

    <\equation*>
      \<gamma\>:\<cal-P\><around*|(|A|)>\<rightarrow\><around*|{|0,1|}><rsup|A><text|
      is a surjective>
    </equation*>
  </proof>

  <subsection|Restriction of a Function/Partial Function>

  Sometimes we only want to work with functions whose graphs satisfies
  certain conditions. It could be that the graph of a function does not
  satisfies these, but that the restriction of this graph to a subclass
  satisfies the conditions. For example, the function
  <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> defined by
  <math|f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1<text| if
  >x\<less\>1>>|<row|<cell|0<text| if >1\<leqslant\>x>>>>>> is not
  continuous, as it is discontinuous at <math|1.> However restricting this
  function to <math|\<bbb-R\>\\<around*|{|1|}>> produces a continuous
  function. \ This is the idea of the next definition\ 

  <\definition>
    <label|function restriction of a graph><index|<math|f<rsub|\|C>>>Let
    <math|f:A\<rightarrow\>B> be a function and <math|C\<subseteq\>A> a
    subclass of <math|A> then the restriction of <math|f> to <math|C> noted
    by <math|f<rsub|\|C>> is defined by

    <\equation*>
      f<rsub|\|C>=<around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>
    </equation*>

    which defines the partial function

    <\equation*>
      f<rsub|\|C>:C\<rightarrow\>B
    </equation*>
  </definition>

  <\proof>
    We must of course proof that <math|f<rsub|\|C>:C\<rightarrow\>B> is
    indeed a partial function. First, if <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>
    then <math|<around*|(|x,y|)>\<in\>f> and <math|x\<in\>C>. As
    <math|f\<subseteq\>A\<times\>B> we have that <math|y\<in\>B> so we have
    <math|<around*|(|x,y|)>\<in\>C\<times\>B> proving

    <\equation*>
      f<rsub|\|C>\<subseteq\>C\<times\>B
    </equation*>

    Second, if <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<rsub|\|C>>
    then <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> so that
    <math|y=y<rprime|'>>. Hence we have that
    <math|f<rsub|\|C>:C\<rightarrow\>B> is a partial function.
  </proof>

  <\theorem>
    <label|function restricted function properties>Let
    <math|f:A\<rightarrow\>B> be a partial function and <math|C\<subseteq\>A>
    a subclass of <math|A> then we have:

    <\enumerate>
      <item><math|dom<around*|(|f<rsub|\|C>|)>=C<big|cap>dom<around*|(|f|)>>

      <item><math|range<around*|(|f<rsub|\|C>|)>=f<around*|(|C|)>>

      <item>If <math|D\<subseteq\>C> then
      <math|f<rsub|\|C><around*|(|D|)>=f<around*|(|D|)>>

      <item>If <math|E\<subseteq\>B> then
      <math|<around*|(|f<rsub|\|C>|)><rsup|-1><around*|(|E|)>=C<big|cap>f<rsup|-1><around*|(|E|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>dom<around*|(|f<rsub|\|C>|)>> then there exists a
      <math|y> such that <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>, hence
      <math|x\<in\>C> and <math|<around*|(|x,y|)>\<in\>f> or <math|x\<in\>C>
      and <math|x\<in\>dom<around*|(|f|)>>, so that
      <math|x\<in\>C<big|cap>dom<around*|(|f|)>>. Hence\ 

      <\equation>
        <label|eq 2.14.001>dom<around*|(|f<rsub|\|C>|)>\<subseteq\>C<big|cap>dom<around*|(|f|)>
      </equation>

      Further if <math|x\<in\>C<big|cap>dom<around*|(|f|)>> then
      <math|x\<in\>C> and <math|x\<in\>dom<around*|(|f|)>>, so there exists a
      <math|y> such that <math|<around*|(|x,y|)>\<in\>f>, hence
      <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>> or
      <math|x\<in\>dom<around*|(|f<rsub|\|C>|)>>. So
      <math|C<big|cap>dom<around*|(|f|)>\<subseteq\>dom<around*|(|f<rsub|\|C>|)>>
      which together with [eq: <reference|eq 2.14.001>] gives\ 

      <\equation*>
        dom<around*|(|f<rsub|\|C>|)>=C<big|cap>dom<around*|(|f|)>
      </equation*>

      <item>If <math|y\<in\>range<around*|(|f<rsub|\|C>|)>> then
      <math|\<exists\>x> such that <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>,
      hence <math|<around*|(|x,y|)>\<in\>f> and <math|x\<in\>C>, so that
      <math|y\<in\>f<around*|(|C|)>>. On the other hand if
      <math|y\<in\>f<around*|(|C|)>> there exists a <math|x\<in\>C> such that
      <math|<around*|(|x,y|)>\<in\>f>, hence
      <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>> so that
      <math|y\<in\>range<around*|(|f<rsub|\|C>|)>>. Hence using the Axiom of
      Extent [axiom: <reference|axiom of extent>] we have\ 

      <\equation*>
        range<around*|(|f<rsub|\|C>|)>=f<around*|(|C|)>
      </equation*>

      <item>If <math|y\<in\>f<rsub|\|C><around*|(|D|)>> then
      <math|\<exists\>x\<in\>D> such that
      <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>, hence
      <math|<around*|(|x,y|)>\<in\>f> so that <math|y\<in\>f<around*|(|D|)>>.
      On the other hand if <math|y\<in\>f<around*|(|D|)>> then
      <math|\<exists\>x\<in\>D> such that <math|<around*|(|x,y|)>\<in\>f>,
      which as <math|x\<in\>D\<subseteq\>C\<Rightarrow\>x\<in\>C> proves that
      <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>, so
      <math|y\<in\>f<rsub|\|C><around*|(|D|)>>. Hence using the Axiom of
      Extent [axiom: <reference|axiom of extent>] we have\ 

      <\equation*>
        f<rsub|\|C><around*|(|D|)>=f<around*|(|D|)>
      </equation*>

      <item>If <math|x\<in\><around*|(|f<rsub|\|C>|)><rsup|-1><around*|(|E|)>>
      then there exist a <math|y\<in\>E> such that
      <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>, hence <math|x\<in\>C> and
      <math|<around*|(|x,y|)>\<in\>f\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|E|)>>,
      so that <math|x\<in\>C<big|cap>f<rsup|-1><around*|(|E|)>>. \ Further if
      <math|x\<in\>C<big|cap>f<rsup|-1><around*|(|E|)>> then <math|x\<in\>C>
      and <math|x\<in\>f<rsup|-1><around*|(|E|)>>, so there exist a
      <math|y\<in\>E> such that <math|<around*|(|x,y|)>\<in\>f\<Rightarrowlim\><rsub|x\<in\>C><around*|(|x,y|)>\<in\>f<rsub|\|C>>,
      hence <math|x\<in\><around*|(|f<rsub|\|C>|)><rsup|-1><around*|(|E|)>>.
      Hence using the Axiom of Extent [axiom: <reference|axiom of extent>] we
      have\ 

      <\equation*>
        <around*|(|f<rsub|\|C>|)><rsup|-1><around*|(|E|)>=C<big|cap>f<rsup|-1><around*|(|E|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|function restriction and domain>Let <math|f:A\<rightarrow\>B> be a
    partial function then <math|f<rsub|\|dom<around*|(|f|)>>=f>
  </theorem>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>f> then by definition
    <math|x\<in\>dom<around*|(|f|)>> hence
    <math|<around*|(|x,y|)>\<in\>f<rsub|\|dom<around*|(|f|)>>>, further if
    <math|<around*|(|x,y|)>\<in\>f<rsub|\|dom<around*|(|f|)>>> then
    <math|<around*|(|x,y|)>\<in\>f> and <math|x\<in\>dom<around*|(|f|)>>, so
    evidently <math|<around*|(|x,y|)>\<in\>f>. Hence using the Axiom of
    Extent [axiom: <reference|axiom of extent>] we have\ 

    <\equation*>
      f<rsub|\|dom<around*|(|f|)>>=f
    </equation*>
  </proof>

  <\theorem>
    <label|function inverse and restriction>Let <math|f:A\<rightarrow\>B> be
    a injective partial function and <math|C\<subseteq\>A> then
    <math|<around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>=<around*|(|f<rsub|\|C>|)><rsup|-1>>
  </theorem>

  <\proof>
    Let <math|<around*|(|x,y|)>\<in\><around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>>
    then <math|x\<in\>f<around*|(|C|)>> and
    <math|<around*|(|x,y|)>\<in\>f<rsup|-1>\<Rightarrow\><around*|(|y,x|)>\<in\>f>,
    as <math|x\<in\>f<around*|(|C|)>> there exists a <math|z\<in\>C> such
    that <math|<around*|(|z,x|)>\<in\>f>. As <math|f> is injective we have
    that <math|z=y>, proving that <math|y\<in\>C>, which as
    <math|<around*|(|y,x|)>\<in\>f> gives
    <math|<around*|(|y,x|)>\<in\>f<rsub|\|C>> so that
    <math|<around*|(|x,y|)>\<in\><around*|(|f<rsub|\|C>|)><rsup|-1>>. Hence\ 

    <\equation>
      <label|eq 2.17.004><around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>\<subseteq\>*<around*|(|f<rsub|\|C>|)><rsup|-1>
    </equation>

    If <math|<around*|(|x,y|)>\<in\><around*|(|f<rsub|\|C>|)><rsup|-1>> then
    <math|<around*|(|y,x|)>\<in\>f<rsub|\|C>> so that <math|y\<in\>C> and
    <math|<around*|(|y,x|)>\<in\>f>. Hence <math|x\<in\>f<around*|(|C|)>> and
    as <math|<around*|(|y,x|)>\<in\>f> gives
    <math|<around*|(|x,y|)>\<in\>f<rsup|-1>> we have
    <math|<around*|(|x,y|)>\<in\><around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>>.
    This proves that <math|<around*|(|f<rsub|\|C>|)><rsup|-1>\<subseteq\><around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>>,
    combing this with [eq: <reference|eq 2.17.004>] gives:

    <\equation*>
      <around*|(|f<rsup|-1>|)><rsub|f<around*|(|C|)>>=<around*|(|f<rsub|\|C>|)><rsup|-1>
    </equation*>
  </proof>

  <\theorem>
    <label|function composition and restriction>Let <math|f:A\<rightarrow\>B>
    and <math|g:B\<rightarrow\>C> be partial functions and
    <math|C\<subseteq\>A> then

    <\equation*>
      <around*|(|g\<circ\>f|)><rsub|\|C>=g<rsub|\|f<around*|(|C|)>>\<circ\>f<rsub|\|C>
    </equation*>
  </theorem>

  <\proof>
    Let <math|<around*|(|x,z|)>\<in\><around*|(|f\<circ\>g|)><rsub|\|C>> then
    <math|<around*|(|x,z|)>\<in\>f\<circ\>g> and <math|x\<in\>C>. Hence
    <math|\<exists\>y> such that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>,
    as <math|x\<in\>C> <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>>. From
    <math|x\<in\>C> and <math|<around*|(|x,y|)>\<in\>f> it follows also that
    <math|y\<in\>f<around*|(|C|)>>, hence as <math|<around*|(|y,z|)>\<in\>g>
    we have that <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|C|)>>>.
    From <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>> and
    <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|C|)>>> it follows that
    <math|<around*|(|x,z|)>\<in\>g<rsub|\|f<around*|(|C|)>>\<circ\>f<rsub|\|C>>
    so that\ 

    <\equation>
      <label|eq 2.17.003><around*|(|g\<circ\>f|)><rsub|\|C>\<subseteq\>g<rsub|\|f<around*|(|C|)>>\<circ\>f<rsub|\|C>
    </equation>

    If <math|<around*|(|x,z|)>\<in\>g<rsub|\|f<around*|(|C|)>>\<circ\>f<rsub|\|C>>
    then there exists a <math|y> such that
    <math|<around*|(|x,y|)>\<in\>f<rsub|\|C>> and
    <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|C|)>>>, so
    <math|x\<in\>C>, <math|<around*|(|x,y|)>\<in\>f>,
    <math|y\<in\>f<around*|(|C|)>> and <math|<around*|(|y,z|)>\<in\>g>. Hence
    <math|x\<in\>C> and <math|<around*|(|x,z|)>\<in\>g\<circ\>f> proving that
    <math|<around*|(|x,z|)>\<in\><around*|(|g\<circ\>f|)><rsub|\|C>.> So
    <math|g<rsub|\|f<around*|(|C|)>>\<circ\>f<rsub|\|C>\<subseteq\><around*|(|g\<circ\>f|)><rsub|\|C>>
    which combined with [eq: <reference|eq 2.17.003>] gives

    <\equation*>
      <around*|(|g\<circ\>f|)><rsub|\|C>=g<rsub|\|f<around*|(|C|)>>\<circ\>g<rsub|\|C>
    </equation*>
  </proof>

  <\theorem>
    <label|function restriction of a function>Let <math|f:A\<rightarrow\>B>
    and <math|C\<subseteq\>A> a subclass of <math|A> then
    <math|f<rsub|\|C>:C\<rightarrow\>B> is a function.
  </theorem>

  <\proof>
    Using [definition: <reference|function restriction of a graph>] we have
    that <math|f<rsub|\|C>:C\<rightarrow\>B> is a partial function, as by
    [theorem: <reference|function restricted function properties>]
    <math|dom<around*|(|f<rsub|\|C>|)>=C<big|cap>dom<around*|(|f|)>\<equallim\><rsub|f<text|
    is a function>>C<big|cap>A\<equallim\><rsub|C\<subseteq\>A>C>, it follows
    that <math|f<rsub|\|C>:C\<rightarrow\>B> is a function.
  </proof>

  The following theorem will be used for manifolds later

  <\theorem>
    Let <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>B> be injections
    then we have\ 

    <\enumerate>
      <item><math|f:A\<rightarrow\>f<around*|(|A|)>> and
      <math|g:C\<rightarrow\>f<around*|(|C|)>> are bijections

      <item><math|dom<around*|(|f\<circ\>g<rsup|-1>|)>=g<around*|(|A<big|cap>C|)>>

      <item><math|f\<circ\>g<rsup|-1>=<around*|(|f\<circ\>g<rsup|-1>|)><rsub|\|g<around*|(|A<big|cap>C|)>><rsup|>=f<rsub|\|A<big|cap>C>\<circ\><around*|(|g<rsup|-1>|)><rsub|\|g<around*|(|A<big|cap>C|)>>=f<rsub|\|<around*|(|A<big|cap>C|)>>\<circ\><around*|(|g<rsub|\|A<big|cap>C>|)><rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from [proposition: <reference|function injectivity
      to bijection>]

      <item>If <math|*z\<in\>dom<around*|(|f\<circ\>g<rsup|-1>|)>> then
      <math|\<exists\>x> such that <math|<around*|(|z,x|)>\<in\>f\<circ\>g<rsup|-1>>,
      hence <math|\<exists\>y> such that <math|<around*|(|z,y|)>\<in\>g<rsup|-1><text|
      and ><around*|(|y,z|)>\<in\>f>, from which it follows that
      <math|<around*|(|y,z|)>\<in\>g> and <math|<around*|(|y,z|)>\<in\>f>. As
      <math|g\<subseteq\>C\<times\>B> and <math|f\<subseteq\>A\<times\>B> it
      follows that <math|y\<in\>A> and <math|y\<in\>C> so that
      <math|y\<in\>A<big|cap>C>, as <math|<around*|(|y,z|)>\<in\>g> we have
      <math|z\<in\>g<around*|(|A<big|cap>C|)>>. This proves\ 

      <\equation>
        <label|eq 2.16.003>dom<around*|(|g\<circ\>f<rsup|-1>|)>\<subseteq\>g<around*|(|A<big|cap>C|)>
      </equation>

      If <math|z\<in\>g<around*|(|A<big|cap>C|)>> then
      <math|\<exists\>y\<in\>A<big|cap>C> such that
      <math|<around*|(|y,z|)>\<in\>g>, hence
      <math|<around*|(|z,y|)>\<in\>g<rsup|-1>>. As <math|f> is a function we
      have that <math|A=dom<around*|(|f|)>>, hence as
      <math|y\<in\>A<big|cap>C\<Rightarrow\>y\<in\>A>, there exists a
      <math|x> such that <math|<around*|(|y,x|)>\<in\>f>. As
      <math|<around*|(|z,y|)>\<in\>g<rsup|-1>> we have
      <math|<around*|(|z,x|)>\<in\>f\<circ\>g<rsup|-1>> proving that
      <math|z\<in\>dom<around*|(|f\<circ\>g<rsup|-1>|)>>. Hence
      <math|g<around*|(|A<big|cap>C|)>\<subseteq\>dom<around*|(|g\<circ\>f<rsup|-1>|)>>
      which combined with [eq: <reference|eq 2.16.003>].

      <\equation*>
        dom<around*|(|g\<circ\>f<rsup|-1>|)>=g<around*|(|A<big|cap>C|)>
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<circ\>g<rsup|-1>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function restriction and
        domain>]>>>|<cell|<around*|(|f\<circ\>g<rsup|-1>|)><rsub|dom<around*|(|f\<circ\>g<rsup|-1>|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)><text|>>>|<cell|<around*|(|f\<circ\>g<rsup|-1>|)><rsub|g<around*|(|A<big|cap>C|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function composition and
        restriction>]>>>|<cell|f<rsub|\|g<rsup|-1><around*|(|g<around*|(|A<big|cap>C|)>|)>>\<circ\><around*|(|g<rsup|-1>|)><rsub|g<around*|(|A<big|cap>C|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is injective and [theorem: <reference|function preimage of
        image>]>>>|<cell|f<rsub|\|A<big|cap>C>\<circ\><around*|(|g<rsup|-1>|)><rsub|\|g<around*|(|A<big|cap>C|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function inverse and restriction>]>>>|<cell|f<rsub|\|A<big|cap>C>\<circ\><around*|(|g<rsub|\|A<big|cap>C>|)><rsup|-1>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Set operations and (Partial) Functions>

  <\theorem>
    <label|function properties (1)>Let <math|f:A\<rightarrow\>B> be a
    function then we have\ 

    <\enumerate>
      <item>If <math|C,D\<subseteq\>A> with <math|C\<subseteq\>D> then
      <math|f<around*|(|C|)>\<subseteq\>f<around*|(|D|)>>

      <item>If <math|C,D\<subseteq\>B> with <math|C\<subseteq\>D> then
      <math|f<rsup|-1><around*|(|C|)>\<subseteq\>f<rsup|-1><around*|(|D|)>>

      <item>If <math|C,D\<subseteq\>B> then
      <math|f<rsup|-1><around*|(|C\\D|)>=f<rsup|-1><around*|(|C|)>\\f<rsup|-1><around*|(|D|)>>

      <item>If <math|D\<subseteq\>B> then
      <math|f<rsup|-1><around*|(|B\\D|)>=A\\f<rsup|-1><around*|(|D|)>>

      <item>If <math|C,D\<subseteq\>A> then
      <math|f<around*|(|C|)>\\f<around*|(|D|)>\<subseteq\>f<around*|(|C\\D|)>>

      <item>If <math|C,D\<subseteq\>A> and <math|f> is
      <with|font-series|bold|injective> then
      <math|f<around*|(|C|)>\\f<around*|(|D|)>=f<around*|(|C\\D|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|y\<in\>f<around*|(|C|)>> then there exist a
      <math|x\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f>, as
      <math|C\<subseteq\>D> we have <math|x\<in\>D> so that
      <math|y\<in\>f<around*|(|D|)>>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|C|)>> there exists a
      <math|y\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f>, as
      <math|C\<subseteq\>D> then <math|y\<in\>D> so that
      <math|x\<in\>f<rsup|-1><around*|(|D|)>>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|C\\D|)>> then
      <math|\<exists\>y\<in\>C\\D> such that <math|<around*|(|x,y|)>\<in\>f>.
      As <math|y\<in\>C\\D> we have that <math|y\<in\>C> and
      <math|y\<nin\>D>, from <math|y\<in\>C> it follows that
      <math|x\<in\>f<rsup|-1><around*|(|C|)>>. Assume that also
      <math|x\<in\>f<rsup|-1><around*|(|D|)>> then
      <math|\<exists\>y<rprime|'>\<in\>D> such that
      <math|<around*|(|x,y<rprime|'>|)>\<in\>f> which, as <math|f> is a
      function and <math|<around*|(|x,y|)>\<in\>f>, proves that
      <math|y=y<rprime|'>>, hence <math|y\<in\>D> contradicting
      <math|y\<nin\>D>, so we must have <math|x\<nin\>f<rsup|-1><around*|(|D|)>>,
      hence <math|x\<in\>f<around*|(|C|)>\\f*<around*|(|D|)>> proving\ 

      <\equation>
        <label|eq 2.17.002>f<rsup|-1><around*|(|C\\D|)>\<subseteq\>f<rsup|-1><around*|(|C|)>\\f<rsup|-1><around*|(|D|)>
      </equation>

      If <math|x\<in\>f<rsup|-1><around*|(|C|)>\\f<rsup|-1><around*|(|D|)>>
      then <math|x\<in\>f<rsup|-1><around*|(|C|)>> and
      <math|x\<nin\>f<rsup|-1><around*|(|D|)>>. As
      <math|x\<in\>f<rsup|-1><around*|(|C|)>> there exists a <math|y\<in\>C>
      such that <math|<around*|(|x,y|)>\<in\>f>. Assume that <math|y\<in\>D>,
      then as <math|<around*|(|x,y|)>\<in\>f> we have
      <math|x\<in\>f<rsup|-1><around*|(|D|)>> contradicting
      <math|x\<nin\>f<rsup|-1><around*|(|D|)>>, so we must have
      <math|y\<nin\>D>. Hence <math|y\<in\>C\\D> which proves that
      <math|x\<in\>f<rsup|-1><around*|(|C\\D|)>> or
      <math|f<rsup|-1><around*|(|C|)>\\f<rsup|-1><around*|(|D|)>\<subseteq\>f<rsup|-1><around*|(|C\\D|)>>.
      Combining this with [eq: <reference|eq 2.17.002>] proves\ 

      <\equation*>
        f<rsup|-1><around*|(|C\\D|)>=f<rsup|-1><around*|(|C|)>\\f<rsup|-1><around*|(|D|)>
      </equation*>

      <item>As <math|D\<subseteq\>B\<subseteq\>B> we have by (3) that

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rsup|-1><around*|(|B\\D|)>>|<cell|=>|<cell|f<rsup|-1><around*|(|B|)>\\f<rsup|-1><around*|(|D|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function image preimage>]>>>|<cell|A\\f<rsup|-1><around*|(|D|)>>>>>
      </eqnarray*>

      <item>If <math|y\<in\>f<around*|(|C|)>\\f<around*|(|D|)>> then
      <math|y\<in\>f<around*|(|C|)>> and <math|y\<nin\>f<around*|(|D|)>>.
      From <math|y\<in\>f<around*|(|C|)>> it follows that
      <math|\<exists\>x\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f>.
      Assume that <math|x\<in\>D> then as <math|<around*|(|x,y|)>\<in\>f> we
      have <math|y\<in\>f<around*|(|D|)>> contradicting
      <math|y\<nin\>f<around*|(|D|)>>, so we must have <math|x\<nin\>D>,
      proving that <math|x\<in\>C\\D>. Hence
      <math|y\<in\>f<around*|(|C\\D|)>> or\ 

      <\equation*>
        f<around*|(|C|)>\\f<around*|(|D|)>\<subseteq\>f<around*|(|C\\D|)>
      </equation*>

      <item>If <math|y\<in\>f<around*|(|C\\D|)>> then
      <math|\<exists\>x\<in\>C\\D> such that <math|x\<in\>C>,
      <math|x\<nin\>D> and <math|<around*|(|x,y|)>\<in\>f>. From
      <math|x\<in\>C> it follows that <math|y\<in\>f<around*|(|C|)>>. Assume
      that <math|y\<in\>f<around*|(|D|)>> then there exist a
      <math|x<rprime|'>\<in\>D> such that
      <math|<around*|(|x<rprime|'>,y|)>\<in\>f>, as <math|f> is
      <with|font-series|bold|injective> we have <math|x=x<rprime|'>> so that
      <math|x\<in\>D> contradicting <math|x\<nin\>D>, hence
      <math|y\<nin\>f<around*|(|D|)>>. This proves that
      <math|y\<in\>f<around*|(|C|)>\\f<around*|(|D|)>> or
      <math|f<around*|(|C\\D|)>\<subseteq\>f<around*|(|C|)>\\f<around*|(|D|)>>
      which combined with (3) gives\ 

      <\equation*>
        f<around*|(|C|)>\\f<around*|(|D|)>=f<around*|(|C\\D|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|function function and intersection and union>If
    <math|f:A\<rightarrow\>B> is a function, <math|E,F\<subseteq\>A> and
    <math|C,D\<subseteq\>B> then we have\ 

    <\enumerate>
      <item><math|f<around*|(|E<big|cup>F|)>=f<around*|(|E|)><big|cup>f<around*|(|F|)>>

      <item><math|f<rsup|-1><around*|(|C<big|cup>D|)>=f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(||)>>

      <item><math|f<around*|(|E<big|cap>F|)>\<subseteq\>f<around*|(|E|)><big|cap>f<around*|(|F|)>>

      <item>If <math|f> is injective then
      <math|f<around*|(|E<big|cap>F|)>=f<around*|(|E|)><big|cap>f<around*|(|F|)>>

      <item><math|f<rsup|-1><around*|(|C<big|cap>D|)>=f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|y\<in\>f<around*|(|E<big|cup>F|)>> then there exist a
      <math|x\<in\>E<big|cup>F> with <math|<around*|(|x,y|)>\<in\>f>. \ So
      <math|x\<in\>E> proving that <math|y\<in\>f<around*|(|E|)>> or
      <math|x\<in\>F> proving <math|y\<in\>f<around*|(|F|)>>. So it follows
      that <math|y\<in\>f<around*|(|E|)><big|cup>f<around*|(|F|)>> or

      <\equation>
        <label|eq 2.18.002>f<around*|(|E<big|cup>F|)>\<subseteq\>f<around*|(|E|)><big|cup>f<around*|(|F|)>
      </equation>

      If <math|y\<in\>f<around*|(|E|)><big|cup>f<around*|(|F|)>> then we have
      the following possibilities

      <\description>
        <item*|<math|y\<in\>f<around*|(|E|)>>>Then <math|\<exists\>x\<in\>E>
        such that <math|<around*|(|x,y|)>\<in\>f>. As by the definition of a
        union <math|x\<in\>E<big|cup>F>, it follows that
        <math|y\<in\>f<around*|(|E<big|cup>F|)>>

        <item*|<math|y\<in\>f<around*|(|F|)>>>Then <math|\<exists\>x\<in\>F>
        such that <math|<around*|(|x,y|)>\<in\>f>. As by the definition of a
        union <math|x\<in\>E<big|cup>F>, it follows that
        <math|y\<in\>f<around*|(|E<big|cup>F|)>>
      </description>

      So in all cases we have <math|y\<in\>f<around*|(|E<big|cup>F|)>>. Hence
      <math|f<around*|(|E|)><big|cup>f<around*|(|F|)>\<subseteq\>f<around*|(|E<big|cup>F|)>>
      which combined with [eq: <reference|eq 2.18.002>] proves\ 

      <\equation*>
        f<around*|(|E<big|cup>F|)>=f<around*|(|E|)><big|cup>f<around*|(|F|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|C<big|cup>D|)>> there exists
      a <math|y\<in\>C<big|cup>D> such that <math|<around*|(|x,y|)>\<in\>f>.
      From <math|y\<in\>C<big|cup>D> we have <math|y\<in\>C> hence
      <math|x\<in\>f<rsup|-1><around*|(|C|)>> or <math|y\<in\>D> hence
      <math|x\<in\>f<rsup|-1><around*|(|D|)>>. So
      <math|x\<in\>f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(|D|)>>
      proving\ 

      <\equation>
        <label|eq 2.19.002>f<rsup|-1><around*|(|C<big|cup>D|)>\<subseteq\>f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(|D|)>
      </equation>

      If <math|x\<in\>f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(|D|)>>
      then we have the following possibilities to consider:

      <\description>
        <item*|<math|x\<in\>f<rsup|-1><around*|(|C|)>>>Then
        <math|\<exists\>y\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f>.
        As by the definition of a union <math|y\<in\>C<big|cup>D> it follows
        that <math|x\<in\>f<rsup|-1><around*|(|C<big|cup>D|)>>

        <item*|<math|x\<in\>f<rsup|-1><around*|(|D|)>>>Then
        <math|\<exists\>y\<in\>D> such that <math|<around*|(|x,y|)>\<in\>f>.
        As by the definition of a union <math|y\<in\>C<big|cup>D> it follows
        that <math|x\<in\>f<rsup|-1><around*|(|C<big|cup>D|)>>
      </description>

      So in all cases we have <math|x\<in\>f<rsup|-1><around*|(|C<big|cup>D|)>>,
      proving <math|f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(|D|)>\<subseteq\>f<rsup|-1><around*|(|C<big|cup>D|)>>
      which combined with [eq <reference|eq 2.19.002>] proves\ 

      <\equation*>
        f<rsup|-1><around*|(|C<big|cup>D|)>=f<rsup|-1><around*|(|C|)><big|cup>f<rsup|-1><around*|(|D|)>
      </equation*>

      <math|>

      <item>If <math|y\<in\>f<around*|(|E<big|cap>F|)>> then
      <math|\<exists\>x\<in\>E<big|cap>F> such that
      <math|<around*|(|x,y|)>\<in\>f>. From <math|x\<in\>E<big|cap>F> we have
      that <math|x\<in\>E> hence <math|y\<in\>f<around*|(|E|)>> and
      <math|x\<in\>F>, so that <math|y\<in\>f<around*|(|F|)>>. Hence
      <math|y\<in\>f<around*|(|E|)><big|cap>f<around*|(|F|)>> or\ 

      <\equation*>
        f<around*|(|E<big|cap>F|)>\<subseteq\>f<around*|(|E|)><big|cap>f<around*|(|F|)>
      </equation*>

      <item>Using (3) we have that\ 

      <\equation>
        <label|eq 2.20.002>f<around*|(|E<big|cap>F|)>\<subseteq\>f<around*|(|E|)><big|cap>f<around*|(|F|)>
      </equation>

      Let <math|y\<in\>f<around*|(|E|)><big|cap>f<around*|(|F|)>> then we
      have <math|y\<in\>f<around*|(|E|)>> so that <math|\<exists\>x\<in\>E>
      such that <math|<around*|(|x,y|)>\<in\>f> and
      <math|y\<in\>f<around*|(|F|)>> so that
      <math|\<exists\>x<rprime|'>\<in\>F> such that
      <math|<around*|(|x<rprime|'>,y|)>\<in\>f>. As <math|f> is injective and
      <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f> we have
      <math|x=x<rprime|'>> so that <math|x\<in\>E<big|cap>F>, proving that
      <math|f<around*|(|E|)><big|cap>f<around*|(|F|)>\<subseteq\>f<around*|(|E<big|cap>F|)>>.
      Combining this result with [eq: <reference|eq 2.20.002>] gives\ 

      <\equation*>
        f<around*|(|E<big|cap>F|)>=f<around*|(|E|)><big|cap>f<around*|(|F|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|C<big|cap>D|)>> then
      <math|\<exists\>y\<in\>C<big|cap>D> such that <math|y\<in\>C>, so that
      <math|x\<in\>f<rsup|-1><around*|(|C|)>> and <math|y\<in\>D>, so that
      <math|x\<in\>f<rsup|-1><around*|(|D|)>>. Hence
      <math|x\<in\>f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>>
      proving\ 

      <\equation>
        <label|eq 2.21.002>f<rsup|-1><around*|(|C<big|cap>D|)>\<subseteq\>f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>
      </equation>

      If <math|x\<in\>f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>>
      then <math|x\<in\>f<rsup|-1><around*|(|C|)>> so there exists a
      <math|y\<in\>C> such that <math|<around*|(|x,y|)>\<in\>f> and
      <math|x\<in\>f<rsup|-1><around*|(|D|)>> so
      <math|\<exists\>y<rprime|'>\<in\>D> such that
      <math|<around*|(|x,y<rprime|'>|)>\<in\>f>. As <math|f> is a function
      <math|y=y<rprime|'>> proving <math|y\<in\>C<big|cap>D>, hence
      <math|x\<in\>f<rsup|-1><around*|(|C<big|cap>D|)>>. So
      <math|f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>\<subseteq\>f<rsup|-1><around*|(|C<big|cap>D|)>>,
      combining this with [eq: <reference|eq 2.21.002>] gives\ 

      <\equation*>
        f<rsup|-1><around*|(|C<big|cap>D|)>=f<rsup|-1><around*|(|C|)><big|cap>f<rsup|-1><around*|(|D|)>
      </equation*>
    </enumerate>
  </proof>

  Up to now we define a function <math|f:A\<rightarrow\>B> by specifying what
  the classes <math|f,A,B> are. However in many cases we have a parameterized
  expression [based on function calls and operators) to define <math|f>. Then
  we have the following\ 

  <\proposition>
    <label|function simple definition>Let <math|A,B> be classes and suppose
    that there exists a parameterized expression <math|F<around*|(|x|)>> that
    calculates a <with|font-series|bold|unique> value for
    <with|font-series|bold|every> <math|x\<in\>A> then we can define the
    function <math|f:A\<rightarrow\>B> by
    <math|f=<around*|{|z\|z=<around*|(|x,F<around*|(|x|)>|)>\<wedge\>x\<in\>A|}>>
  </proposition>

  <\proof>
    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> then there
    exists <math|a,a<rprime|'>\<in\>A> such that
    <math|<around*|(|x,y|)>=<around*|(|a,F<around*|(|a|)>|)>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\><around*|(|a<rprime|'>,F<around*|(|a<rprime|'>|)>|)>>,
    hence <math|x=a\<wedge\>x=a<rprime|'>\<wedge\>y=f<around*|(|a|)>\<wedge\>y<rprime|'>=F<around*|(|a<rprime|'>|)>\<Rightarrow\>a=a<rprime|'>\<wedge\>y<rprime|'>=F<around*|(|a|)>\<wedge\>y=F<around*|(|a|)>>
    proving that <math|y=y<rprime|'>>. So\ 

    <\equation*>
      f:A\<rightarrow\>B<text| is a partial function>
    </equation*>

    If <math|x\<in\>A> then as <math|F<around*|(|x|)>> is defined on every
    <math|x\<in\>A> we have that <math|<around*|(|x,F<around*|(|x|)>|)>\<in\>f>
    so that <math|x\<in\>dom<around*|(|f|)>>. So
    <math|A\<subseteq\>dom<around*|(|f|)>> we have by <reference|function
    condition (1)> that\ 

    <\equation*>
      f:A\<rightarrow\>B <text| is a function>
    </equation*>
  </proof>

  This leads to a notation that we will gradually start to use

  <\notation>
    The function definition <math|f:A\<rightarrow\>B> defined by
    <math|f<around*|(|x|)>=F<around*|(|x|)>> [where <math|E<around*|(|x|)>>
    is a parameterized expression that calculates a unique value for every
    <math|x\<in\>A>] is equivalent with

    <\equation*>
      f=<around*|{|z\|z=<around*|(|x,E*x|)>\<wedge\>x\<in\>E|}>=<around*|{|<around*|(|x,E<around*|(|x|)>|)>\|x\<in\>X|}>
    </equation*>
  </notation>

  <\example>
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is defined by
    <math|f<around*|(|x|)>=cos<around*|(|4\<cdot\>x|)>>
  </example>

  <section|Families>

  <subsection|Family>

  We introduce now the idea of a indexed family which is essential a function
  of a class to another class. It is essential another notation for a
  function where the emphasis is on the objects in a collection and a way of
  indexing these objects and less on the function itself

  <\definition>
    <label|family><index|<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>>A Let
    <math|I,B> be classes then a family\ 

    <\equation*>
      <with|font-series|bold|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    </equation*>

    is actually another way of writing a function

    <\equation*>
      <with|font-series|bold|x:I\<rightarrow\>B>
    </equation*>

    Further <with|font-series|bold|<math|x<rsub|i>>> is another notation for
    <math|<with|font-series|bold|x<around*|(|i|)>>> so that
    <with|font-series|bold|<math|y=x<rsub|i>>> is equivalent with
    <math|<with|font-series|bold|y=x<around*|(|i|)>>> or
    <with|font-series|bold|<math|<around*|(|i,y|)>\<in\>x>>
  </definition>

  So a family is just another notation of a function. We introduce also a new
  notation for the range of this function.

  <\definition>
    <label|family range><index|<math|<around*|{|A<rsub|i>\|i\<in\>I|}>>>If
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a family of objects in B
    [standing for the function <math|x:I\<rightarrow\>B>] then we define
    <math|<around*|{|x<rsub|i>\|i\<in\>I|}>> by\ 

    <\equation*>
      <around*|{|x<rsub|i>\|i\<in\>I|}>=range<around*|(|x|)>
    </equation*>
  </definition>

  The motivation for this definition is the following theorem

  <\theorem>
    <label|family range (1)>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family of objects in <math|B> then\ 

    <\equation*>
      x\<in\><around*|{|x<rsub|i>\|i\<in\>I|}>\<Leftrightarrow\>\<exists\>i\<in\>I<text|
      such that >x=x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is
    equivalent with <math|x:I\<rightarrow\>B> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|z\<in\><around*|{|x<rsub|i>\|i\<in\>I|}>>|<cell|\<Leftrightarrowlim\><rsub|define>>|<cell|z\<in\>range<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i
      with <around*|(|i,z|)>\<in\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|f\<subseteq\>I\<times\>B>>|<cell|\<exists\>i<text|
      with <math|i\<in\>I\<wedge\><around*|(|i,z|)>\<in\>x>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      with ><around*|(|i,z|)>\<in\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|definition>>|<cell|\<exists\>i\<in\>I<text|
      with >z=x<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|family set>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family such that <math|I> and <math|B> are sets then
    <math|<around*|{|x<rsub|i>\|i\<in\>I|}>> is a set
  </theorem>

  <\proof>
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is actually
    the function <math|x:I\<rightarrow\>B> where
    <math|range<around*|(|x|)>=<around*|{|x<rsub|i>\|i\<in\>I|}>>. As
    <math|I>and <math|B> are sets, it follows from [theorem:
    <reference|partial function set domain range>] that
    <math|range<around*|(|x|)>> is a set, hence
    <math|<around*|{|x<rsub|i>\|i\<in\>I|}>> is a set.
  </proof>

  Composition of functions can also also be represented via the family
  notation

  <\definition>
    If you have a function <math|<with|font-series|bold|f:I\<rightarrow\>J>>
    and a family <math|<with|font-series|bold|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>><with|font-series|bold|\<subseteq\>A>>
    [associated with the function <math|<with|font-series|bold|x:J\<rightarrow\>A>>]
    then\ 

    <\equation*>
      <with|font-series|bold|<around*|{|z<rsub|f<around*|(|i|)>>|}><rsub|i\<in\>I>>
    </equation*>

    is a notation for the function

    <\equation*>
      <with|font-series|bold|x\<circ\>f:I\<rightarrow\>A>
    </equation*>
  </definition>

  Up to now we consider a family as a indexed collection of objects. What is
  actually a object, in set theory it is a class which can be either a set or
  a proper class. A class is a collection so we can talk about the union of
  these collection. The convention is then to use upper case instead of lower
  case. If we want to deal with the union and intersection of the objects
  [considered as collections] in the family we use also a different notation.

  <\notation>
    <label|family union (1)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family of objects in <math|B> [standing for the function
    <math|A:I\<rightarrow\>B>] then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>>
    is defined by\ 

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><around*|{|range<around*|(|A|)>|}><text|
      [definition: <reference|class union>]>
    </equation*>
  </notation>

  <\definition>
    A family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is
    <with|font-series|bold|pairwise disjoint> iff <math|\<forall\>i,j\<in\>I>
    with <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>.
  </definition>

  <\notation>
    If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is pairwise
    disjoint and we want to indicate this fact when we write the union of the
    family then we use the notation <math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>>.
    So <math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>> is actually the same as
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>>, but also relating the
    information that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is
    pairwise disjoint.
  </notation>

  Using this new notation we have the following characterization of the union

  <\theorem>
    <label|family union (2)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family of objects in <math|B> then

    <\equation*>
      x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>\<Leftrightarrow\>\<exists\>i\<in\>I<text|
      such that >x\<in\>A<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is actually
    the function <math|A:I\<rightarrow\>B> where
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup>range<around*|(|A|)>>.
    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>|<cell|\<Leftrightarrowlim\><rsub|<text|definition>>>|<cell|x\<in\><big|cup>range<around*|(|A|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[definition:
      <reference|class union>]>>>|<cell|\<exists\>y\<in\>range<around*|(|A|)><text|
      such that >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i
      <text|such that ><around*|(|i,y|)>\<in\>A<text| and
      >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|A\<subseteq\>I\<times\>B>>|<cell|\<exists\>i\<in\>I<text|
      such that ><around*|(|x,y|)>\<in\>A<infix-and>x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      such that <math|y=A<rsub|i><text| and
      <math|x\<in\>y>>>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      such that <math|x\<in\>A<rsub|i>>>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|family union of family set and surjections>If
    <math|<around*|{|A<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>B> is a family
    and <math|f:I\<rightarrow\>J> is a surjection then\ 

    <\equation*>
      <big|cup><rsub|j\<in\>J>A<rsub|j>=<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>
    </equation*>
  </corollary>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\>J>A<rsub|j>> then by [theorem:
    <reference|family union (2)>] there exist a <math|j\<in\>J> such that
    <math|x\<in\>A<rsub|j>=A<around*|(|j|)>>. As <math|f> is surjective we
    have by [theorem: <reference|function injectivity, surjectivity>] that
    there exist a <math|i\<in\>I> such that <math|j=f<around*|(|i|)>>. Hence
    <math|x\<in\>A<around*|(|f<around*|(|i|)>|)>=<around*|(|A\<circ\>f|)><around*|(|i|)>>.
    So by [theorem: <reference|family union (2)>] and the definiton of
    <math|<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>> we have
    <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>>. Hence\ 

    <\equation>
      <label|eq 2.29.012><big|cup><rsub|j\<in\>J>A<rsub|j>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>
    </equation>

    If <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>> then
    there exist a <math|i\<in\>I> such that
    <math|x\<in\><around*|(|A\<circ\>f|)><around*|(|i|)>>, which, as using
    [theorem: <reference|partial function domain range composition>]
    \ <math|<around*|(|A\<circ\>f|)><around*|(|i|)>\<in\>range<around*|(|A|)>>,
    means that there exists a <math|j\<in\>J> such that
    <math|A<rsub|j>=<around*|(|A\<circ\>f|)><around*|(|i|)>>. Hence
    <math|x\<in\>A<rsub|j>> proving by [theorem: <reference|family union
    (2)>] that <math|x\<in\><big|cup><rsub|j\<in\>J>A<rsub|j>>. So
    <math|<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>\<subseteq\><big|cup><rsub|j\<in\>J>A<rsub|j>>
    which combined with [eq: <reference|eq 2.29.012>] gives\ 

    <\equation*>
      <big|cup><rsub|j\<in\>J>A<rsub|j>=<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|family intersection of sets>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is a family of
    objects in <math|B> where <math|I> and <math|B> is a set then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is a set.
  </theorem>

  <\proof>
    As <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is another
    way of saying <math|A:I\<rightarrow\>B> and <math|I> and <math|B> are
    sets, it follows from [theorem: <reference|partial function set domain
    range>] that <math|range<around*|(|A|)>> is a set. Using the Axiom of
    Union [axiom: <reference|axiom of union>]
    <math|<big|cup>range<around*|(|A|)>> is a set, so by definition
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>>. is a set.
  </proof>

  <\example>
    <label|family union of a empty set>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>B>
    be the family defined by <math|A=\<varnothing\>> [the empty function
    <math|\<varnothing\>:\<varnothing\>\<rightarrow\>B> [see example:
    <reference|function empty function>[] then
    <math|<big|cup><rsub|i\<in\>\<varnothing\>>A<rsub|i>=\<varnothing\>>
  </example>

  <\proof>
    Let <math|y\<in\>range<around*|(|A|)>=range<around*|(|\<varnothing\>|)>>
    then <math|x> such that <math|<around*|(|x,y|)>\<in\>\<varnothing\>>, a
    contradiction. Hence <math|range<around*|(|A|)>=\<varnothing\>>. So

    <\equation*>
      <big|cup><rsub|i\<in\>\<varnothing\>>A=<big|cup>range<around*|(|A|)>=<big|cup>\<varnothing\>\<equallim\><rsub|<text|<reference|class
      trivial union intersection>>>\<varnothing\>
    </equation*>
  </proof>

  <\definition>
    <label|family intersection(1)><index|<math|<big|cap><rsub|i\<in\>I>A<rsub|i>>>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is a family of
    objects in <math|B> [standing for the function <math|A:I\<rightarrow\>B>]
    then <math|<big|cap><rsub|i\<in\>I>A<rsub|i>> is defined by\ 

    <\equation*>
      <big|cap><rsub|i\<in\>I>A<rsub|i>=<big|cap>range<around*|(|A|)>
      <text|[definition: <reference|class intersection>]>
    </equation*>
  </definition>

  <\theorem>
    <label|family intersection (2)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    then <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>\<Leftrightarrow\>\<forall\>i\<in\>I<text|
    we have >x\<in\>A<rsub|i>>
  </theorem>

  <\proof>
    \ <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is actually
    the function <math|A:I\<rightarrow\>B> where
    <math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<big|cap>range<around*|(|A|)>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>|<cell|\<Leftrightarrowlim\><rsub|<text|definition>>>|<cell|x\<in\><big|cap>range<around*|(|A|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[definition:
      <reference|class intersection>]>>>|<cell|\<forall\>y\<in\>range<around*|(|A|)><text|
      we have >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|y\<in\>range<around*|(|A|)>\<Leftrightarrow\>\<exists\>i
      <text| with ><around*|(|i,y|)>\<in\>A>>|<cell|\<forall\>i\<in\>I<text|
      >with <around*|(|i,y|)>\<in\>A<text| we have
      >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
      with >y=A<rsub|i><text| we have >x\<in\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
      we have >x\<in\>A<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|family intersection is a set>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is a family of
    objects in <math|B> such that <math|I\<neq\>\<varnothing\>> then
    <math|<big|cap><rsub|i\<in\>I>A<rsub|i>> is a set.
  </theorem>

  <\proof>
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is actually
    the function <math|A:I\<rightarrow\>B> where
    <math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<big|cap>range<around*|(|A|)>>.
    As <math|I\<neq\>\<varnothing\>> there exists a <math|i\<in\>I>. Given
    that <math|A> is a function it follows that <math|dom<around*|(|A|)>=I>,
    so there exists a <math|y> such that <math|<around*|(|i,y|)>\<in\>A> or
    <math|y\<in\>range<around*|(|A|)>>. So
    <math|\<varnothing\>\<neq\>range<around*|(|A|)> > which by [theorem:
    <reference|class intersection>] proves that
    <math|<big|cap>range<around*|(|A|)>> is a set, hence
    <math|<big|cap><rsub|i\<in\>I>A<rsub|i>> is a set.
  </proof>

  <\example>
    <label|family trivial>Let <math|I=<around*|{|1|}>>, <math|B> a class and
    take <math|A:I\<rightarrow\><around*|{|B|}>> defined by
    <math|A=<around*|{|<around*|(|1,B|)>|}>>, defining the family
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\><around*|{|B|}>>
    where <math|A<rsub|1>=B>. For this family we have
    <math|<big|cap><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=B> and
    <math|<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=B>
  </example>

  <\proof>
    Using [example: <reference|function trivial bijection>] it follows that
    <math|A:I\<rightarrow\><around*|{|B|}>> is bijection, hence a function,
    so that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\><around*|{|B|}>>
    is a well defined family. Further as <math|A> is a bijection we have that

    <\equation*>
      range<around*|(|A|)>=<around*|{|B|}>
    </equation*>

    Finally

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=<big|cup>range<around*|(|A|)>=<big|cup><around*|{|B|}>\<equallim\><rsub|<text|[example:
      <reference|class trivial union intersection>]>>A
    </equation*>

    and

    <\equation*>
      <big|cap><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=<big|cap>range<around*|(|A|)>=<big|cap><around*|{|B|}>\<equallim\><rsub|<text|[example:
      <reference|class trivial union intersection>]>>A
    </equation*>
  </proof>

  <\example>
    <label|family union{A,B}>Let <math|C,D> classes,
    <math|I=<around*|{|0,1|}>> and take <math|A:I\<rightarrow\><around*|{|C,D|}>>
    defined by <math|A=<around*|{|<around*|(|0,C|)>,<around*|(|1,D|)>|}>>
    [see example: <reference|function between {0,1} and {A,B}>], defining the
    family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,1|}>>\<subseteq\><around*|{|C,D|}>>
    where <math|A<rsub|0>=C> and <math|A<rsub|1>=D>. For this family we have
    <math|<big|cup><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=C<big|cup>D> and
    <math|<big|cap><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=C<big|cap>D>.
  </example>

  <\proof>
    \ If <math|y\<in\>range<around*|(|A|)>> then <math|\<exists\>x> such that
    <math|<around*|(|x,y|)>\<in\>A=<around*|{|<around*|(|0,C|)>,<around*|(|1,D|)>|}>>,
    so that <math|<around*|(|x,y|)>=<around*|(|0,C|)>\<Rightarrow\>y=C> or
    <math|<around*|(|x,y|)>=<around*|(|1,D|)>\<Rightarrow\>y=D>, proving that
    <math|x\<in\><around*|{|C,D|}>>. Further if
    <math|y\<in\><around*|{|C,D|}>> then <math|y=C\<Rightarrow\><around*|(|0,C|)>\<in\>A\<Rightarrow\>y\<in\>range<around*|(|A|)>>
    or <math|y=D\<Rightarrow\><around*|(|1,D|)>\<in\>A\<Rightarrow\>y\<in\>range<around*|(|A|)>>.
    So we have\ 

    <\equation*>
      range<around*|(|A|)>=<around*|{|C,D|}>
    </equation*>

    Finally

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=<big|cup>range<around*|(|A|)>\<equallim\><big|cup><around*|{|C,D|}>\<equallim\><rsub|<text|[example:
      <reference|class union{A,B}>]]>>C<big|cup>D
    </equation*>

    and\ 

    <\equation*>
      <big|cap><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=<big|cap>range<around*|(|A|)>\<equallim\><big|cap><around*|{|C,D|}>\<equallim\><rsub|<text|[example:
      <reference|class union{A,B}>]]>>C<big|cap>D
    </equation*>

    \;
  </proof>

  <subsection|Properties of the union and intersection of families>

  To save space, from now on we use [theorem: <reference|family intersection
  of sets>] and [theorem: <reference|family union (2)>] about union and
  intersection of families without explicit referring to these theorems.

  <\theorem>
    <label|family properties (1)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family then <math|>we have:

    <\enumerate>
      <item><math|\<forall\>i\<in\>I> we have
      <math|A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>

      <item><math|\<forall\>i\<in\>I> we have
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\>A<rsub|i>>

      <item>If <math|\<forall\>i\<in\>I> we have that
      <math|A<rsub|i>\<subseteq\>C> then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\>C>

      <item>If <math|\<forall\>i\<in\>I> we have
      <math|C\<subseteq\>A<rsub|i>> then <math|C\<subseteq\><big|cap><rsub|i\<in\>I>A<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|i\<in\>I> and assume that <math|x\<in\>A<rsub|i>> then
      <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, so
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>, proving that
      <math|A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.

      <item>Let <math|i\<in\>I> then if <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>
      we have <math|\<forall\>j\<in\>I> that
      <math|x\<in\>A<rsub|j>\<Rightarrowlim\><rsub|i\<in\>I>x\<in\>A<rsub|i>>,
      proving that <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\>A<rsub|i>>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\>I\<vdash\>x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|A<rsub|i>\<subseteq\>C>>|<cell|x\<in\>C>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\>C>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>C>|<cell|\<Rightarrow\>>|<cell|\<forall\>i\<in\>I\<vDash\>x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|C\<subseteq\><big|cap><rsub|i\<in\>I>A<rsub|i>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|family properties (2)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family then\ 

    <\enumerate>
      <item>If <math|J\<subseteq\>I> then\ 

      <\enumerate>
        <item><math|<big|cup><rsub|i\<in\>J>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>

        <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>J>A<rsub|i>>
      </enumerate>

      <item>If <math|I=J<big|cup>K> then\ 

      <\enumerate>
        <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>>

        <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\>J>A<rsub|i>|)><big|cap><around*|(|<big|cap><rsub|i\<in\>K>A<rsub|i>|)>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>If <math|x\<in\><big|cup><rsub|i\<in\>J>A<rsub|i>> then
        <math|\<exists\>i\<in\>J> such that <math|x\<in\>A<rsub|i>>, as
        <math|J\<subseteq\>I> we have \ <math|i\<in\>I> with
        <math|x\<in\>A<rsub|i>>, so that <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>.

        <item>If <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> then
        <math|\<forall\>i\<in\>I> we have <math|x\<in\>A<rsub|i>>, as
        <math|J\<subseteq\>I> we have also <math|\<forall\>i\<in\>J> that
        <math|x\<in\>A<rsub|i>>, hence <math|x\<in\><big|cap><rsub|i\<in\>J>A<rsub|i>>.
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>As by [theorem: <reference|class intersection, union,
        inclusion>] <math|J,K\<subseteq\>I> we have using (1) that
        <math|<big|cup><rsub|i\<in\>J>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
        and <math|<big|cup><rsub|i\<in\>K>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.
        Using [theorem: <reference|class intersection, union, inclusion> it
        follows that\ 

        <\equation>
          <label|eq 2.25.004><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>
        </equation>

        If <math|x\<in\><big|cup><rsub|i\<in\>I>A> then
        <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, as
        <math|I=J<big|cup>K> we have <math|i\<in\>J\<Rightarrow\>x\<in\><big|cup><rsub|i\<in\>J>A<rsub|i>>
        or <math|i\<in\>K\<Rightarrow\>x\<in\><big|cup><rsub|i\<in\>K>A<rsub|i>>,
        which proves that <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>>.
        Hence

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>
        </equation*>

        which combined with [eq: <reference|eq 2.25.004>] proves\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>
        </equation*>

        <item>As by [theorem: <reference|class intersection, union,
        inclusion>] <math|J,K\<subseteq\>I> we have using (1) that
        <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>J>A<rsub|i>>
        and <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>K>A<rsub|i>>.
        Using [theorem: <reference|class intersection, union, inclusion>] it
        follows that

        <\equation>
          <label|eq 2.26.004><big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><around*|(|<big|cap><rsub|i\<in\>J>A<rsub|i>|)><big|cap><around*|(|<big|cap><rsub|i\<in\>K>A<rsub|i>|)>
        </equation>

        If <math|x\<in\><around*|(|<big|cap><rsub|i\<in\>J>A|)><big|cap><around*|(|<big|cap><rsub|i\<in\>K>A|)>>
        then <math|x\<in\><big|cap><rsub|i\<in\>J>A<rsub|i>> and
        <math|x\<in\><big|cap><rsub|i\<in\>K>A<rsub|i>>. So
        <math|\<forall\>i\<in\>J> we have <math|x\<in\>A<rsub|i>> and
        <math|\<forall\>i\<in\>K> we have <math|x\<in\>A<rsub|i>>. Hence as
        <math|\<forall\>i\<in\>I> we have
        <math|i\<in\>J\<Rightarrow\>x\<in\>A<rsub|i>> or
        <math|i\<in\>K\<Rightarrow\>x\<in\>A<rsub|i>> it follows that
        <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>. So
        <math|><math|<around*|(|<big|cap><rsub|i\<in\>J>A|)><big|cap><around*|(|<big|cap><rsub|i\<in\>K>A|)>\<subseteq\><big|cap><rsub|i\<in\>I>A<rsub|i>>
        which combined with [eq: <reference|eq 2.26.004>] proves\ 

        <\equation*>
          <big|cap><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\>J>A<rsub|i>|)><big|cap><around*|(|<big|cap><rsub|i\<in\>K>A<rsub|i>|)>
        </equation*>
      </enumerate>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|family union intersection and inclusion>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>C> and
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>D> be two
    families such that <math|\<forall\>i\<in\>I> we have
    <math|A<rsub|i>\<subseteq\>B<rsub|i>> then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i>>

      <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>I>B<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
      <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>\<Rightarrowlim\><rsub|A<rsub|i>\<subseteq\>B<rsub|i>>x\<in\>B<rsub|i>>,
      hence <math|x\<in\><big|cup><rsub|i\<in\>I>B<rsub|i>>

      <item>If <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have <math|x\<in\>A<rsub|i>\<Rightarrowlim\><rsub|A<rsub|i>\<subseteq\>B<rsub|i>>x\<in\>B<rsub|i>>
      proving <math|x\<in\><big|cap><rsub|i\<in\>I>B<rsub|i>>
    </enumerate>
  </proof>

  We have also the distributive laws for union and intersection [theorem:
  <reference|class class commutative,idempotent,associative,distributivity>]\ 

  <\theorem>
    <label|family distributivity><dueto|Distributivity>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> be a family
    and <math|C> a class then\ 

    <\enumerate>
      <item><math|C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>>

      <item><math|C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>>

      <item><math|C<big|cap><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>>

      <item><math|C<big|cup><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>
      then <math|x\<in\>C> and <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>\<Rightarrow\>\<exists\>i\<in\>I<text|
      such that >x\<in\>A<rsub|i>>. Hence <math|x\<in\>C<big|cap>A<rsub|i>>,
      proving by [theorem: <reference|family properties (1)>] that
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>. So\ 

      <\equation>
        <label|eq 2.27.004>C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>
      </equation>

      If <math|x\<in\><big|cup><rsub|i\<in\>><around*|(|C<big|cap>A<rsub|i>|)>>
      then there exist a <math|i\<in\>I> such that <math|x\<in\>C> and
      <math|x\<in\>A<rsub|i>\<Rightarrow\>x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>,
      so <math|x\<in\>C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>,
      proving that <math|<big|cup><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>\<subseteq\>C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>.
      Combining this with [eq: <reference|eq 2.27.004>] proves\ 

      <\equation*>
        C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>
      </equation*>

      <item>If <math|x\<in\>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
      then we have the following cases to consider:

      <\description>
        <item*|<math|x\<in\>C>>then <math|\<forall\>i\<in\>I> we have
        <math|x\<in\>C<big|cup>A<rsub|i>> hence
        <math|x\<in\><big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>>

        <item*|<math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>>then
        <math|\<forall\>i\<in\>I> we have <math|x\<in\>A<rsub|i>> hence
        <math|x\<in\><big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>>
      </description>

      which proves that\ 

      <\equation>
        <label|eq 2.28.004>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<subseteq\><big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>
      </equation>

      If <math|x\<in\><big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>>
      then we have two cases to consider:

      <\description>
        <item*|<math|x\<in\>C>>then <math|x\<in\>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>

        <item*|<math|x\<nin\>C>>then, as <math|\<forall\>i\<in\>I> we have
        <math|x\<in\>C<big|cup>A<rsub|i>\<Rightarrowlim\><rsub|x\<nin\>C>x\<in\>A<rsub|i>>,
        it follows that <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> hence
        <math|x\<in\>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
      </description>

      In all cases we have <math|x\<in\>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
      proving that <math|<big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>\<subseteq\>C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>,
      combining this with [eq: <reference|eq 2.28.004>] gives\ 

      <\equation*>
        C<big|cup><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<subseteq\><big|cap><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>
      </equation*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>C<big|cap><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>C\<wedge\>\<forall\>i\<in\>I<text|
        we have >x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have >x\<in\>C<big|cap>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>>>>>
      </eqnarray*>

      Proving\ 

      <\equation*>
        C<big|cap><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I><around*|(|C<big|cap>A<rsub|i>|)>
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>C<big|cup><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>C\<vee\>x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>C\<vee\>\<exists\>i\<in\>I<text|
        with >x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        with ><around*|(|x\<in\>C\<vee\>x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        we have >x\<in\>C<big|cup>A<rsub|i>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        C<big|cup><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|C<big|cup>A<rsub|i>|)>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|family union of union of two families>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>C> and
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>D> be two
    families then

    <\enumerate>
      <item><math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>>

      <item><math|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First as <math|\<forall\>i\<in\>I> we have by [theorem:
      <reference|class intersection, union, inclusion>] that
      <math|A<rsub|i>\<subseteq\>A<rsub|i><big|cup>B<rsub|i>> and
      <math|B<rsub|i>\<subseteq\>A<rsub|i><big|cup>B<rsub|i>> so it follows
      using \ [theorem: <reference|family union intersection and inclusion>]
      that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>>
      and <math|<big|cup><rsub|i\<in\>I>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>>.
      Applying then [theorem: <reference|class intersection, union,
      inclusion>] gives\ 

      <\equation>
        <label|eq 2.31.010><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>
      </equation>

      If now <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i><big|cup>B<rsub|i>>
      then <math|\<exists\>i\<in\>I> such that
      <math|x\<in\>A<rsub|i><big|cup>B<rsub|i>>, then we have
      <math|x\<in\>A<rsub|i>\<Rightarrow\>x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      or <math|x\<in\>B<rsub|i>\<Rightarrow\>x\<in\><big|cup><rsub|i\<in\>I>B<rsub|i>>.
      So <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>>
      proving that <math|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>>
      which combined with <reference|eq 2.31.010> gives\ 

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cup>B<rsub|i>|)>
      </equation*>

      <item> As <math|\<forall\>i\<in\>I> we have by [theorem:
      <reference|class intersection, union, inclusion>] that
      <math|A<rsub|i><big|cap>B<rsub|i>\<subseteq\>A<rsub|i>> and
      <math|A<rsub|i><big|cap>B<rsub|i>\<subseteq\>A<rsub|i>>,
      <math|B<rsub|i>\<subseteq\>A<rsub|i><big|cup>B<rsub|i>> it follows
      using \ [theorem: <reference|family union intersection and inclusion>]
      that <math|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      and <math|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i>>.
      Using then [theorem: <reference|class intersection, union, inclusion>]
      we have\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|>|<cell|>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  We have also a variant of the deMorgan's laws [theorem: <reference|class de
  Morgan's law>]

  <\theorem>
    <label|family de Morgan><dueto|deMorgan's Law>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> be a family
    then we have\ 

    <\enumerate>
      <item><math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>=<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>>

      <item><math|<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>>

      <item>If <math|C> is a class then <math|C\\<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>\\C|)>>

      <item>If <math|C> is a class then <math|C\<setminus\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|C\\A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>>|<cell|\<Leftrightarrow\>>|<cell|x\<nin\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|\<exists\>i\<in\>I<text|
        with >x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have >\<neg\><around*|(|x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have >x\<nin\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have >x\<in\><around*|(|A<rsub|i>|)><rsup|c>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>=<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>
      </equation*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>>|<cell|\<Leftrightarrow\>>|<cell|x\<nin\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|x\<in\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|\<forall\>i\<in\>I<text|
        we have >x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        we have >\<neg\><around*|(|x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        we have >x\<nin\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        we have >x\<in\><around*|(|A<rsub|i>|)><rsup|c>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>
      </equation*>

      <item> We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|C\\<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|C<big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|C<big|cap><around*|(|<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|C<big|cap><around*|(|A<rsub|i>|)><rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|C\\A<rsub|i>|)>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|C\\<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|C<big|cap><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|C<big|cap><around*|(|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|cup><rsub|i\<in\>I><around*|(|C<big|cap><around*|(|A<rsub|i>|)><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>I><around*|(|C\\A<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|family properties (3)>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family and <math|A> a class then we have\ 

    <\enumerate>
      <item><math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\\A=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>\\A|)>>

      <item><math|<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\\A=<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>\\A|)>>

      <item><math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>\<times\>A|)>>

      <item><math|A\<times\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I><around*|(|A\<times\>A<rsub|i>|)>>

      <item><math|<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A=<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>\<times\>A|)>>

      <item><math|A\<times\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I><around*|(|A\<times\>A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\\A>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cap>A<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|A<rsup|c><big|cap><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|cup><rsub|i\<in\>I><around*|(|A<rsup|c><big|cap>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>A<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>\\A|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\\A>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><big|cap>A<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|A<rsup|c><big|cap><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|A<rsup|c><big|cap>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>A<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>\\A|)>>>>>
      </eqnarray*>

      <item> \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A\<wedge\>\<exists\>i\<in\>I<text|
        with >x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I
        with <around*|(|x\<in\>A<rsub|i>\<wedge\>y\<in\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        with ><around*|(|x,y|)>\<in\>A<rsub|i>\<times\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>\<times\>A|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\>A\<times\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>\<exists\>i\<in\>I<text|
        with >y\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I
        with <around*|(|x\<in\>A\<wedge\>y\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        with ><around*|(|x,y|)>\<in\>A\<times\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\><big|cup><rsub|i\<in\>I><around*|(|A\<times\>A<rsub|i>|)>>>>>
      </eqnarray*>

      <item> \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>i\<in\>I<text|
        we have >x\<in\>A<rsub|i>|)>\<wedge\>y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have ><around*|(|x\<in\>A<rsub|i>\<wedge\>y\<in\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have ><around*|(|x,y|)>\<in\>A<rsub|i>\<times\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\><big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>\<times\>A|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\>A\<times\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>y\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>i\<in\>I<text|
        we have >y\<in\>A<rsub|i>|)>\<wedge\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have ><around*|(|y\<in\>A<rsub|i>\<wedge\>x\<in\>A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I<text|
        we have ><around*|(|x,y|)>\<in\>A\<times\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\><big|cap><rsub|i\<in\>I><around*|(|A\<times\>A<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|family union intersection and empty set>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> a family then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>>

      <item>If <math|\<exists\>i\<in\>I> such that
      <math|A<rsub|i>=\<varnothing\>> then
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|<around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>\<subseteq\>I>
      we have by [theorem: <reference|family properties (2)>] that\ 

      <\equation>
        <label|eq 2.29.004><big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>
      </equation>

      Further if <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there
      exist a <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>>. As
      <math|x\<in\>A<rsub|i>> we must have that
      <math|A<rsub|i>\<neq\>\<varnothing\>> or
      <math|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>,
      proving that <math|x\<in\><big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>A<rsub|i>>.
      So

      <\equation*>
        <big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>A<rsub|i>
      </equation*>

      combining this with [eq: <reference|eq 2.29.004>] proves\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>A<rsub|i>
      </equation*>

      <item>Assume that <math|i\<in\>I> such that
      <math|A<rsub|i>=\<varnothing\>>. If
      <math|x\<in\><big|cap><rsub|j\<in\>I>A<rsub|j>> we have
      <math|\<forall\>j\<in\>I> that <math|x\<in\>A<rsub|j>>, so for sure
      <math|x\<in\>A<rsub|i>> which contradicts
      <math|A<rsub|i>=\<varnothing\>>. Hence we have that
      <math|<big|cap><rsub|j\<in\>I>A<rsub|j>=\<varnothing\>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|family image and preimage>If <math|f:A\<rightarrow\>B> is a
    function, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>>\<subseteq\>\<cal-P\><around*|(|A|)>>
    and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|B|)>>
    are families of sub classes of <math|A> and <math|B> then\ 

    <\enumerate>
      <item><math|f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>>

      <item><math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>>

      <item><math|f<around*|(|<big|cap>A<rsub|i\<in\>I>|)>\<subseteq\><big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>>

      <item>If <math|f> is injective and <math|I\<neq\>\<varnothing\>> then
      <math|f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>>

      <item><math|f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|y\<in\>f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>
      then <math|\<exists\>x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> such
      that <math|<around*|(|x,y|)>\<in\>f>, hence <math|\<exists\>i\<in\>I>
      such that <math|x\<in\>A<rsub|i>>, which as
      <math|<around*|(|x,y|)>\<in\>f> proves that
      <math|y\<in\>f<around*|(|A<rsub|i>|)>>. So
      <math|y\<in\><big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>> giving

      <\equation>
        <label|eq 2.30.004>f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>
      </equation>

      If <math|y\<in\><big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>> then
      there exists a <math|i\<in\>I> such that
      <math|y\<in\>f<around*|(|A<rsub|i>|)>>, hence
      <math|\<exists\>x\<in\>A<rsub|i>> such that
      <math|<around*|(|x,y|)>\<in\>f>, as <math|x\<in\>A<rsub|i>> this
      implies <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>, so we have
      that <math|y\<in\>f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>.
      Hence <math|<big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>\<subseteq\>f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>,
      which combined with [eq: <reference|eq 2.30.004>] gives\ 

      <\equation*>
        f<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>>
      then there exists a <math|y\<in\><big|cup><rsub|i\<in\>I>B<rsub|i>>
      such that <math|<around*|(|x,y|)>\<in\>f>, hence
      <math|\<exists\>i\<in\>I> such that <math|y\<in\>B<rsub|i>>. So
      <math|x\<in\>f<rsup|-1><around*|(|B<rsub|i>|)>> which as
      <math|i\<in\>I> implies that <math|x\<in\><big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>>
      or\ 

      <\equation>
        <label|eq 2.31.004>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|A<rsub|i>|)>
      </equation>

      If <math|x\<in\><big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|A<rsub|i>|)>>
      then there exists a <math|i\<in\>I> such that
      <math|x\<in\>f<rsup|-1><around*|(|A<rsub|i>|)>>, so
      <math|\<exists\>y\<in\>A<rsub|i>> with <math|<around*|(|x,y|)>\<in\>f>.
      As from <math|y\<in\>A<rsub|i>> we have
      <math|y\<in\><big|cup><rsub|i\<in\>I>> it follows that
      <math|x\<in\>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>.
      This proves that <math|<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|A<rsub|i>|)>\<subseteq\>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>
      which combined with [eq: <reference|eq 2.31.004>] gives\ 

      <\equation*>
        f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>
      </equation*>

      <item>If <math|y\<in\>f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
      then there exists a <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>
      such that <math|<around*|(|x,y|)>\<in\>f>. From
      <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> it follows that
      <math|\<forall\>i\<in\>I> <math|x\<in\>A<rsub|i>>, which as
      <math|<around*|(|x,y|)>\<in\>f> proves that <math|\<forall\>i\<in\>I>
      <math|x\<in\>f<around*|(|A<rsub|i>|)>> or
      <math|x\<in\><big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>>. So\ 

      <\equation*>
        f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<subseteq\><big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>
      </equation*>

      <item>Let <math|y\<in\><big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>>
      then <math|\<forall\>i\<in\>I> we have
      <math|y\<in\>f<around*|(|A<rsub|i>|)>>. As
      <math|I\<neq\>\<varnothing\>> there exists a <math|i\<in\>I> and we
      must thus have that <math|y\<in\>f<around*|(|A<rsub|i>|)>>. So there
      exists a <math|x\<in\>A<rsub|i>> such that
      <math|<around*|(|x,y|)>\<in\>f>. Assume that
      <math|x\<nin\><big|cap><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<exists\>j\<in\>I> such that <math|x\<nin\>A<rsub|j>>. However
      as <math|j\<in\>I> we must have that
      <math|y\<in\>f<around*|(|A<rsub|j>|)>>, so there exists a
      <math|x<rprime|'>\<in\>A<rsub|j>> such that
      <math|<around*|(|x<rprime|'>,y|)>\<in\>f>. As <math|f> is injective and
      <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f> we must
      have <math|x=x<rprime|'>>, but this means that <math|x\<in\>A<rsub|j>>
      contradicting <math|x\<nin\>A<rsub|j>>. So the assumption that
      <math|x\<nin\><big|cap><rsub|i\<in\>I>A<rsub|i>> is wrong, hence
      <math|x\<in\><big|cap>A<rsub|i>>. As <math|<around*|(|x,y|)>\<in\>f> we
      have <math|y\<in\>f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>,
      proving that <math|<big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>\<subseteq\>f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>,
      which combined with (3) proves\ 

      <\equation*>
        f<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>=<big|cap><rsub|i\<in\>I>f<around*|(|A<rsub|i>|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>>
      then there exists a <math|y\<in\><big|cap><rsub|i\<in\>I>B<rsub|i>>
      such that <math|<around*|(|x,y|)>\<in\>f>. Hence
      <math|\<forall\>i\<in\>I> we have that
      <math|y\<in\>B<rsub|i>\<Rightarrowlim\><rsub|<around*|(|x,y|)>\<in\>f>x\<in\>f<rsup|-1><around*|(|B<rsub|i>|)>>
      proving that <math|x\<in\><big|cap><rsub|i\<in\>I>f<rsup|-1>B<rsub|i>>.
      So\ 

      <\equation>
        <label|eq 2.32.004>f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>\<subseteq\><big|cap><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>
      </equation>

      If <math|x\<in\><big|cap><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>>
      then <math|\<forall\>i\<in\>I> we have
      <math|x\<in\>f<rsup|-1><around*|(|B<rsub|i>|)>> or
      <math|\<exists\>y\<in\>B<rsub|i><text| with ><around*|(|x,y|)>\<in\>f>.
      So <math|y\<in\><big|cap><rsub|i\<in\>I>B<rsub|i>> which as
      <math|<around*|(|x,y|)>\<in\>f> proves that
      <math|x\<in\>f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>>.
      So <math|<big|cap><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>\<subseteq\>f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>>
      which combined with <reference|eq 2.32.004> gives\ 

      <\equation*>
        f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>I>B<rsub|i>|)>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|B<rsub|i>|)>
      </equation*>
    </enumerate>
  </proof>

  <section|Product of a family of sets>

  The Cartesian product <math|A\<times\>B> consists of all the possible pairs
  that you can form, where the first element is a element of <math|A> and the
  second element is a element of <math|B>. We want now to construct a
  generalized product of a family of classes consisting of tuples whose
  elements are indexed by the index of the family.

  <\definition>
    <label|product><index|<math|<big|prod><rsub|i\<in\>I>A<rsub|i>>><dueto|Product
    of a family of sets>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    a family then the <with|font-series|bold|product of
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>> noted as
    <math|<with|font-series|bold|<big|prod><rsub|i\<in\>I>A<rsub|i>>> is
    defined by\ 

    <\equation*>
      <big|prod><rsub|i\<in\>I>A<rsub|i>=<around*|{|f:f\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I><text|
      where >\<forall\>i\<in\>I<text| we have
      >f<around*|(|i|)>\<in\>A<rsub|i>|}>
    </equation*>

    If <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then <math|x<rsub|i>>
    is defined as\ 

    <\equation*>
      x<rsub|i>=x<around*|(|i|)>
    </equation*>

    Here <math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>> is
    the class of function graphs of functions between <math|I> and
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> [definition: <reference|function
    B^A>] and <math|f<around*|(|i|)>> is the unique <math|y> such that
    <math|<around*|(|i,y|)>\<in\>f>. So <math|<big|prod><rsub|i\<in\>I>A<rsub|i>>
    is the class of graphs of functions from <math|I> to
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> such that
    <math|\<forall\>i\<in\>I> <math|f<rsub|i>=f<around*|(|i|)>\<in\>A<rsub|i>>.
  </definition>

  The following shows that the product of a family of only one class is
  \<#2018\>almost\<#2018\> that class itself.

  <\example>
    <label|product of family with one element>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\><around*|{|B|}>>
    be the family in [example: <reference|family trivial>] defined by
    <math|A:<around*|{|1|}>\<rightarrow\><around*|{|B|}>> where
    <math|A=<around*|{|<around*|(|1,B|)>|}>> then there exists a bijection
    between <math|B> and <math|<big|sqcap><rsub|i\<in\><around*|{|1|}>>A<rsub|i>>
  </example>

  <\proof>
    First using [example: <reference|family trivial>] we have\ 

    <\equation>
      <label|eq 2.34.005>B=<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>
    </equation>

    hence\ 

    <\equation>
      <label|eq 2.35.005><around*|(|<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>|)><rsup|<around*|{|1|}>>=B<rsup|<around*|{|1|}>>
    </equation>

    Let <math|f\<in\>B<rsup|<around*|{|1|}>>\<equallim\><rsub|<text|[eq:
    <reference|eq 2.35.005>]>><around*|(|<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>|)>>
    then if <math|i\<in\><around*|{|1|}>> we must have <math|i=1> hence
    <math|f<around*|(|i|)>=f<around*|(|1|)>\<in\>B=A<around*|(|1|)>=A<rsub|1>>
    proving that <math|\<forall\>i\<in\><around*|{|1|}>> we have
    <math|f<around*|(|i|)>\<in\>A<rsub|i>>. Hence
    <math|f\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>A<rsub|i>> from which
    it follows that <math|B<rsup|<around*|{|1|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1|}>>A<rsub|i>>.
    As clearly <math|<big|prod><rsub|i\<in\><around*|{|1|}>>A<rsub|i>\<subseteq\><around*|(|<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>|)><rsup|<around*|{|1|}>>\<equallim\><rsub|<text|[eq:
    <reference|eq 2.35.005>]>>B<rsup|<around*|{|1|}>>> we have that\ 

    <\equation*>
      <big|prod><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=B<rsup|<around*|{|1|}>>
    </equation*>

    Now by [theorem: <reference|function and power>] there exists a bijection
    between <math|B> and <math|B<rsup|<around*|{|1|}>>> which by the above
    proves the example.
  </proof>

  The next example shows that the product of a family of two classes is
  \<#2018\>almost\<#2018\> the Cartesian product of these classes.

  <\example>
    <label|product of family with two classes>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,1|}>>\<subseteq\><around*|{|C,D|}>>
    be the family in [example: <reference|family union{A,B}>] defined by
    <math|A:<around*|{|0,1|}>\<rightarrow\><around*|{|C,D|}> where>
    <math|A=<around*|{|<around*|(|0,C|)>,<around*|(|1,D|)>|}>> then there
    exists a bijection between <math|A\<times\>B> and
    <math|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>>
  </example>

  <\proof>
    First using [example: <reference|family union{A,B}>]: we have that\ 

    <\equation>
      <label|eq 2.38.006><big|cup><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=C<big|cup>D
    </equation>

    so that\ 

    <\equation>
      <label|eq 2.39.006><around*|(|<big|cup><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)><rsup|<around*|{|0,1|}>>=<around*|(|C<big|cup>D|)><rsup|<around*|{|0,1|}>>
    </equation>

    So\ 

    <\equation>
      <label|eq 2.40.007><big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>=<around*|{|f\|f\<in\><around*|(|C<big|cup>D|)><rsup|<around*|{|0,1|}>><text|
      where <math|f<around*|(|0|)>\<in\>C\<wedge\>f<around*|(|1|)>\<in\>D>>|}>
    </equation>

    Given <math|<around*|(|c,d|)>\<in\>C\<times\>D\<Rightarrow\>c\<in\>C\<wedge\>d\<in\>D>,
    define <math|f<rsub|c,d>=<around*|{|<around*|(|0,c|)>,<around*|(|1,d|)>|}>>.
    If <math|<around*|(|x,y|)>\<in\>f<rsub|c,d>> we have either

    <\equation*>
      <around*|(|x,y|)>=<around*|(|0,c|)>\<Rightarrow\>x=0\<in\><around*|{|0,1|}>\<wedge\>y=c\<in\>C\<subseteq\>C<big|cup>D\<Rightarrow\><around*|(|x,y|)>\<in\><around*|{|0,1|}>\<times\><around*|(|C<big|cup>D|)>
    </equation*>

    or

    <\equation*>
      <around*|(|x,y|)>=<around*|(|1,d|)>\<Rightarrow\>x=1\<in\><around*|{|0,1|}>\<wedge\>y=d\<in\>D\<subseteq\>C<big|cup>D\<Rightarrow\><around*|(|x,y|)>\<in\><around*|{|0,1|}>\<times\><around*|(|C<big|cup>D|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 2.40.006>f<rsub|a,b>\<subseteq\><around*|{|0,1|}>\<times\><around*|(|C<big|cup>D|)>\<wedge\>f<rsub|a,b><around*|(|0|)>\<in\>C\<wedge\>f<rsub|a,b><around*|(|1|)>\<in\>D
    </equation>

    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<rsub|c,d>>
    then either

    <\equation*>
      <around*|(|x,y|)>=<around*|(|0,c|)>\<Rightarrow\>x=0\<Rightarrow\><around*|(|0,y<rprime|'>|)>\<in\>f<rsub|c,d>\<Rightarrow\><around*|(|0,y<rprime|'>|)>=<around*|(|0,c|)>\<Rightarrow\>y<rprime|'>=c\<Rightarrow\>y=y<rprime|'>
    </equation*>

    or

    <\equation*>
      <around*|(|x,y|)>=<around*|(|1,d|)>\<Rightarrow\>x=1\<Rightarrow\><around*|(|1,y<rprime|'>|)>\<in\>f<rsub|c,d>\<Rightarrow\><around*|(|1,y<rprime|'>|)>=<around*|(|1,d|)>\<Rightarrow\>y<rprime|'>=d\<Rightarrow\>y=y<rprime|'>.
    </equation*>

    Together with [eq: <reference|eq 2.40.006>] this proves that\ 

    <\equation>
      <label|eq 2.41.006>f<rsub|a,b>:<around*|{|0,1|}>\<rightarrow\>C<big|cup>D<text|
      is a partial function>
    </equation>

    If <math|x\<in\><around*|{|0,1|}>> then either
    <math|x=0\<Rightarrow\><around*|(|0,c|)>\<in\>f<rsub|c,d>> or
    <math|x=1\<Rightarrow\><around*|(|1,d|)>\<in\>f<rsub|c,d>> proving that
    <math|<around*|{|0,1|}>\<subseteq\>dom<around*|(|f<rsub|c,d>|)>> which by
    [theorem: <reference|function condition (1)>] proves that

    <\equation>
      <label|eq 2.42.006>f<rsub|c,d>:<around*|{|0,1|}>\<rightarrow\>C<big|cup>D<text|
      is a function>
    </equation>

    As by [eq: <reference|eq 2.40.006>] <math|f<rsub|c,d><around*|(|0|)>\<in\>C\<wedge\>f<rsub|c,d><around*|(|1|)>\<in\>D>
    proving that\ 

    <\equation>
      <label|eq 2.44.007>f<rsub|c,d>\<in\><big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>
    </equation>

    Define now <math|\<gamma\>> by <math|\<gamma\>=<around*|{|<around*|(|<around*|(|c,d|)>,f<rsub|c,d>|)>\|<around*|(|c,d|)>\<in\>C\<times\>D|}>>.
    If <math|<around*|(|x,y|)>\<in\>\<gamma\>> then
    <math|x=<around*|(|c,d|)>\<in\>C\<times\>D> and
    <math|y=f<rsub|c,d>\<Rightarrowlim\><rsub|<text|[eq: <reference|eq
    2.44.007>]>>>, hence <math|y\<in\><around*|(|C<big|cup>D|)><rsup|<around*|{|0,1|}>>>.
    This proves that <math|<around*|(|x,y|)>\<in\><around*|(|C\<times\>D|)>\<times\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)>>
    or

    <\equation>
      <label|eq 2.43.006>\<gamma\>\<subseteq\><around*|(|C\<times\>D|)>\<times\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)>
    </equation>

    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>\<gamma\>>
    then <math|\<exists\><around*|(|c,d|)>\<in\>C\<times\>D> such that
    <math|<around*|(|x,y|)>=<around*|(|<around*|(|c,d|)>,f<rsub|c,d>|)>> and
    <math|<around*|(|x,y<rprime|'>|)>=<around*|(|<around*|(|c,d|)>,f<rsub|c,d>|)>>
    so that <math|y=f<rsub|c,d>=y<rprime|'>> hence <math|y=y<rprime|'>>.
    Combining this with [eq:<reference|eq 2.43.006>] proves that\ 

    <\equation>
      <label|eq 2.44.006>\<gamma\>:C\<times\>D\<rightarrow\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)><text|
      is a partial function>
    </equation>

    If <math|<around*|(|c,d|)>\<in\>C\<times\>D> then by definition of
    <math|\<gamma\>> we have <math|<around*|(|<around*|(|c,d|)>,f<rsub|c,d>|)>\<in\>\<gamma\>>
    so that <math|<around*|(|c,d|)>\<in\>dom<around*|(|\<gamma\>|)>> proving
    that <math|C\<times\>D\<subseteq\>dom<around*|(|\<gamma\>|)>>. By
    [theorem: <reference|function condition (1)>] and [eq: <reference|eq
    2.44.006>] we have\ 

    <\equation>
      <label|eq 2.45.006>\<gamma\>:C\<times\>D\<rightarrow\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)><text|
      is a function>
    </equation>

    If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>\<gamma\>>
    then there exists <math|<around*|(|c,d|)>,<around*|(|c<rprime|'>,d<rprime|'>|)>\<in\>C\<times\>D>
    such that <math|x=<around*|(|c,d|)>\<wedge\>x<rprime|'>=<around*|(|c<rprime|'>,d<rprime|'>|)>>
    and <math|f<rsub|c,d>=y=f<rsub|c<rprime|'>,d<rprime|'>>>. As
    <math|<around*|(|0,c|)>\<in\>f<rsub|c,d>=f<rsub|c<rprime|'>,d<rprime|'>>>
    we have <math|<around*|(|0,c|)>=<around*|(|0,c<rprime|'>|)>> giving
    <math|c=c<rprime|'>> and from <math|<around*|(|1,d|)>\<in\>f<rsub|c,d>=f<rsub|c<rprime|'>,d<rprime|'>>>
    we have <math|<around*|(|1,d|)>=<around*|(|1,d<rprime|'>|)> giving>
    <math|d=d<rprime|'>>. So <math|<around*|(|c,d|)>=<around*|(|c<rprime|'>,d<rprime|'>|)>>
    proving that\ 

    <\equation*>
      \<gamma\>:C\<times\>D\<rightarrow\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)><text|
      is a injection>
    </equation*>

    If <math|g\<in\><big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>> then
    <math|g:<around*|{|0,1|}>\<rightarrow\>C<big|cup>D> is a function and
    <math|g<around*|(|0|)>\<in\>C\<wedge\>g<around*|(|1|)>\<in\>D> So there
    exists a <math|c\<in\>C> such that <math|<around*|(|0,c|)>\<in\>g> and
    there exists a <math|d\<in\>D> such that <math|<around*|(|1,d|)>\<in\>g>.
    So <math|g=<around*|{|<around*|(|0,c|)>,<around*|(|1,d|)>|}>=f<rsub|c,d>>
    which proves that\ 

    <\equation*>
      \<gamma\>:C*\<times\>D\<rightarrow\><around*|(|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>|)><text|
      is a surjection>
    </equation*>
  </proof>

  <\theorem>
    <label|product inclusion>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> classes
    such that <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<subseteq\>B<rsub|i>>
    then

    <\equation*>
      <big|prod><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>B<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then
    <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>> and
    <math|\<forall\>i\<in\>I> <math|x<around*|(|i|)>\<in\>A<rsub|i>>. Using
    [theorem: <reference|family union intersection and inclusion>] it follows
    that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i>>,
    applying [theorem: <reference|function B^A and inclusion>] proves then
    <math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)><rsup|I>>,
    so that\ 

    <\equation*>
      x\<in\><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)><rsup|I>
    </equation*>

    If <math|i\<in\>I> then <math|x<around*|(|i|)>\<in\>A<rsub|i>>, which as
    <math|A<rsub|i>\<subseteq\>B<rsub|i>> gives
    <math|x<around*|(|i|)>\<in\>B<rsub|i>>, combining this with the above
    proves that <math|x\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>>. Hence we
    have\ 

    <\equation*>
      <big|prod><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>B<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|product and intersection>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>C>
    and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>D> are two
    families then\ 

    <\equation*>
      <around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|prod><rsub|i\<in\>I>B<rsub|i>|)>=<big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    First, as <math|\<forall\>i\<in\>I> we have by [theorem: <reference|class
    intersection, union, inclusion>] <math|A<rsub|i><big|cap>B<rsub|i>\<subseteq\>A<rsub|i>>
    and <math|A<rsub|i><big|cap>B<rsub|i>\<subseteq\>B<rsub|i>> it follows
    that by [theorem: <reference|product inclusion>]

    <\equation*>
      <big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><big|prod><rsub|i\<in\>I>A<rsub|i><text|
      and ><big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><big|prod><rsub|i\<in\>I>B<rsub|i>
    </equation*>

    so that by [theorem: <reference|class intersection, union, inclusion>]

    <\equation>
      <label|eq 2.48.008><big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>
    </equation>

    Now for the opposite inclusion Let <math|x\<in\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|prod><rsub|i\<in\>I>B<rsub|i>|)>>
    then <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> and
    <math|x\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>>. So
    <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>\<wedge\>\<forall\>i\<in\>I\<vDash\>x<around*|(|i|)>\<in\>A<rsub|i>>
    and <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)><rsup|I>\<wedge\>\<forall\>i\<in\>I\<vDash\>x<around*|(|i|)>\<in\>B<rsub|i>>.
    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>|<cell|<text|
      is a function>>>|<row|<cell|>|<cell|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>B<rsub|i>>|<cell|is
      a function>>|<row|<cell|>|<cell|\<forall\>i\<in\>I>|<cell|we have
      x<around*|(|i|)>\<in\>A<rsub|i><big|cap>B<rsub|i>>>>>
    </eqnarray*>

    Now if <math|<around*|(|i,y|)>\<in\>x> we have <math|i\<in\>I> [as
    <math|x\<subseteq\>I\<times\><around*|(|<big|cup><rsub|i>A<rsub|i>|)>>]
    and <math|y=x<around*|(|i|)>\<in\>A<rsub|i><big|cap>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>>
    so that <math|<around*|(|i,y|)>\<in\>I\<times\><around*|(|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>|)>>
    giving\ 

    <\equation>
      <label|eq 2.51.010>x\<subseteq\>I\<times\><around*|(|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>|)><text|
      and >\<forall\>i\<in\>I<text| we have
      <math|x<around*|(|i|)>\<in\>A<rsub|i><big|cap>B<rsub|i>>>
    </equation>

    Further as <math|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> is a
    function we have <math|\<forall\><around*|(|i,y|)>,<around*|(|i,y<rprime|'>|)>>
    that <math|y=y<rprime|'>> and that <math|dom<around*|(|x|)>=I>. Combining
    this with [eq: <reference|eq 2.51.010>] proves that
    <math|f:I\<rightarrow\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>\<times\>B<rsub|i>|)>>
    is a function and <math|\<forall\>i\<in\>I> we have
    <math|x<around*|(|i|)>\<in\>A<rsub|i><big|cap>B<rsub|i>>. This proves
    that <math|x\<in\><big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>>
    giving <math|><math|<around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|prod><rsub|i\<in\>I>B<rsub|i>|)>\<subseteq\><big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>>
    which combined with <reference|eq 2.48.008> gives finally

    <\equation*>
      <big|prod><rsub|i\<in\>I><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>\<subseteq\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)>
    </equation*>
  </proof>

  \;

  The following theorem is a motivation for the notation <math|A<rsup|B>> for
  the graphs of functions from <math|B> to <math|A>.

  <\theorem>
    <label|product and power>Let <math|I,B> be classes and consider the
    family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|{|B|}>>
    based on the constant function <math|A:I\<rightarrow\><around*|{|B|}>>
    where <math|A=C<rsub|B>=I\<times\><around*|{|B|}>> so that
    <math|\<forall\>i\<in\>I> <math|A<around*|(|i|)>=B> [see example:
    <reference|function constant function>] then
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>=A<rsup|I>>
  </theorem>

  <\proof>
    For <math|I> we have the following cases to consider:

    <\description>
      <item*|<math|I=\<varnothing\>>>Using [example: <reference|function
      A^empty is empty>] we have that\ 

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>\<varnothing\>>A<rsub|i>|)><rsup|\<varnothing\>>=<around*|{|\<varnothing\>|}>
      </equation*>

      Further <math|\<forall\>i\<in\>\<varnothing\>> we have
      <math|\<varnothing\><around*|(|i|)>\<in\>A<rsub|i>> is satisfied
      vacuously proving that <math|\<varnothing\>\<in\><big|prod><rsub|i\<in\>\<varnothing\>>A<rsub|i>>
      so that <math|<around*|{|\<varnothing\>|}>\<subseteq\><big|prod><rsub|i\<in\>\<varnothing\>>A<rsub|i>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<varnothing\>>A<rsub|i>|)><rsup|\<varnothing\>>=<around*|{|\<varnothing\>|}>>
      or taking <math|I=\<varnothing\>>

      <\equation*>
        <big|prod><rsub|i\<in\>I>A<rsub|i>=A<rsup|I>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>If
      <math|y\<in\>range<around*|(|A|)>> then <math|\<exists\>x> such that
      <math|<around*|(|x,y|)>\<in\>C<rsub|B>=I\<times\><around*|{|B|}>>, so
      that <math|y\<in\><around*|{|B|}>>. Hence

      <\equation>
        <label|eq 2.48.007>range<around*|(|A|)>\<subseteq\><around*|{|B|}>
      </equation>

      As <math|I\<neq\>\<varnothing\>> there exists a <math|i\<in\>I>, which
      by the definition of <math|C<rsub|B>> means that
      <math|<around*|(|i,B|)>\<in\>C<rsub|B>>, hence
      <math|B\<in\>range<around*|(|A|)>>. So if <math|y\<in\><around*|{|B|}>>
      then <math|y=B\<in\>range<around*|(|A|)>> proving that
      <math|<around*|{|B|}>\<subseteq\>range<around*|(|A|)>> which combined
      with [eq: <reference|eq 2.48.007>] gives

      <\equation*>
        range<around*|(|A|)>=<around*|{|B|}>
      </equation*>

      hence

      <\equation*>
        <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><around*|(|range<around*|(|A|)>|)>=<big|cup><around*|{|B|}>\<equallim\><rsub|<text|[example:
        <reference|class trivial union intersection>]>>B
      </equation*>

      so that\ 

      <\equation>
        <label|eq 2.49.007><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>=B<rsup|I>
      </equation>

      Now if <math|f\<in\>B<rsup|I>> then <math|\<forall\>i\<in\>I> we have
      <math|f<around*|(|i|)>\<in\>B=A<around*|(|i|)>=A<rsub|i>> proving that

      <\equation*>
        f\<in\><around*|{|f\|f\<in\>B<rsup|i>\<wedge\>\<forall\>i\<in\>I
        f<around*|(|i|)>\<in\>A<rsub|i>|}>\<equallim\><rsub|<text|[eq:
        <reference|eq 2.49.007>]>><around*|{|f\|f\<in\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>\<wedge\>\<forall\>i\<in\>I
        f<around*|(|i|)>\<in\>A<rsub|i>|}>=<big|prod><rsub|i\<in\>I>A<rsub|i>
      </equation*>

      proving that

      <\equation>
        <label|eq 2.50.007>B<rsup|I>\<subseteq\><big|prod><rsub|i\<in\>I>A<rsub|i>
      </equation>

      Further

      <\equation*>
        <big|prod><rsub|i\<in\>I>A<rsub|i>=<around*|{|f\|f\<in\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>\<wedge\>\<forall\>i\<in\>I
        f<around*|(|i|)>\<in\>A<rsub|i>|}>\<subseteq\><around*|{|f\|f\<in\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>|}>=<around*|{|f\|f\<in\>B<rsup|I>|}>=B<rsup|I>
      </equation*>

      which combined with [eq: <reference|eq 2.50.007>] proves that\ 

      <\equation*>
        B<rsup|I>=<big|prod><rsub|i\<in\>I>A<rsub|i>
      </equation*>

      <math|>
    </description>
  </proof>

  We introduce now the projection operator

  <\definition>
    <label|projection function><index|<math|\<pi\><rsub|i>>>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> be family then
    for <math|i\<in\>I> we define the projection function

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>A<rsub|j>\<rightarrow\>A<rsub|i>
    </equation*>

    where

    <\equation*>
      \<pi\><rsub|i>=<around*|{|z\|z=<around*|(|x,x<around*|(|i|)>|)>\|x\<in\><big|prod><rsub|j\<in\>I>A<rsub|j>|}>
    </equation*>

    In other words <math|<around*|(|x,y|)>\<in\>\<pi\><rsub|i>\<Leftrightarrow\>x\<in\><big|prod><rsub|j\<in\>I>A<rsub|j>>
    and <math|y=x<around*|(|i|)>\<Leftrightarrow\><around*|(|i,y|)>\<in\>x>
  </definition>

  <\proof>
    This definition only make sense if <math|\<forall\>i\<in\>I> that
    <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>A<rsub|j>\<rightarrow\>A<rsub|i>>
    is a function. First if <math|<around*|(|x,y|)>\<in\>\<pi\><rsub|i>> we
    have that <math|x\<in\><big|prod><rsub|j\<in\>I>A<rsub|j>> and
    <math|y=x<around*|(|i|)>> giving <math|y\<in\>A<rsub|i>>, so
    <math|<around*|(|x,y|)>\<in\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A<rsub|i>>.
    Hence\ 

    <\equation>
      <label|eq 2.51.007>\<pi\><rsub|i>\<subseteq\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>\<times\>A<rsub|i>
    </equation>

    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>\<pi\><rsub|i>>
    then <math|y=x<around*|(|i|)>\<wedge\>y<rprime|'>=x<around*|(|i|)><rsup|>>
    proving that <math|y=y<rprime|'>> or

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>A<rsub|j>\<rightarrow\>A<rsub|i><text|
      is a partial function>
    </equation*>

    If <math|x\<in\><big|prod><rsub|j\<in\>I>A<rsub|j>> then by definition
    <math|<around*|(|x,x<around*|(|i|)>|)>\<in\>\<pi\><rsub|i>> proving that
    <math|x\<in\>dom<around*|(|\<pi\><rsub|i>|)>> proving that
    <math|<big|prod><rsub|j\<in\>I>A<rsub|i>\<subseteq\>dom<around*|(|\<pi\><rsub|i>|)>>,
    which by [theorem: <reference|function condition (1)>] gives\ 

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>A<rsub|j>\<rightarrow\>A<rsub|i><text|
      is a function>
    </equation*>
  </proof>

  We are not yet finished with the product of a family of classes, however
  for some of the theorems we need the Axiom of Choice, so we must first
  cover relations and partial ordered sets. This will be covered in the next
  Chapter.

  \;

  \;

  \;

  \;

  \;

  \;

  <chapter|Relations>

  <section|Relation>

  The idea of a relation is that we can specify which elements of a class are
  related to each other.\nYou do this by specifying a class of pairs.

  <\definition>
    <label|relation><index|relation>Let <math|A> be a class then a relation
    in <math|A> is a subclass of <math|A\<times\>A>
  </definition>

  <\notation>
    So a relation is a set of pairs from elements of the same class, to avoid
    confusion with the graph of a function we use the following notation:

    If <math|R\<subseteq\>A*\<times\>A> is relation then instead of writing
    <math|<around*|(|x,y|)>\<in\>R> we write <math|x R y>
  </notation>

  <\example>
    <label|relation trivial>Let <math|A> be a class then <math|A\<times\>A>
    is a relation [as <math|A\<times\>A\<subseteq\>A\<times\>A>]
  </example>

  We define now the following properties that a relation can have

  <\definition>
    <label|relation properties>If <math|A> is a class and
    <math|R\<subseteq\>A\<times\>A> a relation then we say that <math|R> is\ 

    <\description>
      <item*|reflexive>iff <math|\<forall\>x\<in\>A> we have

      <\equation*>
        x R x
      </equation*>

      in other words every element is related to itself.

      <item*|symmetric>iff

      <\equation*>
        x R y\<Rightarrow\>y R x
      </equation*>

      in other words if one element is related to a second element then the
      second element is related to the first element.

      <item*|anti symmetric>iff\ 

      <\equation*>
        x R y\<wedge\>y R x\<Rightarrow\>x=y
      </equation*>

      in other words if on element is related to a second element and the
      second element is related to the first element then the two elements
      are the same.

      <item*|transitive>iff\ 

      <\equation*>
        x R y\<wedge\>y R z\<Rightarrow\>x R z
      </equation*>

      in other words if one element is related to a second element and the
      second element is related to the third element then the first element
      is also related to the third element.
    </description>
  </definition>

  <section|Equivalence relations>

  <subsection|Equivalence relations and equivalence classes>

  Note that for classes and equality we have by [theorem: <reference|class
  properties (1)>] that\ 

  <\itemize-dot>
    <item><math|A=A>\ 

    <item><math|A=B\<Rightarrow\>B=A>

    <item><math|A=B\<wedge\>B=C\<Rightarrow\>A=C>
  </itemize-dot>

  If we want to create a relation that defines a kind of equality then it
  must behave in the same way as the equality for classes. This it he idea
  behind the following definition.

  <\definition>
    <label|equivalence relation><index|equivalence
    relation><dueto|Equivalence Relation>If <math|A> is a class then a
    relation <math|R> is a <with|font-series|bold|equivalence>
    <with|font-series|bold|relation> iff it is reflexive, symmetric and
    transitive or in other words if\ 

    <\description>
      <item*|reflectivity><math|\<forall\>x\<in\>A> <math|x R x>

      <item*|<math|symetricity>><math|x R y\<Rightarrow\>y R x>

      <item*|transitivity><math|x R y\<wedge\>y R z\<Rightarrow\>x R z>
    </description>
  </definition>

  Given a set <math|A> and a equivalence relation in <math|A> then it is
  useful to partition the set in subsets containing all the elements that are
  equivalent with each other. To do this we must first define what a
  partition of a set is.\ 

  <\definition>
    <label|equivalence relation partition><index|partition of a set>Let
    <math|A> be a set then a <with|font-series|bold|partition> of <math|A> is
    a family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
    of non empty subsets of <math|A> [<math|\<forall\>i\<in\>I> we have
    <math|A<rsub|i>\<neq\>\<varnothing\>>] such that:

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=A>

      <item><math|\<forall\>i,j\<in\>I> we have
      <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>\<vee\>A<rsub|i>=A<rsub|j>>
    </enumerate>
  </definition>

  <\note>
    Condition (2) in the above definition is a weaker condition that pairwise
    disjointedness. For example if we define the family
    <math|<around*|(|A<rsub|i>|)><rsub|i\<in\><around*|{|1,2,3|}>>> by
    <math|A<rsub|1>=<around*|{|1|}>,A<rsub|2>=<around*|{|1|}>> and
    <math|A<rsub|3>=<around*|{|2|}>> then this family is not pairwise
    disjoint as <math|1\<neq\>2 > and <math|A<rsub|1><big|cap>A<rsub|2>\<neq\>\<varnothing\>>,
    however <math|<around*|(|2|)>> is clearly satisfied.
  </note>

  We can also reformulate the definition of a partition of <math|A> in the
  following way

  <\theorem>
    <label|equivalence relation partition alternative>Let <math|A> be a set
    and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
    a family of non empty subsets of <math|A> then we have the following
    equivalences

    <\enumerate>
      <item><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
      is a partition of <math|A>

      <item> <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
      satisfies

      <\enumerate>
        <item><math|\<forall\>x\<in\>A> there exists a <math|i\<in\>I> such
        that <math|x\<in\>A<rsub|i>>

        <item><math|\<forall\>i,j\<in\>I> with
        <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>> we have
        <math|A<rsub|i>=A<rsub|j>>
      </enumerate>

      <item><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
      satisfies

      <\enumerate>
        <item><math|\<forall\>x\<in\>A> there exists a <math|i\<in\>I> such
        that <math|x\<in\>A<rsub|i>>

        <item><math|\<forall\>i,j\<in\>I> with
        <math|A<rsub|i>\<neq\>A<rsub|j>> we have
        <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>\ 

      <\enumerate-alpha>
        <item>If <math|x\<in\>A> then as <math|A=<big|cup><rsub|i\<in\>I>A<rsub|i>>
        there exists a <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>>

        <item>Let <math|i,j\<in\>I> with <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>.
        As by definition of a partition <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>\<vee\>A<rsub|i>=A<rsub|j>>
        we must have that <math|A<rsub|i>=A<rsub|j>>.
      </enumerate-alpha>

      <item*|<math|2\<Rightarrow\>3>>\ 

      <\enumerate-alpha>
        <item>This is trivial

        <item>Let <math|i,j\<in\>I> with <math|A<rsub|i>\<neq\>A<rsub|j>>.
        Assume that <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>
        then by (2.b) we have <math|A<rsub|i>=A<rsub|j>> contradicting
        <math|A<rsub|i>=A<rsub|j>>, so we must have that
        <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>
      </enumerate-alpha>

      <item*|<math|3\<Rightarrow\>1>>\ 

      <\enumerate-alpha>
        <item>Using (3.a) it follows that
        <math|A\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>. If
        <math|z\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there exists a
        <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>> [theorem:
        <reference|family union (2)>], hence as
        <math|A<rsub|i>\<in\>\<cal-P\><around*|(|A|)>\<Rightarrow\>A<rsub|i>\<subseteq\>A>
        it follows that <math|x\<in\>A>, proving that
        <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\>A>. So we have
        that\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>=A
        </equation*>

        <item>Let <math|i,j\<in\>I> then if <math|A<rsub|i>\<neq\>A<rsub|j>>
        we have by (3b) that <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>,
        so we have that <math|A<rsub|i>=A<rsub|j>\<vee\>A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>.
      </enumerate-alpha>
    </description>
  </proof>

  We show now how a equivalence relation can be used to partition a set.

  <\definition>
    <label|equivalence relation class><index|<math|R<around*|[|x|]>>>Let
    <math|A> be a set and <math|R> a equivalence relation in <math|A> then
    given <math|x> we define the <with|font-series|bold|equivalence>
    <with|font-series|bold|class> of <math|x> noted by
    <math|R<around*|[|x|]>> by\ 

    <\equation*>
      R<around*|[|x|]>=<around*|{|y\<in\>A\|x R y|}>\<subseteq\>A
    </equation*>
  </definition>

  <\note>
    Because <math|R<around*|[|x|]>\<subseteq\>A> and <math|A> is a set we
    have by the axiom of subset <reference|axiom of subsets> that
    <math|R<around*|[|x|]>> is a set.
  </note>

  We have the following important property for equivalence classes

  <\theorem>
    <label|equivalence relation R[x]=R[y]>Let <math|A> be a set with a
    equivalence relation <math|R> in <math|A> then\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>A> we have <math|x\<in\>R<around*|[|x|]>>

      <item><math|\<forall\>x,y\<in\>A> we have\ 

      <\equation*>
        x R y\<Leftrightarrow\>R<around*|[|x|]>=R<around*|[|y|]>
      </equation*>

      <item><math|\<forall\>x\<in\>A> we have

      <\equation*>
        y\<in\>R<around*|[|x|]>\<Leftrightarrow\>R<around*|[|x|]>=R<around*|[|y|]>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>A> then using reflexivity we have <math|x R x> so
      that <math|x\<in\>R<around*|[|x|]>>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|z\<in\>R<around*|[|x|]>> then
        <math|x R z>, further from <math|x R y> we have <math|y R x>, so
        using transitivity it follows that <math|y R z> or
        <math|z\<in\>R<around*|[|y|]>>. If <math|z\<in\>R<around*|[|y|]>>
        then <math|y R z> so as <math|x R y> we have by transitivity that
        <math|x R z> or that <math|z\<in\>R>.

        <item*|<math|\<Leftarrow\>>>Using (1)
        <math|x\<in\>R<around*|[|x|]>\<Rightarrowlim\><rsub|R<around*|[|x|]>=R<around*|[|y|]>>x\<in\>R<around*|[|y|]>>
        proving that <math|r R y>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|y\<in\>R<around*|[|x|]>> then
        <math|y R x> hence by (2) <math|R<around*|[|x|]>=R<around*|[|y|]>>

        <item*|<math|\<Leftarrow\>>>If <math|R<around*|[|x|]>=R<around*|[|y|]>>
        then <math|y R x> provomg that <math|y\<in\>R<around*|[|x|]>>
      </description>
    </enumerate>
  </proof>

  We define now a function that maps a element of as set on its equivalence
  class and use it to define a family of equivalence classes indexed by the
  elements of the set.

  <\definition>
    Let <math|A> be a set and <math|R> a equivalence relation in <math|A>
    then <math|<around*|{|R<around*|[|x|]>|}><rsub|x\<in\>A>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is the family defined by the function
    <math|R<around*|[||]>:A\<rightarrow\>\<cal-P\><around*|(|A|)>> where
    <math|R<around*|[||]><around*|(|x|)>=R<around*|[|x|]>>
  </definition>

  <\note>
    As <math|x\<in\>R<around*|[|x|]>> we have that
    <math|<around*|{|R<around*|[|x|]>|}><rsub|x\<in\>A>> is a non empty
    family of subsets of <math|A>
  </note>

  <\proof>
    We must of course prove that this a function. First
    <math|R<around*|[|x|]>> is defined for every <math|x\<in\>A> and
    calculates a unique set, further <math|R<around*|[|x|]>\<subseteq\>A\<Rightarrow\>R<around*|[|x|]>\<in\>\<cal-P\><around*|(|A|)>>.
    So by [proposition: <reference|function simple definition>]
    <math|R<around*|[||]>:A\<rightarrow\>\<cal-P\><around*|[|A|]>> is a
    function.
  </proof>

  <\theorem>
    Let <math|A> be a set and <math|R> a equivalence relation in <math|A>
    then <math|<around*|{|R<around*|[|x|]>|}><rsub|x\<in\>A>> is a partition
    of <math|A>
  </theorem>

  <\proof>
    \ We use [theorem: <reference|equivalence relation partition
    alternative>] to prove this

    <\enumerate>
      <item>If <math|x\<in\>A> then by [theorem: <reference|equivalence
      relation R[x]=R[y]>] we have that <math|x\<in\>R<around*|[|x|]>> so
      that <math|x\<in\><big|cup><rsub|x\<in\>A>R<around*|[|x|]>>

      <item>Let <math|x,y\<in\>A> such that
      <math|R<around*|[|x|]><big|cap>R<around*|[|y|]>\<neq\>\<varnothing\>>
      then there exists a

      <\equation*>
        z\<in\>R<around*|[|x|]><big|cap>R<around*|[|y|]>\<Rightarrow\>z R
        x\<wedge\>z R y\<Rightarrowlim\><rsub|symmetry>x R z\<wedge\>z R
        y\<Rightarrowlim\><rsub|transitivity>x R y
      </equation*>

      Using the above together with [theorem: <reference|equivalence relation
      R[x]=R[y]>] we have then that <math|R<around*|[|x|]>=R<around*|[|y|]>>
    </enumerate>

    So by \ [theorem: <reference|equivalence relation partition alternative>]
    it follows that <math|<around*|{|R<around*|[|x|]>|}><rsub|x\<in\>A>\<subseteq\>\<cal-P\><around*|(|A|)>>
    is a partition of <math|A>
  </proof>

  We have also the opposite of the above theorem in that a partition defines
  a equivalence relation that generates the same partition.

  <\theorem>
    Let <math|A> be a set and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
    a partition of <math|A>. Define <math|R\<subseteq\>A\<times\>A> by\ 

    <\equation*>
      R=<around*|{|<around*|(|x,y|)>\|\<exists\>i\<in\>I<text| such that
      >x\<in\>A<rsub|i>\<wedge\>y\<in\>A<rsub|i>|}>
    </equation*>

    then we have:

    <\enumerate>
      <item><math|R> is a equivalence relation

      <item><math|\<forall\>i\<in\>I> there exists a <math|x\<in\>A> such
      that <math|R<around*|[|x|]>=A<rsub|i>>

      <item><math|\<forall\>x\<in\>A> there exists a <math|i\<in\>I> such
      that <math|R<around*|[|x|]>=A<rsub|i>>
    </enumerate>

    we call <math|R> is the called the <with|font-series|bold|equivalence
    relation associated with the partition
    ><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|A|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have:

      <\enumerate>
        <item>If <math|x\<in\>A=<big|cup><rsub|i\<in\>I>A<rsub|i>> then
        <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>> so that
        <math|<around*|(|x,x|)>\<in\>R> or <math|x R x>

        <item>If <math|x R y> or <math|<around*|(|x,y|)>\<in\>R> then
        <math|\<exists\>i\<in\>I> such that
        <math|x\<in\>A<rsub|i>\<wedge\>y\<in\>A<rsub|i>\<Rightarrow\>y\<in\>A<rsub|i>\<wedge\>x\<in\>A<rsub|i>>.
        Hence <math|<around*|(|y,x|)>\<in\>R> or <math|y R x>.

        <item>If <math|x R y\<wedge\>y R z> then <math|\<exists\>i\<in\>I>
        such that <math|x,y\<in\>A<rsub|i>> and <math|\<exists\>j\<in\>I>
        such that <math|y,z\<in\>A<rsub|j>>. So
        <math|y\<in\>A<rsub|i><big|cap>A<rsub|j>> or
        <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>, by [theorem:
        <reference|equivalence relation partition alternative>] we have that
        <math|A<rsub|i>=A<rsub|j>>, hence <math|x,z\<in\>A<rsub|i>> proving
        that <math|<around*|(|x,z|)>\<in\>R> or <math|x R z>.
      </enumerate>

      <item>If <math|i\<in\>I> then as <math|A<rsub|i>\<neq\>\<varnothing\>>
      [a partition is a family of non empty subsets] there exists a
      <math|x\<in\>A<rsub|i>>. Take <math|y\<in\>A<rsub|i>> then
      <math|x,y\<in\>A<rsub|i>> or <math|y R x> proving that
      <math|y\<in\>R<around*|[|x|]>>. So\ 

      <\equation*>
        A<rsub|i>\<subseteq\>R<around*|[|x|]>
      </equation*>

      Take <math|y\<in\>R<around*|[|x|]>> then <math|y R x> so there exist a
      <math|j\<in\>I> such that <math|x,y\<in\>A<rsub|j>>, hence
      <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>> which by
      [theorem: <reference|equivalence relation partition alternative>]
      proves that <math|A<rsub|i>=A<rsub|j>>, so that
      <math|y\<in\>A<rsub|i>>. So <math|R<around*|[|x|]>\<subseteq\>A<rsub|i>>
      giving

      <\equation*>
        A<rsub|i>=R<around*|[|x|]>
      </equation*>

      <item>If <math|x\<in\>A> then <math|\<exists\>i\<in\>I> such that
      <math|x\<in\>A<rsub|i>>. Take <math|y\<in\>A<rsub|i>> then
      <math|x,y\<in\>A<rsub|i>> or <math|y R x> proving that
      <math|y\<in\>R<around*|[|x|]>>, hence

      <\equation*>
        A<rsub|i>\<subseteq\>R<around*|[|x|]>
      </equation*>

      \ Take <math|y\<in\>R<around*|[|x|]>> then <math|y R x> so there exist
      a <math|j\<in\>I> such that <math|x,y\<in\>A<rsub|j>>, hence
      <math|A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>> which by
      [theorem: <reference|equivalence relation partition alternative>]
      proves that <math|A<rsub|i>=A<rsub|j>>, so that
      <math|y\<in\>A<rsub|i>>. So <math|R<around*|[|x|]>\<subseteq\>A<rsub|i>>
      giving

      <\equation*>
        A<rsub|i>=R<around*|[|x|]>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\definition>
    <label|equivalence relation A/R><index|<math|A/R>>Let <math|A> be a set
    and <math|R> a relation then <math|A/R> is defined by\ 

    <\equation*>
      A/R=<around*|{|R<around*|[|x|]>\|x\<in\>A|}>
    </equation*>
  </definition>

  <\note>
    As <math|\<forall\>x\<in\>X> <math|R<around*|[|x|]>\<in\>\<cal-P\><around*|(|A|)>>
    it follows that

    <\equation*>
      R/X\<in\>\<cal-P\><around*|(|A|)>.
    </equation*>

    As <math|A> is a set it follows from the Axiom Power [axiom:
    <reference|axiom of power>] that <math|P<around*|(|A|)>> is a set,
    applying the Axiom of Subsets [axiom: <reference|axiom of subsets>] we
    have\ 

    <\equation*>
      R/X<text| is a set>
    </equation*>
  </note>

  <subsection|Functions and equivalence relations>

  In this section we show how a function can be decomposed as the composition
  of a surject, a bijection and injection. First we examine the relation
  between functions and equivalence relations.

  We can use functions to generate a equivalence relation on the domain of
  the function based on a equivalence relation on the target of the function.

  <\theorem>
    <label|equivalence relation function><math|f:A\<rightarrow\>B> a function
    and <math|R> a equivalence relation in <math|A> then\ 

    <\equation*>
      f<around*|\<langle\>|R|\<rangle\>>=<around*|{|<around*|(|x,y|)>\|f<around*|(|x|)>
      R f<around*|(|y|)>|}>\<subseteq\>A\<times\>A
    </equation*>

    is a equivalence relation in A
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|x\<in\>A> then
      <math|f<around*|(|x|)>\<in\>B> so that <math|f<around*|(|x|)> R
      f<around*|(|x|)>> hence by definition <math|x R x>

      <item*|symmetric>If <math|x R y> then <math|f<around*|(|x|)> R
      f<around*|(|y|)>> so that <math|f<around*|(|y|)> R f<around*|(|x|)>>
      proving <math|y R x>

      <item*|transitivity>If <math|x R y\<wedge\>y R z> then
      <math|f<around*|(|x|)> R f<around*|(|y|)>\<wedge\>f<around*|(|y|)> R
      f<around*|(|z|)>> so that <math|f<around*|(|x|)> R f<around*|(|x|)>>
      proving that <math|x R z>.
    </description>
  </proof>

  A equivalence relation on a set induce a equivalence relation on a subset

  <\theorem>
    <label|equivalence relation subsets>Let <math|A> be a class,
    <math|B\<subseteq\>A> a subclass and <math|R> a equivalence relation in
    <math|R> then <math|R<rsub|\|B>> defined by\ 

    <\equation*>
      R<rsub|\|B>=<around*|{|<around*|(|x,y|)>\|x\<in\>B\<wedge\>y\<in\>B\<wedge\>x
      R y|}>=R<big|cap><around*|(|B\<times\>B|)>
    </equation*>

    is a equivalence relation.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|x\<in\>B> then <math|x R x> so that <math|x
      R<rsub|\|B> x>

      <item*|symmetric>If <math|x R<rsub|<around*|\||B|\<nobracket\>>>y\<Rightarrow\>x\<in\>B\<wedge\>y\<in\>B\<wedge\>xRy\<Rightarrow\>yR<rsub|<around*|\||B|\<nobracket\>>>x>

      <item*|transitivity>If <math|x R<rsub|\|B> y\<wedge\>y R<rsub|\|B> z>
      then <math|x,y,z\<in\>\<bbb-R\>> and <math|x R y\<wedge\>y R z> so that
      <math|x,z\<in\>B> and <math|x R z> proving <math|x R<rsub|\|B> z>
    </description>
  </proof>

  <\theorem>
    <label|equivalence relation determined by a function>If
    <math|f:A\<rightarrow\>B> is a function then <math|R<rsub|f>> defined by\ 

    <\equation*>
      R<rsub|f>=<around*|{|<around*|(|x,y|)>\<in\>A\<times\>A\|f<around*|(|x|)>=f<around*|(|y|)>|}>
    </equation*>

    is a relation. <math|R<rsub|f>> is called the
    <with|font-series|bold|equivalence relation determined by f>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|x\<in\>A> then
      <math|f<around*|(|x|)>=f<around*|(|x|)>> proving that <math|x R<rsub|f>
      x>

      <item*|symmetric>If <math|x R<rsub|f> y> then
      <math|f<around*|(|x|)>=f<around*|(|y|)>\<Rightarrow\>f<around*|(|y|)>=f<around*|(|x|)>>
      proving that <math|y R<rsub|f> x>

      <item*|transitivity>If <math|x R<rsub|f> y\<wedge\>y R<rsub|f> x> then
      <math|f<around*|(|x|)>=f<around*|(|y|)>> and
      <math|f<around*|(|y|)>=f<around*|(|z|)>> so that
      <math|f<around*|(|x|)>=f<around*|(|x|)>> hence <math|x R<rsub|f> z>
    </description>
  </proof>

  We can also do the opposite and associate a function with a equivalence
  relation

  <\theorem>
    <label|equivalence relation canical function><index|canonical
    function><dueto|Canonical Function>Let <math|A> be a set and <math|R> a
    equivalence relation in <math|A> then:

    <\enumerate>
      <item><math|f<rsub|R>:A\<rightarrow\>A/R> defined by
      <math|f<rsub|R><around*|(|x|)>=R<around*|[|x|]>> is a surjective
      function.

      <item><math|R<rsub|R<rsub|f>>=R>
    </enumerate>
  </theorem>

  <math|f<rsub|R>:A\<rightarrow\>A/R> is called the
  <with|font-series|bold|Canonical function associated with <math|R>>

  <\proof>
    \ 

    <\enumerate>
      <item>As for every <math|x\<in\>A> we have the unique
      <math|R<around*|[|x|]>\<in\>R/X> it follows from [proposition:
      <reference|function simple definition>] that\ 

      <\equation*>
        f<rsub|R>:A\<rightarrow\>A/R<text| is a function>
      </equation*>

      Let <math|y\<in\>R/X> then <math|\<exists\>x\<in\>A> such that
      <math|y=R<around*|[|x|]>> so that <math|<around*|(|x,y|)>=<around*|(|x,R<around*|[|x|]>|)>\<in\>f<rsub|R>>
      proving that <math|y\<in\>range<around*|(|f<rsub|R>|)>>. So
      <math|R/X\<subseteq\>range<around*|(|f<rsub|R>|)>> which by [theorem:
      <reference|function surjection condition>] proves that\ 

      <\equation*>
        f<rsub|R>:A\<rightarrow\>A/R<text| is surjective>
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<in\>R>|<cell|\<Leftrightarrow\>>|<cell|x
        R y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|equivalence relation R[x]=R[y]>]>>>|<cell|R<around*|[|x|]>=R<around*|[|y|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<rsub|R><around*|(|x|)>=f<rsub|R><around*|(|y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\>R<rsub|f<rsub|R>>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  We use the above to decompose every function as the composition of a
  surjection, bijection and injection.\ 

  \;

  <\theorem>
    <label|equivalence relation canonical decomposition of a function>Let
    <math|A,B> be sets and <math|f:A\<rightarrow\>B> a function and define
    the following functions:

    <\enumerate-alpha>
      <item><math|s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)>> where
      <math|s<rsub|f>=<around*|{|<around*|(|R<rsub|f><around*|[|x|]>,f<around*|(|x|)>|)>\|x\<in\>A|}>>

      <item><math|i<rsub|f<around*|(|A|)>>:f<around*|(|A|)>\<rightarrow\>B>
      where <math|i<rsub|f<around*|(|A|)>>=<around*|{|<around*|(|x,x|)>\|x\<in\>f<around*|(|A|)>|}>>
      [the inclusion function see [example: <reference|function inclusion
      function>]

      <item><math|f<rsub|R<rsub|f>>:A\<rightarrow\>A/R<rsub|f>> where
      <math|f<rsub|R<rsub|f>><around*|(|x|)>=R<rsub|f><around*|[|x|]>>
      [theorem: <reference|equivalence relation canical function>]
    </enumerate-alpha>

    then\ 

    <\enumerate>
      <item><math|><math|s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)>>
      is a bijection

      <item><math|i<rsub|f<around*|(|A|)>>:f<around*|(|A|)>\<rightarrow\>B>
      is a injective function

      <item><math|f<rsub|R<rsub|f>>:A\<rightarrow\>A/R<rsub|f>><space|1em>is
      a surjective function

      <item><math|f=i<rsub|f<around*|(|A|)>>\<circ\><around*|(|s<rsub|f>\<circ\>f<rsub|R<rsub|f>>|)>\<equallim\><rsub|<text|[theorem:
      <reference|partial function associativity>]>><around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>>
    </enumerate>
  </theorem>

  <\proof>
    Using \ [example: <reference|function inclusion function>] and [theorem:
    <reference|equivalence relation canical function>] we have that

    <\equation*>
      i<rsub|f<around*|(|A|)>>:f<around*|(|A|)>\<rightarrow\>B <text| is a
      injective function>
    </equation*>

    and\ 

    <\equation*>
      f<rsub|R<rsub|f>>:A\<rightarrow\>A/R<rsub|f><text| is sutjective
      function>
    </equation*>

    We proceed now to prove that <math|s<rsub|f>> is a bijection. If
    <math|<around*|(|x,y|)>\<in\>s<rsub|f>> then there exists a
    <math|a\<in\>A> such that <math|<around*|(|x,y|)>=<around*|(|R<rsub|f><around*|[|a|]>,f<around*|(|a|)>|)>>
    hence <math|x=R<rsub|f><around*|[|a|]>\<in\>A/R<rsub|f>> and
    <math|y=f<around*|(|a|)>\<Rightarrow\><around*|(|a,y|)>\<in\>f\<Rightarrow\>y\<in\>f<around*|(|A|)>>.
    So that <math|<around*|(|x,y|)>\<in\><around*|(|A/R<rsub|f>|)>\<times\>f<around*|(|A|)>>
    or\ 

    <\equation*>
      s<rsub|f>\<subseteq\><around*|(|A/R<rsub|f>|)>\<times\>f<around*|(|A|)>
    </equation*>

    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>s<rsub|f>>
    then there exists <math|a,a<rprime|'>\<in\>A> such that

    <\equation*>
      <around*|(|x,y|)>=<around*|(|R<rsub|f><around*|[|a|]>,f<around*|(|a|)>|)>\<wedge\><around*|(|x,y<rprime|'>|)>=<around*|(|R<rsub|f><around*|[|a<rprime|'>|]>,f<around*|(|a<rprime|'>|)>|)>
    </equation*>

    or

    <\equation>
      <label|eq 3.1.009>x=R<rsub|f><around*|[|a|]>\<wedge\>y=f<around*|(|a|)>\<wedge\>x=R<rsub|f><around*|[|a<rprime|'>|]>\<wedge\>y<rprime|'>=f<around*|(|a<rprime|'>|)>
    </equation>

    From the above <math|R<rsub|f><around*|[|a|]>=x=R<rsub|f><around*|[|a<rprime|'>|]>>,
    which using [theorem: <reference|equivalence relation R[x]=R[y]>] means
    that <math|a R<rsub|f> a<rprime|'>>, so by the defiition of
    <math|R<rsub|f>> [theorem: <reference|equivalence relation determined by
    a function>] we have <math|f<around*|(|a|)>=f<around*|(|a<rprime|'>|)>>.
    As by [eq: <reference|eq 3.1.009>] <math|y=f<around*|(|a|)>\<wedge\>y<rprime|'>=f<around*|(|a<rprime|'>|)>>
    it follows that <math|y=y<rprime|'>>. So\ 

    <\equation*>
      s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)><text| is a partial
      function>
    </equation*>

    If <math|x\<in\>A/R<rsub|f>> then <math|\<exists\>a\<in\>A> such that
    <math|x=<around*|[|a|]>>, hence if we take <math|y=f<around*|(|A|)>> we
    have that <math|<around*|(|x,y|)>=<around*|(|<around*|[|a|]>,f<around*|(|a|)>|)>\<in\>s<rsub|f>>
    proving that <math|x\<in\>dom<around*|(|s<rsub|f>|)>>. So
    <math|A/R<rsub|f>\<subseteq\>dom<around*|(|f|)>> which by [proposition:
    <reference|function condition (1)>] proves that\ 

    <\equation*>
      s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)><text| is a
      function>
    </equation*>

    Let <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>s<rsub|f>>
    then <math|\<exists\>a,a<rprime|'>\<in\>A> such that
    <math|<around*|(|x,y|)>=<around*|(|R<rsub|f><around*|[|a|]>,f<around*|(|a|)>|)>>
    and <math|<around*|(|x<rprime|'>,y|)>=<around*|(|R<rsub|f><around*|[|a<rprime|'>|]>,f<around*|(|a<rprime|'>|)>|)>>,
    hence\ 

    <\equation>
      <label|eq 3.2.009>x=R<rsub|f><around*|[|a|]>\<wedge\>x<rprime|'>=R<rsub|f><around*|[|a<rprime|'>|]>\<wedge\>y=f<around*|(|a|)>\<wedge\>y=f<around*|(|a<rprime|'>|)>
    </equation>

    From <math|f<around*|(|a|)>=y=f<around*|(|a<rprime|'>|)>> it follows that
    <math|f<around*|(|a|)>=f<around*|(|a<rprime|'>|)>>, which by the
    defiition of <math|R<rsub|f>> [theorem: <reference|equivalence relation
    determined by a function>] proves that <math|a R<rsub|f> a<rprime|'>>.
    Using [theorem: <reference|equivalence relation R[x]=R[y]> it follows
    that <math|R<rsub|f><around*|[|a|]>=R<rsub|f><around*|[|a<rprime|'>|]>>
    or using [eq: <reference|eq 3.2.009>] that <math|x=x<rprime|'>>. So we
    have proved that\ 

    <\equation>
      <label|eq 3.3.009>s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)><text|
      is injective>
    </equation>

    Let <math|y\<in\>f<around*|(|A|)>> then there exist a <math|a\<in\>A>
    such that <math|<around*|(|a,y|)>\<in\>f\<Rightarrow\>y=f<around*|(|a|)>>.
    But then <math|<around*|(|R<rsub|f><around*|[|a|]>,y|)>=<around*|(|R<rsub|f><around*|[|a|]>,f<around*|(|a|)>|)>\<in\>s<rsub|f>>
    proving that <math|y\<in\>range<around*|(|s<rsub|f>|)>>. So
    <math|A/R<rsub|f>\<subseteq\>range<around*|(|s<rsub|f>|)>> which by
    [proposition: <reference|function surjection condition>] proves that\ 

    <\equation>
      <label|eq 3.4.009>s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)><text|
      is surjective>
    </equation>

    Combining [eq: <reference|eq 3.3.009>] and [eq: <reference|eq 3.4.009>]
    it follows that\ 

    <\equation*>
      s<rsub|f>:A/R<rsub|f>\<rightarrow\>f<around*|(|A|)><text| is a
      bijection>
    </equation*>

    Now we proceed to prove that <math|f=<around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>>.
    Let <math|<around*|(|x,u|)>\<in\><around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>>
    then <math|\<exists\>y> such that <math|<around*|(|x,y|)>\<in\>f<rsub|R<rsub|f>>\<wedge\><around*|(|y,u|)>\<in\>i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>>,
    from <math|<around*|(|y,u|)>\<in\>i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>>
    \<exists\>z such that <math|<around*|(|y,z|)>\<in\>s<rsub|f>\<wedge\><around*|(|z,u|)>\<in\>i<rsub|f<around*|(|A|)>>>,
    summarized

    <\equation>
      <label|eq 3.5.009><around*|(|x,y|)>\<in\>f<rsub|R<rsub|f>>\<wedge\><around*|(|y,z|)>\<in\>s<rsub|f>\<wedge\><around*|(|z,u|)>\<in\>i<rsub|f<around*|(|A|)>>
    </equation>

    From <math|<around*|(|x,y|)>\<in\>f<rsub|R<rsub|f>>> it follows that
    <math|\<exists\>a\<in\>A> such that <math|<around*|(|x,y|)>=<around*|(|a,R<rsub|f><around*|[|a|]>|)>>
    or\ 

    <\equation>
      <label|eq 3.6.009>x=a\<wedge\>y=R<rsub|f><around*|[|a|]>
    </equation>

    From <math|<around*|(|y,z|)>\<in\>s<rsub|f>> it folows that
    <math|\<exists\>a<rprime|'>\<in\>A> such that
    <math|<around*|(|y,z|)>=<around*|(|R<rsub|f><around*|[|a<rprime|'>|]>,f<around*|(|a<rprime|'>|)>|)>>
    or <math|y=R<rsub|f><around*|[|a<rprime|'>|]>\<wedge\>z=f<around*|(|a<rprime|'>|)>>.
    As <math|y\<equallim\><rsub|<text|[eq: <reference|eq
    3.6.009>]>>R<rsub|f><around*|[|a|]>> we have that
    <math|R<rsub|f><around*|[|a|]>=R<rsub|f><around*|[|a<rprime|'>|]>>, which
    by [theorem: <reference|equivalence relation R[x]=R[y]>] proves that
    <math|a R<rsub|f> a<rprime|'>>, so by the definition of <math|R<rsub|f>>
    we have <math|f<around*|(|a|)>=f<around*|(|a<rprime|'>|)>> hence
    <math|z=f<around*|(|a|)>>. From <math|<around*|(|z,u|)>\<in\>i<rsub|f<around*|(|A|)>>>
    it follows that <math|z=u> hence <math|u=f<around*|(|a|)>>. As
    <math|x\<equallim\><rsub|<text|[eq: <reference|eq 3.6.009>]>>a> it
    follows that <math|<around*|(|x,u|)>=<around*|(|a,f<around*|(|a|)>|)>\<in\>f>.
    Hence\ 

    <\equation>
      <label|eq 3.7.009><around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>\<subseteq\>f
    </equation>

    Finally if <math|<around*|(|x,y|)>\<in\>f> then as
    <math|f\<subseteq\>A\<times\>B> proves that <math|x\<in\>A> and
    <math|f<around*|(|x|)>=y\<in\>f<around*|(|A|)>>. Hence
    <math|<around*|(|R<rsub|f><around*|[|x|]>,f<around*|(|x|)>|)>\<in\>s<rsub|f>>,
    <math|<around*|(|x,R<rsub|f><around*|[|x|]>|)>\<in\>f<rsub|R<rsub|f>>>
    and <math|<around*|(|f<around*|(|x|)>,y|)>=<around*|(|f<around*|(|x|)>,f<around*|(|x|)>|)>\<in\>i<rsub|f<around*|(|A|)>>>.
    So that <math|<around*|(|R<rsub|f><around*|[|x|]>,y|)>\<in\>i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>>
    and <math|<around*|(|x,R<rsub|f><around*|[|x|]>|)>\<in\>f<rsub|R<rsub|f>>>
    proving that <math|<around*|(|x,y|)>\<in\><around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>>.
    So <math|f\<subseteq\><around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>>
    which combined with [eq: <reference|eq 3.7.009>] gives\ 

    <\equation*>
      f=<around*|(|i<rsub|f<around*|(|A|)>>\<circ\>s<rsub|f>|)>\<circ\>f<rsub|R<rsub|f>>
    </equation*>
  </proof>

  <\notation>
    For the rest of this book we use the standard convention of noting a
    equivalence relation as <math|\<sim\>>, The definition of <math|\<sim\>>
    should then be clear from the context. If many equivalence relations are
    used in the same context we use superscripts like
    <math|\<sim\><rsub|\<bbb-R\>>> and <math|\<sim\><rsub|\<bbb-Z\>>> to
    avoid conflicts.
  </notation>

  <section|Partial ordered classes>

  <subsection|Order relation>

  First we define a partial order relation that allows us to compare two
  elements and specify which element 'lies before' another element. \ 

  <\definition>
    <label|order preorder><index|preorder><dueto|Pre-order>Let <math|A> be a
    class then a relation <math|R\<subseteq\>A\<times\>A> in <math|A> is a
    pre-order if it is <with|font-series|bold|reflexive> and
    <with|font-series|bold|transitive> or in other words:

    <\description>
      <item*|reflectivity><math|\<forall\>x\<in\>A> we have <math|x R x>

      <item*|transitivity>If <math|x R y\<wedge\>y R z> then <math|x R z>
    </description>
  </definition>

  <\definition>
    <label|order preordered class><index|pre-ordered
    class><math|<around*|\<langle\>|A,R|\<rangle\>>> is a pre-ordered class
    iff <math|A> is a class and <math|R> is a pre-order in <math|A>
  </definition>

  A order relation is a pre-order with one extra condition

  <\definition>
    <label|order order relation><index|order relation><dueto|Order
    relation>If <math|A> is a class then a relation
    <math|R\<subseteq\>A\<times\>A> in <math|A> is a
    <with|font-series|bold|order> if it is a pre-order that is anti-symmetric
    or in other words:

    <\description>
      <item*|reflectivity><math|\<forall\>x\<in\>A> we have <math|x R x>

      <item*|anti-symmetry>If <math|x R y\<wedge\>y R x> then <math|x=y>

      <item*|transitive>If <math|x R y\<wedge\>y R z> then <math|x R z>
    </description>
  </definition>

  <\definition>
    <label|order partial ordered class><index|partial ordered
    class><dueto|Partial ordered class><math|<around*|\<langle\>|A,R|\<rangle\>>>
    is a <with|font-series|bold|partial ordered class> if <math|A> is a class
    and <math|R> is a order.
  </definition>

  <\notation>
    <index|<math|\<leqslant\>>>We use the standard convention of noting a
    pre-order relation as <math|\<leqslant\>>, The definition of
    <math|\<leqslant\>> should then be clear from the context. If many
    pre-order relations are used in the same context we use superscripts like
    <math|\<leqslant\><rsub|\<bbb-R\>>> and
    <math|\<leqslant\><rsub|\<bbb-Z\>>> or <math|\<preccurlyeq\>> to avoid
    conflicts.
  </notation>

  <\definition>
    <index|<math|\<less\>>>If <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>>
    is a pre-ordered class [or partial ordered class] then <math|x\<less\>y>
    is equivalen with <math|x\<leqslant\>y\<wedge\>x\<neq\>y>
  </definition>

  <\theorem>
    <label|order strict order>If <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>>
    is a partially ordered set then

    <\enumerate>
      <item><math|x\<leqslant\>y\<wedge\>y\<less\>z\<Rightarrow\>x\<less\>z>

      <item><math|x\<less\>y\<wedge\>y\<leqslant\>z\<Rightarrow\>x\<less\>z>

      <item><math|x\<less\>y\<wedge\>y\<less\>z\<Rightarrow\>x\<less\>z>

      <item><math|<around*|(|x\<less\>y\<vee\>x=y|)>\<Leftrightarrow\><around*|(|x\<leqslant\>y|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<leqslant\>y\<wedge\>y\<less\>z> then
      <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z\<wedge\>y\<neq\>z>, so that
      <math|x\<leqslant\>z> and <math|y\<neq\>z>. Assume that <math|x=z> then
      <math|z\<leqslant\>y\<equallim\><rsub|y\<leqslant\>z>z=y> contradicting
      <math|y\<neq\>z>, so we must have <math|x\<neq\>z>, which together with
      <math|x\<leqslant\>z> gives\ 

      <\equation*>
        x\<less\>z
      </equation*>

      <item>If <math|x\<less\>y\<wedge\>y\<leqslant\>z> then
      <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z\<wedge\>x\<neq\>y>, so that
      <math|x\<leqslant\>z> and <math|x\<neq\>y>. Assume that <math|x=z> then
      <math|y\<leqslant\>x\<Rightarrowlim\><rsub|x\<leqslant\>y>y=x>
      contradicting <math|x\<neq\>y>, so we must have <math|x\<neq\>z>, which
      together with <math|x\<leqslant\>z> gives\ 

      <\equation*>
        x\<less\>z
      </equation*>

      <item>If <math|x\<less\>y\<wedge\>y\<less\>z> then
      <math|x\<neq\>y\<wedge\>x\<leqslant\>y\<wedge\>y\<less\>z> so that by
      (1) we have <math|x\<less\>z>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x\<less\>y\<vee\>x=y|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<around*|(|x\<leqslant\>y\<wedge\>x\<neq\>y|)>\<vee\>x=y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<around*|(|x\<leqslant\>y\<vee\>x=y|)>\<wedge\><around*|(|x\<neq\>y\<vee\>x=y|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<leqslant\>y\<vee\>x=y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<leqslant\>y>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\example>
    <label|order inclusion is a order>Let <math|A> be a class and
    <math|\<leqslant\>> defined by <math|\<leqslant\>=<around*|{|<around*|(|x,y|)>\<in\>\<cal-P\><around*|(|A|)>\<times\>\<cal-P\><around*|(|A|)>\|x\<subseteq\>y|}>>
    then <math|<around*|\<langle\>|\<cal-P\><around*|(|A|)>,\<leqslant\>|\<rangle\>>>
    is a partial ordered class
  </example>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|B\<in\>\<cal-P\><around*|(|A|)>> then by
      [theorem: <reference|class properties (1)>] <math|A\<subseteq\>A> so
      that <math|A\<leqslant\>A>

      <item*|anti-symmetric>If <math|A\<leqslant\>B> and
      <math|B\<leqslant\>A> then <math|A\<subseteq\>B\<wedge\>B\<subseteq\>A>
      so that by [theorem: <reference|class properties (1)>] <math|A=B>

      <item*|transitivity>If <math|A\<leqslant\>B\<wedge\>B\<leqslant\>C>
      then <math|A\<subseteq\>B\<wedge\>B\<subseteq\>C> so that by [theorem:
      <reference|class properties (1)>] <math|A\<subseteq\>C> or
      <math|A\<leqslant\>C>
    </description>
  </proof>

  Every pre-order can be used as the base to create a order relation as is
  expressesd in the following theorem. The basic idea is that
  <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x\<Rightarrow\>x=y> is missing
  from a pre-order. By defining a equivalence relation <math|\<sim\>> such
  that <math|x\<sim\>y> if <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> we
  turn this in equality of equivalence clasess. This is a typical example
  about the use of equivalence relations, they allow you to define a new type
  of equality, so that objects that are not equal have associated equivalence
  classes that are equal.

  <\theorem>
    <label|eq order preorder to order>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a pre-ordered
    set then we have\ 

    <\enumerate>
      <item><math|\<sim\>\<subseteq\>A\<times\>A> defined by
      <math|\<sim\>=<around*|{|<around*|(|x,y|)>\<in\>A\|x\<leqslant\>y\<wedge\>y\<leqslant\>x|}>>
      is a equivalence relation

      <item>Define <math|\<preccurlyeq\>\<subseteq\><around*|(|A/\<sim\>|)>\<times\><around*|(|A/\<sim\>|)>>
      by\ 

      <\equation*>
        \<preccurlyeq\>=<around*|{|<around*|(|x,y|)>\<in\><around*|(|X/\<sim\>|)>\<times\><around*|(|X/\<sim\>|)>\|\<exists\>x<rprime|'>\<in\>\<sim\><around*|[|x|]><text|
        and >\<exists\>y<rprime|'>\<in\>\<sim\><around*|[|y|]><text| such
        that <math|x<rprime|'>\<leqslant\>y<rprime|'>>>|}>
      </equation*>

      then <math|\<preccurlyeq\>> is a order relation in <math|A/\<sim\>>. So
      <math|<around*|\<langle\>|A/\<sim\>,\<preccurlyeq\>|\<rangle\>>> is a
      partial ordered set

      <item><math|\<forall\>x,y\<in\>A> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|y|]>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>To prove that <math|\<sim\>> is a equivalence relation note:

      <\description>
        <item*|reflectivity>If <math|x\<in\>A> then <math|x\<leqslant\>x>
        proving that <math|x\<sim\>x>

        <item*|symmetric>If <math|x\<sim\>y> then
        <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x\<Rightarrow\>y\<leqslant\>x\<wedge\>x\<leqslant\>y>
        so that <math|y\<sim\>x>

        <item*|transitive>If <math|x\<sim\>y<infix-and>y\<sim\>z> then
        <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x\<wedge\>y\<leqslant\>z\<wedge\>z\<leqslant\>y>
        so that <math|x\<leqslant\>z> and <math|z\<leqslant\>x> or
        <math|x\<sim\>z>
      </description>

      <item>To prove that <math|\<preccurlyeq\>> is a order relation we must
      prove reflectivity, symmetry and transitivity:

      <\description>
        <item*|reflexivity>Take <math|\<sim\><around*|[|x|]>> then as
        <math|x\<leqslant\>x> there exists a
        <math|u\<in\>\<sim\><around*|[|x|]>> and
        <math|v\<in\>\<sim\><around*|[|x|]>> such that <math|u\<leqslant\>v>
        [just take <math|u=x=v>] so that

        <\equation*>
          \<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|x|]>
        </equation*>

        <item*|symmetry>Let <math|\<sim\><around*|[|x|]>\<leqslant\>\<sim\><around*|[|y|]>>
        and <math|\<sim\><around*|[|y|]>\<leqslant\>\<sim\><around*|[|x|]>>
        then <math|\<exists\>x<rprime|'>,x<rprime|''>\<in\>\<sim\><around*|[|x|]>>,
        <math|\<exists\>y<rprime|'>y<rprime|''>\<in\>\<sim\><around*|[|y|]>>
        such that\ 

        <\equation*>
          x<rprime|'>\<leqslant\>y<rprime|'>\<wedge\>y<rprime|''>\<leqslant\>x<rprime|''>
        </equation*>

        From <math|\<exists\>x<rprime|'>,x<rprime|''>\<in\>\<sim\><around*|[|x|]>>,
        <math|\<exists\>y<rprime|'>y<rprime|''>\<in\>\<sim\><around*|[|y|]>>
        we have\ 

        <\equation*>
          x<rprime|'>\<leqslant\>x\<wedge\>x\<leqslant\>x<rprime|'>\<wedge\>x<rprime|''>\<leqslant\>x\<wedge\>x\<leqslant\>x<rprime|''>\<wedge\>y<rprime|'>\<leqslant\>y\<wedge\>y\<leqslant\>y<rprime|'>\<wedge\>y<rprime|''>\<leqslant\>y\<wedge\>y\<leqslant\>y<rprime|''>
        </equation*>

        From <math|x\<leqslant\>x<rprime|'>> and
        <math|x<rprime|'>\<leqslant\>y<rprime|'>> we have
        <math|x\<leqslant\>y<rprime|'>>, as <math|y<rprime|'>\<leqslant\>y>
        we have\ 

        <\equation*>
          x\<leqslant\>y
        </equation*>

        From <math|y\<leqslant\>y<rprime|''>> and
        <math|y<rprime|''>\<leqslant\>x<rprime|''>> we have
        <math|y\<leqslant\>x<rprime|''>>, as <math|x<rprime|''>\<leqslant\>x>
        it follows that

        <\equation*>
          y\<leqslant\>x
        </equation*>

        Finally from <math|x\<leqslant\>y> and <math|y\<leqslant\>x> we have
        that <math|x\<sim\>y which by <around*|[|theorem:<reference|equivalence
        relation R[x]=R[y]>|]>> gives\ 

        <\equation*>
          \<sim\><around*|[|x|]>=\<sim\><around*|[|y|]>
        </equation*>

        <item*|transitivity>Assume that <math|\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|y|]>>
        and <math|\<sim\><around*|[|y|]>\<preccurlyeq\>\<sim\><around*|[|z|]>>
        then we have the existance of <math|x<rprime|'>\<in\>\<sim\><around*|[|x|]>>,
        <math|y<rprime|'>,y<rprime|''>\<in\>\<sim\><around*|[|y|]>> and
        <math|z<rprime|'>\<in\>\<sim\><around*|[|z|]>> such that\ 

        <\equation*>
          x<rprime|'>\<leqslant\>y<rprime|'>\<wedge\>y<rprime|''>\<leqslant\>z<rprime|'>
        </equation*>

        From <math|><math|x<rprime|'>\<in\>\<sim\><around*|[|x|]>>,
        <math|y<rprime|'>,y<rprime|''>\<in\>\<sim\><around*|[|y|]>> and
        <math|z<rprime|'>\<in\>\<sim\><around*|[|z|]>> it follows that\ 

        <\equation*>
          x<rprime|'>\<leqslant\>x\<wedge\>x\<leqslant\>x<rprime|'>\<wedge\>y<rprime|'>\<leqslant\>y\<wedge\>y\<leqslant\>y<rprime|'>\<wedge\>y<rprime|''>\<leqslant\>y\<wedge\>y\<leqslant\>y<rprime|''>\<wedge\>z<rprime|'>\<leqslant\>z\<wedge\>z\<leqslant\>z<rprime|'>
        </equation*>

        From <math|x\<leqslant\>x<rprime|'>> and
        <math|x<rprime|'>\<leqslant\>y<rprime|'>> we have
        <math|x\<leqslant\>y<rprime|'>>, as <math|y<rprime|'>\<leqslant\>y>
        we have <math|x\<leqslant\>y>, as <math|y\<leqslant\>y<rprime|''>> it
        follows that <math|x\<leqslant\>y<rprime|''>>, from
        <math|y<rprime|''>\<leqslant\>z<rprime|'>> we have that
        <math|x\<leqslant\>z<rprime|'>> and finally from
        <math|z<rprime|'>\<leqslant\>z> it follows that
        <math|x\<leqslant\>z>. Hence

        <\equation*>
          \<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|z|]>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<leqslant\>y> then as
        <math|x\<in\>\<sim\><around*|[|x|]>> and
        <math|y\<in\>\<sim\><around*|[|y|]>> we have
        <math|\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|y|]>>

        <item*|<math|\<Leftarrow\>>>If <math|\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|y|]>>
        then <math|\<exists\>x<rprime|'>\<in\>\<sim\><around*|[|x|]>> and
        <math|\<exists\>y<rprime|'>\<in\>\<sim\><around*|[|y|]>> such that

        <\equation*>
          x<rprime|'>\<leqslant\>y<rprime|'>
        </equation*>

        From <math|x<rprime|'>\<in\>\<sim\><around*|[|x|]>> and
        <math|y<rprime|'>\<in\>\<sim\><around*|[|y|]>> we have that\ 

        <\equation*>
          x<rprime|'>\<leqslant\>x\<wedge\>x\<leqslant\>x<rprime|'>\<wedge\>y<rprime|'>\<leqslant\>y\<wedge\>y\<leqslant\>y<rprime|'>
        </equation*>

        From <math|x\<leqslant\>x<rprime|'>> and
        <math|x<rprime|'>\<leqslant\>y<rprime|'>> it follows that
        <math|x\<leqslant\>y<rprime|'>> and as
        <math|y<rprime|'>\<leqslant\>y> it follows that\ 

        <\equation*>
          x\<leqslant\>y
        </equation*>
      </description>
    </enumerate>
  </proof>

  Given a partial ordered class then we can induce the order on a sub class
  making the subclass also a partial ordered class.

  <\theorem>
    <label|order partial order on sub class>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered sets and <math|B\<subseteq\>A> then <math|\<leqslant\><rsub|\|B>>
    defined by\ 

    <\equation*>
      \<leqslant\><rsub|\|B>=\<leqslant\><big|cap>B\<times\>D=B
    </equation*>

    is a order relation in <math|B> making
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> a partial
    ordered set.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|x\<in\>B> then <math|x\<leqslant\>x> or
      <math|<around*|(|x,x|)>\<in\>\<leqslant\>\<Rightarrowlim\><rsub|x\<in\>B><around*|(|x,x|)>\<in\>\<leqslant\><big|cap><around*|(|B\<times\>B|)>>
      hence <math|x \<leqslant\><rsub|\|B>y>

      <item*|symmetry>If <math|x\<leqslant\><rsub|<around*|\||B|\<nobracket\>>>y\<wedge\>y\<leqslant\><rsub|<around*|\||B|\<nobracket\>>>x\<Rightarrow\>x\<leqslant\>y\<wedge\>y\<leqslant\>x\<Rightarrow\>x=y>

      <item*|transitivity>If <math|x\<leqslant\><rsub|<around*|\||B|\<nobracket\>>>y\<wedge\>y\<leqslant\><rsub|<around*|\||B|\<nobracket\>>>z\<Rightarrow\>x\<leqslant\>y\<wedge\>y\<leqslant\>z\<Rightarrow\>x\<leqslant\>z\<Rightarrowlim\><rsub|x,z\<in\>B>x\<leqslant\><rsub|<around*|\||B|\<nobracket\>>>z>
    </description>
  </proof>

  The following shows a technique of defining a partial order on the
  cartesian product of partial ordered set.

  <\theorem>
    <label|order lexical order><dueto|Lexical ordering>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> be partial
    ordered classes then <math|\<leqslant\><rsub|A\<times\>B>> defined by\ 

    <\equation*>
      \<leqslant\><rsub|A\<times\>B>=<around*|{|<around*|(|<around*|(|x,y|)>,<around*|(|u,v|)>|)>\<in\><around*|(|A\<times\>B|)>\<times\><around*|(|A\<times\>B|)>\|<around*|(|x\<neq\>u\<wedge\>x\<leqslant\><rsub|A>u|)>\<vee\><around*|(|x=y\<wedge\>y\<leqslant\><rsub|B>v|}>|\<nobracket\>>
    </equation*>

    is a order in <math|A\<times\>B> making
    <math|<around*|\<langle\>|<around*|(|A\<times\>B|)>\<times\><around*|(|A\<times\>B|)>,\<leqslant\><rsub|A\<times\>B>|\<rangle\>>>
    a partial ordered set
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|<around*|(|x,y|)>\<in\>A\<times\>B> then
      <math|x\<leqslant\><rsub|A>x\<wedge\>y\<leqslant\><rsub|B>y> proving
      that <math|<around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|x,y|)>>

      <item*|symmetry>Let <math|<around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|u,v|)>\<wedge\><around*|(|u,v|)>\<leqslant\><rsub|A\<times\>B><around*|(|x,y|)>>.
      If <math|x\<neq\>u> we would have <math|x\<leqslant\><rsub|A>u\<wedge\>u\<leqslant\><rsub|A>x\<Rightarrow\>x=u>
      a contradiction. So we must have that <math|x=u> but then
      <math|y\<leqslant\><rsub|B>v\<wedge\>v\<leqslant\><rsub|\|B>y\<Rightarrow\>y=v>
      proving that\ 

      <\equation*>
        <around*|(|x,y|)>=<around*|(|u,v|)>
      </equation*>

      <item*|transitivity>Let <math|<around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|u,v|)>\<wedge\><around*|(|u,v|)>\<leqslant\><rsub|A\<times\>B><around*|(|r,s|)>>
      then we have to consider the folowing cases:

      <\description>
        <item*|<math|x=u>> Then <math|y\<leqslant\><rsub|B>v> and we have the
        following possibilities

        <\description>
          <item*|<math|u=r>>Then <math|v\<leqslant\><rsub|B>s> so that
          <math|y\<leqslant\><rsub|B>s> which as <math|x=r> proves that\ 

          <\equation*>
            <around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|r,s|)>
          </equation*>

          <item*|<math|u\<neq\>r>>Then <math|u\<leqslant\><rsub|A>r\<Rightarrowlim\><rsub|x=u>x\<leqslant\><rsub|A>r>
          which as <math|x\<neq\>r> proves that\ 

          <\equation*>
            <around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|r,s|)>
          </equation*>
        </description>

        <item*|<math|x\<neq\>u>>Then <math|x\<leqslant\><rsub|A>u> and we
        have the following possibilities

        <\description>
          <item*|<math|u=r>>Then <math|x\<leqslant\><rsub|A>u\<Rightarrowlim\><rsub|u=r>x\<leqslant\><rsub|A>r>
          and <math|x\<neq\>r> so that\ 

          <\equation*>
            <around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|r,s|)>
          </equation*>

          <item*|<math|u\<neq\>r>>Then <math|u\<leqslant\><rsub|A>r> so that
          <math|x\<leqslant\><rsub|A>r>. If <math|x=r> then we would have
          <math|x\<leqslant\><rsub|A>u\<wedge\>u\<leqslant\><rsub|A>x>
        </description>

        giving <math|x=u> contradicting <math|x\<neq\>u>. So we must have
        <math|x\<neq\>r> which as <math|x\<leqslant\><rsub|A>r> gives\ 

        <\equation*>
          <around*|(|x,y|)>\<leqslant\><rsub|A\<times\>B><around*|(|r,s|)>
        </equation*>
      </description>
    </description>
  </proof>

  <\definition>
    <label|order comparable><index|comparable elements>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class then <math|x,y\<in\>A> are
    <with|font-series|bold|comparable> if <math|x\<leqslant\>y> or
    <math|y\<leqslant\>x>
  </definition>

  <\theorem>
    <label|order comparable property><label|order comparable
    property><index|comparable elements>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and <math|x,y\<in\>A> comparable elements then we have
    either <math|x\<leqslant\>y> or <math|y\<less\>x>
  </theorem>

  <\proof>
    As <math|x,y> are comparable then we have
    <math|x\<leqslant\>y\<vee\>y\<leqslant\>x>, consider the following cases:

    <\description>
      <item*|<math|x\<leqslant\>y>>hen <math|x\<leqslant\>y>

      <item*|<math|\<neg\><around*|(|x\<leqslant\>y|)>>>then we must have
      <math|y\<leqslant\>x>. If <math|x=y> then as <math|x\<leqslant\>x> we
      have <math|x\<leqslant\>y> contradicting
      <math|\<neg\><around*|(|x\<leqslant\>y|)>> so that <math|x\<neq\>y>
      proving <math|y\<less\>x>.
    </description>

    Hence we have\ 

    <\equation*>
      x\<leqslant\>y\<vee\>y\<less\>x
    </equation*>

    \;
  </proof>

  <\definition>
    <label|totally ordered class><index|totally ordered class><index|fully
    ordered class><index|linear ordered class>A pre-ordered class
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a
    <with|font-series|bold|totally ordered class> iff

    <\equation*>
      \<forall\>x,y\<in\>A<text| we have >x\<leqslant\>y\<vee\>y\<leqslant\>x
    </equation*>

    In other words <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a
    <with|font-series|bold|totally ordered class> if every pair of elements
    are comparable. Other names used in the literature are
    <with|font-series|bold|fully ordered class> or
    <with|font-series|bold|linear ordered class>.
  </definition>

  <\definition>
    <label|order chain><index|chain><dueto|chain>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and <math|B\<subseteq\>A> then <math|B> is called a
    <with|font-series|bold|chain> if <math|\<forall\>x,y\<in\>B> we have that
    <math|x\<leqslant\>y> or <math|y\<leqslant\>x>.
  </definition>

  <\theorem>
    <label|order chain is a totally ordered class>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and <math|B\<subseteq\>A> a chain then
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> is a
    totally ordered class
  </theorem>

  <\proof>
    Using [theorem: <reference|order partial order on sub class>] we have
    that <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> is a
    partial ordered class. Let <math|x,y\<in\>B> then as <math|B> is a chain
    we have that <math|\<forall\>x,y\<in\>B>
    <math|x\<leqslant\>y\<vee\>y\<leqslant\>x> or using the definition of
    <math|\<leqslant\><rsub|\|B>> that <math|x\<leqslant\><rsub|\|B>y\<vee\>y\<leqslant\><rsub|\|B>x>.
  </proof>

  <\theorem>
    <label|order totally ordered subclass>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a totally
    ordered class and <math|B\<subseteq\>A> then <math|B> is a chain [hence
    by [theorem: <reference|order chain is a totally ordered class>]
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> is a
    totally ordered class]
  </theorem>

  <\proof>
    If <math|x,y\<in\>B> then <math|x,y\<in\>A> and as <math|A> is totally
    ordered we have <math|x\<leqslant\>y\<vee\>y\<leqslant\>x> so <math|B> is
    a chain
  </proof>

  <\theorem>
    <label|order totally lexicol ordering>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> be totally
    ordered classes then <math|<around*|\<langle\>|A\<times\>B,\<leqslant\><rsub|A\<times\>B>|\<rangle\>>>
    is a totally ordered class.
  </theorem>

  <\proof>
    First <math|<around*|\<langle\>|A\<times\>B,\<leqslant\><rsub|A\<times\>B>|\<rangle\>>>
    is a partially ordered class by [theorem: <reference|order lexical
    order>]. If \ <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>A\<times\>B>
    then we have for <math|x,x<rprime|'>> either\ 

    <\description>
      <item*|<math|x=x<rprime|'>>>As <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is fully ordered we have either\ 

      <\description>
        <item*|<math|y\<leqslant\>y<rprime|'>>>then
        <math|<around*|(|x,y|)>\<leqslant\><around*|(|x<rprime|'>,y<rprime|'>|)>>

        <item*|<math|y<rprime|'>\<leqslant\>y>>then
        <math|<around*|(|x<rprime|'>,y<rprime|'>|)>\<leqslant\><around*|(|x,y|)>>
      </description>

      <item*|<math|x\<neq\>x<rprime|'>>>As
      <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> is fully
      ordered we have either\ 

      <\description>
        <item*|<math|x\<leqslant\>x<rprime|'>>>then
        <math|<around*|(|x,y|)>\<leqslant\><around*|(|x<rprime|'>,y<rprime|'>|)>>

        <item*|<math|x<rprime|'>\<leqslant\>x>>then
        <math|<around*|(|x<rprime|'>,y<rprime|'>|)>\<leqslant\><around*|(|x,y|)>>
      </description>
    </description>
  </proof>

  <\definition>
    <label|order initial segement><index|initial
    segment><index|<math|\<cal-S\><rsub|a>>><dueto|Initial Segment>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class, <math|a\<in\>A> then a <with|font-series|bold|intial
    segment of A determined by a> noted as <math|S<rsub|A,a>> is defined by\ 

    <\equation*>
      S<rsub|A,a>=<around*|{|x\<in\>A\|x\<less\>a|}>
    </equation*>
  </definition>

  <\theorem>
    <label|order intial sergment property>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|P> is a initial segment of <math|A> and <math|Q>
    is a initial segement of <math|P> [using the induced order
    <math|\<leqslant\><rsub|\|P>>] then <math|A> is a initial segment of
    <math|A>
  </theorem>

  <\proof>
    Using the hypothese there exists <math|a\<in\>A> such that
    <math|P=<around*|{|x\<in\>A\|x\<less\>a|}>> and a <math|b\<in\>P> such
    that <math|Q=<around*|{|x\<in\>P\|x\<less\>b|}>>. Consider then the
    initial segement <math|S<rsub|A,b>=<around*|{|x\<in\>A\|x\<less\>b|}>> of
    <math|A> determined by <math|a> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>S<rsub|A,b>>|<cell|\<Rightarrow\>>|<cell|x\<in\>A\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|b\<less\>a\<Rightarrow\>x\<less\>b\<Rightarrow\>x\<less\>a>>|<cell|x\<in\>A\<wedge\>x\<less\>a\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\><rsub|\|P>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>Q>>|<row|<cell|x\<in\>Q>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\><rsub|\|P>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|P\<subseteq\>A>>|<cell|x\<in\>A\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>S<rsub|A,b>>>>>
    </eqnarray*>

    Hence <math|Q=S<rsub|A,b>> a initial segement of <math|A>
  </proof>

  Next we define the concept of a Dedekind cut that will be used later to
  define the set of real numbers,

  <\definition>
    <label|order cut><index|cut><dueto|Dedekind cut>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class a pair <math|<around*|\<langle\>|C,D|\<rangle\>>> is a
    <with|font-series|bold|cut> of <math|A> iff

    <\enumerate>
      <item><math|C,D\<subseteq\>A>

      <item><math|C\<neq\>\<varnothing\>\<wedge\>D\<neq\>\<varnothing\>>

      <item><math|C<big|cap>D=\<varnothing\>>

      <item><math|x\<in\>C\<wedge\>y\<leqslant\>x\<Rightarrow\>y\<in\>C>

      <item><math|x\<in\>D\<wedge\>x\<leqslant\>y\<Rightarrow\>D>
    </enumerate>
  </definition>

  <subsection|Order relations and functions>

  Functions between two partial ordered classes can be classified based on
  the fact that they preserve or not preserve the order relation. This is
  expressed in the next definition.

  <\definition>
    <label|order increasing, decreasing><index|increasing
    function><index|decreasing function><index|order homomorphism>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> be partial
    ordered classes and <math|f:A\<rightarrow\>B> a function then:

    <\enumerate>
      <item><math|f:A\<rightarrow\>B> is <with|font-series|bold|increasing>
      if <math|\<forall\>x,y\<in\>A> with <math|x\<leqslant\>y> we have
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Another name that
      is used is <with|font-series|bold|a order homomorphism> [a homorphism
      is a function that preserver a certain operation, in this case the
      order relation]

      <item><math|f:A\<rightarrow\>B> is <with|font-series|bold|strictly
      increasing> if <math|\<forall\>x,y\<in\>A> with <math|x\<less\>y> we
      have <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>>

      <item><math|f:A\<rightarrow\>B> is <with|font-series|bold|decreasing>
      if <math|\<forall\>x,y\<in\>A> with <math|x\<leqslant\>y> we have
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>

      <item><math|f:A\<rightarrow\>B> is <with|font-series|bold|strictly
      decreasing> if <math|\<forall\>x,y\<in\>A> with <math|x\<less\>y> we
      have <math|f<around*|(|y|)>\<less\>f<around*|(|x|)>>

      <item><math|f:A\<rightarrow\>B> is a <with|font-series|bold|order
      isomorphism> if <math|\<forall\>x,y\<in\>A> with
      <math|x\<leqslant\>y\<Leftrightarrow\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>
    </enumerate>
  </definition>

  <\definition>
    <label|order A isomorphism B><index|<math|A\<cong\>B>>Two partial classes
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    <with|font-series|bold|order isomorph> noted as <math|A\<cong\>B> if
    there exists order isomorphism between <math|A> and <math|B>.
  </definition>

  <\theorem>
    <label|order composition of functions>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>,<math|<around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>>>
    be partial ordered classes and <math|f:A\<rightarrow\>B>,
    <math|g:B\<rightarrow\>C> functions then we have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>B> is increaasing and
      <math|g:B\<rightarrow\>C> is increasing then
      <math|g\<circ\>f:A\<rightarrow\>C> is increasing

      <item>If <math|f:A\<rightarrow\>B> is strictly increaasing and
      <math|g:B\<rightarrow\>C> is strictly increasing then
      <math|g\<circ\>f:A\<rightarrow\>C> is strictly increasing

      <item>If <math|f:A\<rightarrow\>B> is a order isomorphism and
      <math|g:B\<rightarrow\>C> is a order isomorphism then
      <math|g\<circ\>f:A\<rightarrow\>C> is order isomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>A> with <math|x\<leqslant\><rsub|A>y> then
      <math|f<around*|(|x|)>\<leqslant\>f<rsub|B><around*|(|y|)>> hence
      <math|<around*|(|g\<circ\>f|)><around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>\<leqslant\><rsub|C>g<around*|(|f<around*|(|y|)>|)>=<around*|(|g\<circ\>f|)><around*|(||)>>.

      <item>Let <math|x,y\<in\>A> with <math|x\<less\><rsub|A>y> then
      <math|f<around*|(|x|)>\<less\><rsub|B>f<around*|(|y|)>> hence
      <math|<around*|(|g\<circ\>f|)><around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>\<less\><rsub|C>g<around*|(|f<around*|(|y|)>|)>=<around*|(|g\<circ\>f|)><around*|(||)>>.

      <item>Let <math|x,y\<in\>A>. If <math|x\<leqslant\><rsub|A>y> then
      <math|f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>> hence
      <math|<around*|(|g\<circ\>f|)><around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>\<leqslant\><rsub|C>g<around*|(|f<around*|(|y|)>|)>=<around*|(|g\<circ\>f|)><around*|(|y|)>>.
      Also if <math|<around*|(|g\<circ\>f|)><around*|(|x|)>\<leqslant\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>
      then <math|g<around*|(|f<around*|(|x|)>|)>\<leqslant\><rsub|C>g<around*|(|f<around*|(|y|)>|)>>
      so that <math|f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>>,
      giving <math|x\<leqslant\><rsub|A>y>.
    </enumerate>
  </proof>

  <\theorem>
    <label|order isomorphism strictly>If <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    partially ordered classes and <math|f:A\<rightarrow\>B> \ a order
    isomorphism then

    <\equation*>
      x\<less\><rsub|A>y\<Leftrightarrow\>f<around*|(|x|)>\<less\><rsub|B>f<around*|(|y|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x\<less\><rsub|A>y> then
      <math|x\<neq\>y> and <math|x\<leqslant\><rsub|A>y\<Rightarrow\>f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>>.
      Assume that <math|f<around*|(|x|)>=f<around*|(|y|)>> then as <math|f>
      is a bijection we would have <math|x=y> contradicting <math|x\<neq\>y>.
      So we must have that <math|f<around*|(|x|)>\<neq\>f<around*|(|y|)>>
      hence\ 

      <\equation*>
        f<around*|(|x|)>\<less\><rsub|B>f<around*|(|y|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f<around*|(|x|)>\<less\><rsub|B>f<around*|(|y|)>>
      we have that <math|f<around*|(|x|)>\<neq\>f<around*|(|y|)>> so that we
      must have <math|x\<neq\>y>. Further as <math|f> is a isomorphism we
      have <math|x\<leqslant\><rsub|A>y>. So\ 

      <\equation*>
        x\<less\><rsub|A>y
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|order condition for isomorphism>If
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    partially ordered classes and <math|f:A\<rightarrow\>B> a bijection then\ 

    <\equation*>
      f:A\<rightarrow\>B<text| is a order isomorphism
      >\<Leftrightarrow\><text| >f:A\<rightarrow\>B<text| and
      >f<rsup|-1>:B\<rightarrow\>A<text| are increasing functions>
    </equation*>
  </theorem>

  <\proof>
    As <math|f:A\<rightarrow\>B> is a bijection we have by [theorems:
    <reference|function bijection has a inverse>, <reference|function
    bijection and inverse>] that <math|f<rsup|=1>:B\<rightarrow\>A> is a
    bijection.

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f:A\<rightarrow\>B> is a
      isomorphism we have that <math|\<forall\>x,y\<in\>A> with
      <math|x\<leqslant\><rsub|A>y\<Rightarrow\>f<around*|(|x|)>\<leqslant\>f<around*|(|b|)>>
      hence <math|f:A\<rightarrow\>B> is increasing. If <math|x,y\<in\>B>
      with <math|x\<leqslant\><rsub|B>y> then

      <\equation*>
        f<around*|(|f<rsup|-1><around*|(|x|)>|)>=*<around*|(|f\<circ\>f<rsup|-1>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>x\<leqslant\><rsub|B>y=<around*|(|f\<circ\>f<rsup|-1>|)><around*|(|y|)>=f<around*|(|f<rsup|-1><around*|(|y|)>|)>
      </equation*>

      which as <math|f> is a isomorphism proves that
      <math|f<rsup|-1><around*|(|x|)>\<leqslant\><rsub|A>f<rsup|-1><around*|(|y|)>>,
      hence <math|f<rsup|-1>> is increasing.

      <item*|<math|\<Leftarrow\>>>Suppose that <math|f,f<rsup|-1>> are
      increasing functions then if <math|x\<leqslant\><rsub|A>y\<Rightarrowlim\><rsub|f
      is increasing>f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>>.
      Further if <math|f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>\<Rightarrowlim\><rsub|f<rsup|-1>
      is increasing>f<rsup|-1><around*|(|f<around*|(|x|)>|)>\<leqslant\><rsub|A>f<rsup|-1><around*|(|f<around*|(|y|)>|)>\<Rightarrow\>x\<leqslant\>y>
    </description>
  </proof>

  <\theorem>
    <label|order isomorphism condition (2)>If
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    partially ordered classes then\ 

    <\enumerate>
      <item><math|1<rsub|A>:A\<rightarrow\>A> is a order isomorphism

      <item>If <math|f:A\<rightarrow\>B> is a order isomorphism then
      <math|f<rsup|-1>:B\<rightarrow\>A> is a order isomorphism

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      order isomorphism's then <math|g\<circ\>f> is a order isomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>By <reference|function identity function> we have that
      <math|Id<rsub|A>:A\<rightarrow\>A> is a bijection then, as
      <math|x=I<rsub|A><around*|(|x|)>> and
      <math|y=Id<rsub|A><around*|(|y|)>>, we have
      <math|x\<leqslant\>y\<Leftrightarrow\>Id<rsub|A><around*|(|x|)>\<leqslant\>Id<rsub|A><around*|(|y|)>>.

      <item>If <math|f:A\<rightarrow\>B> is a isomorphism then by [theorem:
      <reference|function bijection and inverse>] we have that
      <math|f<rsup|-1>:B\<rightarrow\>A> is a bijection. By the previous
      theorem [theorem: <reference|order condition for isomorphism>] we have
      that <math|f<rsup|-1>> is increasing. Further as by <reference|function
      inverse of a bijection is unique> <math|f=<around*|(|f<rsup|-1>|)><rsup|-1>>
      and by [theorem: <reference|order condition for isomorphism>] <math|f>
      is increasing it follows that <math|<around*|(|f<rsup|-1>|)><rsup|-1>>
      is increasing. Using then [theorem: <reference|order condition for
      isomorphism>] it follows that <math|f<rsup|-1>> is a isomorphism.

      <item>This follows from [theorem: <reference|order composition of
      functions>]
    </enumerate>
  </proof>

  <\theorem>
    <label|order properties of the isomorph relation>If
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> and
    <math|<around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>>> are
    partially ordered classes then we have

    <\enumerate>
      <item><math|A\<cong\>A>

      <item>If <math|A\<cong\>B> then <math|B\<cong\>A>

      <item>If <math|A\<cong\>B> and <math|B\<cong\>D> then <math|B\<cong\>D>
    </enumerate>
  </theorem>

  <\proof>
    \ This follows easily from the previous theorem [theorem:
    <reference|order isomorphism condition (2)>]
  </proof>

  <\theorem>
    <label|order condition for isomorphism in a totallu ordered set>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>. be a
    totally ordered class and <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
    is a partially ordered class then a bijective and increasing function
    <math|f:A\<rightarrow\>B> is a isomorphism
  </theorem>

  <\proof>
    Suppose that <math|f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>>
    then since <math|A> is fully ordered we have that <math|x,y> are
    comparable therefore by [theorem: <reference|order comparable>] we have
    the following exclusive cases

    <\enumerate>
      <item><math|x\<leqslant\><rsub|A>y> in this case our theorem is proved

      <item><math|y\<less\><rsub|A>x> in this case we would have
      <math|f<around*|(|y|)>\<leqslant\><rsub|B>f<around*|(|x|)>\<Rightarrow\>f<around*|(|y|)>=f<around*|(|x|)>\<Rightarrowlim\><rsub|f
      is injective>x=y> a contradiction. So this case does not occurs.
    </enumerate>
  </proof>

  <subsection|Min, max, supremums and infinums>

  \;

  <\definition>
    <label|order maximal minimal element><index|maximal
    element><index|minimal element>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    be a pre-ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item><math|m> is a <with|font-series|bold|maximal element> of <math|A>
      iff <math|m\<in\>A> and if <math|x\<in\>A> is such that
      <math|m\<leqslant\>x> then <math|x\<leqslant\>m>

      <item><math|m> is a <with|font-series|bold|minimal element> of <math|A>
      iff <math|m\<in\>A> and if <math|x\<in\>A> is such that
      <math|x\<leqslant\>m> then <math|m\<leqslant\>x>
    </enumerate>
  </definition>

  <\definition>
    <label|order greatest lowest element><index|greatest
    element><index|lowest element>If <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    is a partial ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item><math|m> is the <with|font-series|bold|greatest element >of
      <math|A> iff <math|m\<in\>A> and <math|\<forall\>x\<in\>A> we have
      <math|x\<leqslant\>m>

      <item><math|m> is the <with|font-series|bold|least element> of <math|A>
      iff <math|m\<in\>A> and <math|\<forall\>x\<in\>A> we have
      <math|m\<leqslant\>x>
    </enumerate>
  </definition>

  <\note>
    There is a subtile difference between the definition of a maximal
    (minimal) element and the greatest (least) element. If <math|m> is the
    greatest (least) element of <math|A> then every element in <math|A> is
    comparable with <math|m>, which is not the case if <math|m> is a maximal
    (minimal) element of <math|A>.
  </note>

  <\note>
    The empty set <math|\<varnothing\>> can not have a maximal, minimal
    element, greatest element or least element.
  </note>

  <\theorem>
    <label|order greatest and lowest element are
    unique><index|<math|max<around*|(|A|)>>><index|<math|min<around*|(|A|)>>>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|A\<subseteq\>X> then

    <\enumerate>
      <item>If <math|m,m<rprime|'>> are greatest elements of <math|A> then
      <math|m=m<rprime|'>>

      <item>If <math|m,m<rprime|'>> are least elements of <math|A> then
      <math|m=m<rprime|'>>
    </enumerate>

    The unique greatest element of <math|A> (if it exist) is called the
    maximum of <math|A> and noted as <math|max<around*|(|A|)>>, the unique
    least element of <math|A> (if it exist) is called the minimum of <math|A>
    and noted as <math|min<around*|(|A|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|m,m<rprime|'>> are greatest ekements of <math|A> then as
      <math|m,m<rprime|'>\<in\>A> we have
      <math|m\<leqslant\>m<rprime|'>\<wedge\>m<rprime|'>\<leqslant\>m> so
      that <math|m=m<rprime|'>>.

      <item>If <math|m,m<rprime|'>> are least ekements of <math|A> then as
      <math|m,m<rprime|'>\<in\>A> we have
      <math|m\<leqslant\>m<rprime|'>\<wedge\>m<rprime|'>\<leqslant\>m> so
      that <math|m=m<rprime|'>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|order min(A)\<less\>=max(A)>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|A\<subseteq\>X> such that
    <math|min<around*|(|A|)>> and <math|max<around*|(|A|)>> exist then
    <math|min<around*|(|A|)>\<leqslant\>max<around*|(|A|)>>
  </theorem>

  <\proof>
    As <math|min<around*|(|A|)>\<in\>A> we have by definition that
    <math|min<around*|(|A|)>\<leqslant\>max<around*|(|A|)>>.
  </proof>

  <\theorem>
    <label|order maximum of class with bigger elements>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered class, <math|A\<subseteq\>X>, <math|B\<subseteq\>X> then

    <\enumerate>
      <item>If <math|max<around*|(|A|)>> and <math|max<around*|(|B|)>> exist
      and <math|\<forall\>x\<in\>A> <math|\<exists\>y\<in\>B> such that
      <math|x\<leqslant\>y> then <math|max<around*|(|A|)>\<leqslant\>max<around*|(|B|)>>

      <item>If <math|min<around*|(|A|)>> and <math|min<around*|(|B|)>> exist
      <math|\<forall\>x\<in\>B> <math|\<exists\>y\<in\>A> such that
      <math|y\<leqslant\>x> then then <math|min<around*|(|A|)>\<leqslant\>min*<around*|(|B|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|max*<around*|(|A|)>\<in\>A> there exist a
      <math|y\<in\>B> such that <math|max<around*|(|A|)>\<leqslant\>y>, as
      <math|y\<leqslant\>max<around*|(|B|)>> we have

      <\equation*>
        max<around*|(|A|)>\<leqslant\>max<around*|(|B|)>
      </equation*>

      <item>As <math|min<around*|(|B|)>\<in\>A> there exist a <math|y\<in\>A>
      such that <math|y\<leqslant\>min<around*|(|B|)>>, as
      <math|min<around*|(|A|)>\<leqslant\>y> we have\ 

      <\equation*>
        min<around*|(|A|)>\<leqslant\>max<around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    <label|order upport lower bound><index|upper bound><index|lower bound>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item><math|u\<in\>A> is a <with|font-series|bold|upper bound> of
      <math|A> if <math|\<forall\>a\<in\>A> <math|a\<leqslant\>u>.

      <item><math|A> is <with|font-series|bold|bounded above> if it has a
      upper bound.

      <item><math|l\<in\>A> is a <with|font-series|bold|lower bound> of
      <math|A> if <math|\<forall\>x\<in\>A> <math|l\<leqslant\>a>

      <item><math|A> is <with|font-series|bold|bounded below> if it has a
      lower bound.

      <item><math|\<upsilon\><around*|(|A|)>=<around*|{|x\<in\>X\|x<text| is
      a upper bound of >A|}>> [the class of upper bound of <math|A>]

      <item><math|\<lambda\><around*|(|A|)>=<around*|{|x\<in\>X\|x<text| is a
      lower bound of >A|}>> [the class of lower bounds of <math|A>]
    </enumerate>
  </definition>

  <\example>
    <label|order lower upper bounds of empty set>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> then
    <math|\<upsilon\><around*|(|\<varnothing\>|)>=X> and
    <math|\<lambda\><around*|(|\<varnothing\>|)>=X>
  </example>

  <\proof>
    Let <math|x\<in\>X> then as <math|\<forall\>a\<in\>\<varnothing\>>
    <math|a\<leqslant\>x> [or <math|x\<leqslant\>a>] is vacuously satisfied
    <math|X\<subseteq\>\<upsilon\><around*|(|A|)>> and
    <math|X\<subseteq\>\<lambda\><around*|(|A|)>>, \ which as
    <math|\<upsilon\><around*|(|X|)>\<subseteq\>X> and
    <math|\<lambda\><around*|(|X|)>\<subseteq\>X> proves
    <math|\<upsilon\><around*|(|A|)>=X=\<lambda\><around*|(|A|)>>.
  </proof>

  <\definition>
    <label|order supremum infinum><index|supremum><index|infinum><index|<math|inf<around*|(|A|)>>><index|<math|sup<around*|(|A|)>>>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item>If <math|min<around*|(|\<upsilon\><around*|(|A|)>|)>> exists then
      <math|min<around*|(|\<upsilon\><around*|(|A|)>|)>> is called the
      supremum of <math|A> and noted as <math|sup<around*|(|A|)>>.

      <item>If <math|max<around*|(|\<lambda\><around*|(|A|)>|)>> exists then
      <math|max<around*|(|\<lambda\><around*|(|A|)>|)>> is called the infinum
      of <math|A> and noted as <math|inf<around*|(|A|)>>
    </enumerate>
  </definition>

  \ In other words if <math|\<upsilon\><around*|(|A|)>> has a least element
  then the supremum of <math|A> is this unique, by [theorem: <reference|order
  greatest and lowest element are unique>], element. So
  <math|sup<around*|(|A|)>> is the least upper bound of <math|A> [if it
  exist] and it is itself a upper bound. If <math|\<lambda\><around*|(|A|)>>
  has a least element then the infinum of <math|A> is this unique, by
  [theorem: <reference|order greatest and lowest element are unique>],
  element. So <math|inf<around*|(|A|)>> is the greatest lower bound [if it
  exist] and it is itself a lower bound.

  The following theorem wil be used a lot of time when dealing with supremums
  and infinums.

  <\theorem>
    <label|order sup, inf stalls>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    be a totally ordered set and <math|A\<subseteq\>X> then

    <\enumerate>
      <item>If <math|sup<around*|(|A|)>> exists then
      <math|\<forall\>x\<in\>X> with <math|x\<less\>sup<around*|(|A|)>> then
      <math|\<exists\>a\<in\>A> such that
      <math|x\<less\>a\<wedge\>a\<leqslant\>sup<around*|(|A|)>>

      <item>If <math|inf<around*|(|A|)>> exist then <math|\<forall\>x\<in\>X>
      with <math|inf<around*|(|A|)>\<less\>x> then <math|\<exists\>a\<in\>A>
      such that <math|inf<around*|(|A|)>\<leqslant\>a\<wedge\>a\<less\>x>
    </enumerate>
  </theorem>

  <\proof>
    First as <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is totally
    ordered we have that <math|\<forall\>x,y\<in\>X> we have that <math|x,y>
    are comparable, hence by [theorem: <reference|order comparable
    property>], we have <math|x\<leqslant\>y\<wedge\>y\<less\>x>/

    <\enumerate>
      <item>Let <math|x\<in\>X> such that <math|x\<less\>sup<around*|(|A|)>>.
      Assume that <math|\<forall\>a\<in\>A> we have
      <math|\<neg\><around*|(|x\<less\>a|)>> so that <math|a\<leqslant\>x>,
      so <math|x> is a upper bound of <math|A>, hence
      <math|x\<in\>\<upsilon\>*<around*|(|A|)>> so that
      <math|sup<around*|(|A|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>\<leqslant\>x>
      which, as <math|x\<less\>sup<around*|(|A|)>,>leads to the contradiction
      <math|x\<less\>x>. So we must have that <math|\<exists\>a\<in\>A> such
      that <math|x\<less\>a>, further as <math|sup<around*|(|A|)>> is a upper
      bound we have that <math|a\<leqslant\>sup<around*|(|A|)>>. So\ 

      <\equation*>
        \<exists\>a\<in\>A<text| > x\<less\>a\<wedge\>a\<leqslant\>sup<around*|(|A|)>
      </equation*>

      <item>Let <math|x\<in\>X> such that <math|inf<around*|(|A|)>\<less\>x>.
      Assume that <math|\<forall\>a\<in\>A> we have
      <math|\<neg\><around*|(|a\<less\>x|)>> so that <math|x\<leqslant\>a>,
      so <math|x> is a lower bound of <math|A>, hence
      <math|x\<in\>\<lambda\><around*|(|A|)>> so that
      <math|x\<leqslant\>max<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>>,
      which, as <math|inf<around*|(|A|)>\<less\>x>, leads to the
      contradiction <math|x\<less\>x>. So we must have that
      <math|\<exists\>a\<in\>A> such that <math|a\<leqslant\>x>, further as
      <math|inf<around*|(|A|)>> is a lower bound we have we have that
      <math|inf<around*|(|A|)>\<leqslant\>a>. So\ 

      <\equation*>
        \<exists\>a\<in\>A<text| >inf<around*|(|A|)>\<leqslant\>a\<wedge\>a\<less\>x
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|order inclusion and greatest and least element>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partially
    ordered class and <math|A\<subseteq\>X,B\<subseteq\>X> with
    <math|A\<subseteq\>B> then

    <\enumerate>
      <item>If <math|max<around*|(|A|)>> and <math|max<around*|(|B|)>> exist
      then <math|max<around*|(|A|)>\<leqslant\>max<around*|(|B|)>>

      <item>If <math|min<around*|(|A|)>> and <math|min<around*|(|B|)>> exists
      then <math|min<around*|(|B|)>\<leqslant\>min<around*|(|A|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|max<around*|(|A|)>\<in\>A> and <math|A\<subseteq\>B> we
      have that <math|max<around*|(|A|)>\<in\>B> so that
      <math|max<around*|(|A|)>\<leqslant\>max<around*|(|B|)>>

      <item>As <math|min<around*|(|A|)>\<in\>A> and <math|A\<subseteq\>B> we
      have that <math|min<around*|(|A|)>\<in\>B> so that
      <math|min*<around*|(|B|)>\<leqslant\>min<around*|(|A|)>>
    </enumerate>
  </proof>

  <\lemma>
    <label|order lower upper bound and inclusion>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partially
    ordered class and <math|A\<subseteq\>X,B\<subseteq\>X> with
    <math|A\<subseteq\>B> then

    <\enumerate>
      <item><math|\<upsilon\><around*|(|B|)>\<subseteq\>\<upsilon\><around*|(|A|)>>

      <item><math|\<lambda\><around*|(|B|)>\<subseteq\>\<lambda\><around*|(|A|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<upsilon\><around*|(|B|)>> then
      <math|\<forall\>a\<in\>A> we have, as <math|A\<subseteq\>B> that
      <math|a\<in\>B> hence <math|a\<leqslant\>x> proving that <math|x> is a
      upper bound of <math|A> or <math|x\<in\>\<upsilon\><around*|(|A|)>>.

      <item>Let <math|x\<in\>\<lambda\><around*|(|B|)>> then
      <math|\<forall\>a\<in\>A> we have as <math|A\<subseteq\>B> hat
      <math|a\<in\>B> hence <math|x\<leqslant\>a> proving that <math|x> is a
      lower bound of <math|A> or <math|x\<in\>\<lambda\><around*|(|A|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|order sup,inf and inclusion>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and \ <math|A\<subseteq\>X>, <math|B\<subseteq\>Y> such
    that <math|A\<subseteq\>B> then\ 

    <\enumerate>
      <item>If <math|sup<around*|(|A|)>> and <math|sup<around*|(|B|)>> exist
      then <math|sup<around*|(|A|)>\<leqslant\>sup<around*|(|B|)>>

      <item>If <math|inf<around*|(|A|)>> and <math|inf<around*|(|B|)>> exist
      then <math|inf<around*|(|B|)>\<leqslant\>inf<around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [lemma: <reference|order lower upper bound and inclusion>]
      we have that <math|\<upsilon\><around*|(|B|)>\<subseteq\>\<upsilon\><around*|(|A|)>>
      so that by [lemma: <reference|order inclusion and greatest and least
      element>]

      <\equation*>
        sup<around*|(|A|)>=min<around*|(|\<upsilon\>*<around*|(|A|)>|)>\<leqslant\>min<around*|(|\<upsilon\><around*|(|B|)>|)>=sup<around*|(|B|)>
      </equation*>

      <item>Using [lemma: <reference|order lower upper bound and inclusion>]
      we have that <math|\<lambda\><around*|(|B|)>\<subseteq\>\<lambda\><around*|(|A|)>>
      so that by [lemma: <reference|order inclusion and greatest and least
      element>]

      <\equation*>
        inf<around*|(|B|)>=max<around*|(|\<lambda\>*<around*|(|B|)>|)>\<leqslant\>max<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|order sup and inf and bigger elements>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and <math|A\<subseteq\>X,B\<subseteq\>X> then

    <\enumerate>
      <item>If <math|sup<around*|(|A|)>>, <math|sup<around*|(|B|)>> exists
      and <math|\<forall\>a\<in\>A> <math|\<exists\>b\<in\>B<text|>> such
      that <math|a\<leqslant\>b> then <math|sup<around*|(|A|)>\<leqslant\>sup<around*|(|B|)>>

      <item>If <math|inf<around*|(|A|)>> and <math|inf<around*|(|B|)>> exist
      and <math|\<forall\>a\<in\>A> <math|\<exists\>b\<in\>B> such that
      <math|b\<leqslant\>a> then <math|inf<around*|(|B|)>\<leqslant\>inf<around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|a\<in\>A> then <math|\<exists\>b\<in\>B> such that
      <math|a\<leqslant\>b>, as <math|b\<leqslant\>sup<around*|(|B|)>> it
      follows that <math|a\<leqslant\>sup<around*|(|B|)>>. Hence
      <math|sup<around*|(|B|)>\<in\>\<upsilon\><around*|(|A|)>>. So
      <math|sup<around*|(|A|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>\<leqslant\>sup<around*|(|A|)>>,
      hence

      <\equation*>
        sup<around*|(|A|)>\<leqslant\>sup<around*|(|B|)>
      </equation*>

      <item>Let <math|a\<in\>A> then <math|\<exists\>b\<in\>B> such that
      <math|b\<leqslant\>a>, as <math|inf<around*|(|B|)>\<leqslant\>b> it
      follows that <math|inf<around*|(|B|)>\<leqslant\>a>. Hence
      <math|inf<around*|(|B|)>\<in\>\<lambda\><around*|(|A|)>>, So
      <math|inf<around*|(|B|)>\<leqslant\>max*<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>>,
      hence\ 

      <\equation*>
        inf<around*|(|B|)>\<leqslant\>inf<around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  We have by definition that <math|sup<around*|(|A|)>> exists if
  <math|min<around*|(|\<upsilon\><around*|(|A|)>|)>> exists and
  <math|inf<around*|(|A|)>> exist if <math|max<around*|(|\<lambda\><around*|(|A|)>|)>>
  exist. The following theorem shows that there is a weaker condition for the
  existance of <math|sup<around*|(|A|)>> and <math|inf<around*|(|A|)>>.

  <\theorem>
    <label|order sup inf condition>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    be a partial ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item>If <math|\<lambda\><around*|(|A|)>> has a supremum then <math|A>
      has a infinum and <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>>

      <item>If <math|\<upsilon\><around*|(|A|)>> has a infinum then <math|A>
      has a supremum and <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>=sup<around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|a\<in\>A> then <math|\<forall\>y\<in\>\<lambda\><around*|(|A|)>>
      we have <math|y\<leqslant\>a> so that
      <math|a\<in\>\<upsilon\><around*|(|\<lambda\><around*|(|A|)>|)>>. As
      <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>=min<around*|(|\<upsilon\><around*|(|\<lambda\><around*|(|A|)>|)>|)>>
      we have that <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>\<leqslant\>a>.
      As <math|a\<in\>A> was arbitrary choosen we have that

      <\equation>
        <label|eq 3.8.011>sup<around*|(|\<lambda\><around*|(|A|)>|)>\<in\>\<lambda\><around*|(|A|)>
      </equation>

      If <math|x\<in\>\<lambda\><around*|(|A|)>>, then, as
      <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>> is a upper bound of
      <math|\<lambda\><around*|(|A|)>>, we have
      <math|x\<leqslant\>sup<around*|(|\<lambda\><around*|(|A|)>|)>>. So we
      have that\ 

      <\equation>
        <label|eq 3.9.011>\<forall\>x\<in\>\<lambda\><around*|(|A|)><text| we
        have that <math|x\<leqslant\>sup<around*|(|\<lambda\><around*|(|A|)>|)>>>
      </equation>

      Using [eq: <reference|eq 3.8.011>] and [eq: <reference|eq 3.9.011>] it
      follows that <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>=max<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>>
      or\ 

      <\equation*>
        sup<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>
      </equation*>

      <item>If <math|a\<in\>A> then <math|\<forall\>y\<in\>\<upsilon\><around*|(|A|)>>
      we have <math|a\<leqslant\>y> so that
      <math|a\<in\>\<lambda\><around*|(|\<upsilon\><around*|(|A|)>|)>>. As
      <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>=max<around*|(|\<lambda\><around*|(|\<upsilon\><around*|(|A|)>|)>|)>>
      we have that <math|a\<leqslant\>inf<around*|(|\<upsilon\><around*|(|A|)>|)>>.
      As <math|a\<in\>A> was arbitrary choosen we have that

      <\equation>
        <label|eq 3.10.012>inf<around*|(|\<upsilon\><around*|(|A|)>|)>\<in\>\<upsilon\><around*|(|A|)>
      </equation>

      If <math|x\<in\>\<upsilon\><around*|(|A|)>>, then, as
      <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>> is a lower bound of
      <math|\<upsilon\><around*|(|A|)>>, we have
      <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>\<leqslant\>x>. So we
      have that\ 

      <\equation>
        <label|eq 3.11.012>\<forall\>x\<in\>\<upsilon\><around*|(|A|)><text|
        we have that <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>\<leqslant\>x>>
      </equation>

      Using [eq: <reference|eq 3.10.012>] and [eq: <reference|eq 3.11.012>]
      it follows that <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>=max<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>>
      or\ 

      <\equation*>
        sup<around*|(|\<lambda\><around*|(|A|)>|)>=inf<around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  In general it is not guaranteed that <math|sup<around*|(|A|)>> or
  <math|inf<around*|(|A|)>> exists. Later we will find for the real numbers a
  condition that quarantees the existance of a supremum. This is the idea of
  the following definition.

  <\definition>
    <label|order conditional complete order><index|conditional
    completeness><dueto|Conditional Completeness>A partial ordered class
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
    <with|font-series|bold|conditional complete >if every nonempty subclass
    of <math|A> that is bounded above has a supremum.
  </definition>

  The next theorem shows that conditional completeness can also be defined
  based on bounded belowness and infinum.

  <\theorem>
    <label|order conditional complete alternatives>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class then the following are equivalent

    <\enumerate>
      <item>Every non empty subclass of <math|X> that is bounded above has a
      supremum [<math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
      contional complete]

      <item>Every non empty subclass of <math|X> that is bounded below has a
      infinum\ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|A\<subseteq\>X> a non empty
      subclass that is bounded below. As <math|A\<neq\>\<varnothing\>> there
      exists a <math|a\<in\>A>, further by defnition of
      <math|\<lambda\><around*|(|A|)>> we have
      <math|\<forall\>y\<in\>\<lambda\><around*|(|A|)>> that
      <math|y\<leqslant\>a> so <math|\<lambda\><around*|(|A|)>> is bounded
      above. As <math|A> is bounded below we have that
      <math|\<lambda\><around*|(|A|)>\<neq\>\<varnothing\>>. So by the
      hypothesis <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>> exist.
      Applying then [theorem: <reference|order sup inf condition>] proves\ 

      <\equation*>
        inf<around*|(|A|)><text| exist>
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>Let <math|A\<subseteq\>X> a non empty
      subclass that is bounded above. As <math|A\<neq\>\<varnothing\>> there
      exists a <math|a\<in\>A>, further by defnition of
      <math|\<upsilon\><around*|(|A|)>> we have
      <math|\<forall\>y\<in\>\<upsilon\><around*|(|A|)>> that
      <math|a\<leqslant\>u> so <math|\<upsilon\><around*|(|A|)>> is bounded
      below. As <math|A> is bounded above we have that
      <math|\<upsilon\><around*|(|A|)>\<neq\>\<varnothing\>>. So by the
      hypothesis <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>> exist.
      Applying then [theorem: <reference|order sup inf condition>] proves\ 

      <\equation*>
        sup<around*|(|A|)><text| exist>
      </equation*>
    </description>
  </proof>

  Next we show that a order isomorphism preserves the concepts of greatest
  element, least element, upper bound, lower bound, supremum and infinum.

  <\lemma>
    <label|order isomorphism preservers sup and inf>Let
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> be partial
    ordered classes, <math|f:X\<rightarrow\>Y> is a order isomorphism,
    <math|A\<subseteq\>X> then

    <\enumerate>
      <item>If <math|u> is a upper bound of <math|B> then
      <math|<around*|(|f<rsup|-1>|)><around*|(|u|)>> is a upper bound of
      <math|f<rsup|-1><around*|(|B|)>>

      <item>If <math|l> is a upper bound of <math|B> then
      <math|<around*|(|f<rsup|-1>|)><around*|(|l|)>> is a lower bound of
      <math|f<rsup|-1><around*|(|B|)>>

      <item>If <math|u> is a upper bound of <math|A> then
      <math|f<around*|(|u|)>> is a upper bound of <math|f<around*|(|A|)>>

      <item>If <math|l> is a lower bound of <math|A> then
      <math|f<around*|(|u|)>> is a lower bound of <math|f<around*|(|A|)>>

      <item><math|f<around*|(|\<upsilon\><around*|(|A|)>|)>=\<upsilon\><around*|(|f<around*|(|A|)>|)>>

      <item><math|f<around*|(|\<lambda\><around*|(|A|)>|)>=\<lambda\><around*|(|f<around*|(|A|)>|)>>

      <item>If <math|max<around*|(|A|)>> exist then
      <math|max<around*|(|f<around*|(|A|)>|)>> exist and
      <math|max<around*|(|f<around*|(|A|)>|)>=f<around*|(|max<around*|(|A|)>|)>>

      <item>If <math|min<around*|(|A|)>> exist then
      <math|min<around*|(|f<around*|(|A|)>|)>> exist and
      <math|min<around*|(|f<around*|(|A|)>|)>=f<around*|(|min<around*|(|A|)>|)>>

      <item>If <math|sup<around*|(|A|)>> exist then
      <math|sup<around*|(|f<around*|(|A|)>|)>> exist and
      <math|sup<around*|(|f<around*|(|A|)>|)>=f<around*|(|sup<around*|(|A|)>|)>>

      <item>If <math|inf<around*|(|A|)>> exist then
      <math|inf<around*|(|f<around*|(|A|)>|)>> exist and
      <math|inf<around*|(|f<around*|(|A|)>|)>=f<around*|(|inf<around*|(|A|)>|)>>
    </enumerate>
  </lemma>

  <\proof>
    First using [theorem: <reference|order condition for isomorphism>] we
    have that <math|f:X\<rightarrow\>Y> and
    <math|f<rsup|-1>:Y\<rightarrow\>X> are increasing.

    <\enumerate>
      <item>Let <math|x\<in\>f<rsup|-1><around*|(|B|)>> then
      <math|\<exists\>y\<in\>B> such that <math|y=f<around*|(|x|)>>, as
      <math|u> is a upper bound of <math|B>, we have that
      <math|y\<leqslant\><rsub|B>u>. So <math|x\<equallim\><rsub|<text|[theorem:
      <reference|function inverse function and
      f(x)>]>><around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>\<leqslant\><rsub|A><around*|(|f<rsup|-1>|)><around*|(|u|)>>,
      proving that <math|<around*|(|f<rsup|-1>|)><around*|(|u|)>> is a upper
      bound of <math|f<rsup|-1><around*|(|B|)>>.

      <item>Let <math|x\<in\>f<rsup|-1><around*|(|B|)>> then
      <math|\<exists\>y\<in\>B> such that <math|y=f<around*|(|x|)>>, as
      <math|l> is a lower bound of <math|B> we have that
      <math|l\<leqslant\><rsub|B>x>. So <math|x\<equallim\><rsub|<text|[theorem:
      <reference|function inverse function and
      f(x)>]>><around*|(|f<rsup|-1>|)><around*|(|l|)>\<leqslant\><rsub|A><around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>>,
      proving that <math|<around*|(|f<rsup|-1>|)><around*|(|l|)>> is a lower
      bound of <math|f<rsup|-1><around*|(|B|)>>.

      <item>If <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A>
      such that <math|f<around*|(|x|)>\<in\>A>, hence as <math|u> is a upper
      bound of <math|A> we have that <math|x\<leqslant\><rsub|A>u>. So
      <math|y=f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|u|)>> proving
      that <math|f<around*|(|u|)>> is a upper bound of
      <math|f<around*|(|A|)>>.

      <item>If <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A>
      such that <math|f<around*|(|x|)>\<in\>A>, hence as <math|l> is a lower
      bound of <math|A> we have that <math|l\<leqslant\><rsub|A>x>. So
      <math|f<around*|(|l|)>\<leqslant\><rsub|B>f<around*|(|x|)>=y> proving
      that <math|f<around*|(|l|)>> is a lower bound of
      <math|f<around*|(|A|)>>.

      <item> If <math|y\<in\>f<around*|(|\<upsilon\><around*|(|A|)>|)>> then
      <math|\<exists\>x\<in\>\<upsilon\><around*|(|A|)>> such that
      <math|y=f<around*|(|x|)>>. As <math|x\<in\>\<upsilon\><around*|(|B|)>>
      <math|x> is a upper bound of <math|B> so that by (3)
      <math|y=f<around*|(|x|)>> is a upper bound of <math|f<around*|(|A|)>>.
      Hence\ 

      <\equation>
        <label|eq 3.12.012>f<around*|(|\<upsilon\><around*|(|A|)>|)>\<subseteq\>\<upsilon\><around*|(|f<around*|(|A|)>|)>
      </equation>

      If <math|y\<in\>v<around*|(|f<around*|(|A|)>|)>> then by (1)
      <math|<around*|(|f<rsup|-1>|)><around*|(|y|)>> is a upper bound of
      <math|f<rsup|-1><around*|(|f<around*|(|A|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|function preimage of image>]>>A> so that
      <math|<around*|(|f<rsup|-1>|)><around*|(|y|)>\<in\>\<upsilon\><around*|(|A|)>>.
      So <math|y\<equallim\><rsub|<text|[theorem: <reference|function inverse
      function and f(x)>>>f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>\<in\>f<around*|(|\<upsilon\><around*|(|A|)>|)>>.
      Hence <math|\<upsilon\><around*|(|f<around*|(|A|)>|)>\<subseteq\>f<around*|(|\<upsilon\><around*|(|A|)>|)>>
      which combined with [eq: <reference|eq 3.12.012>] proves\ 

      <\equation*>
        f<around*|(|\<upsilon\><around*|(|A|)>|)>=\<upsilon\><around*|(|f<around*|(|A|)>|)>
      </equation*>

      <item>If <math|y\<in\>f<around*|(|\<lambda\><around*|(|A|)>|)>> then
      <math|\<exists\>x\<in\>\<lambda\><around*|(|A|)>> such that
      <math|y=f<around*|(|x|)>>. As <math|x\<in\>\<lambda\><around*|(|A|)>>
      <math|x> is a lower bound of <math|A> so that by (4)
      <math|y=f<around*|(|x|)>> is a lower bound of <math|f<around*|(|A|)>>.
      Hence\ 

      <\equation>
        <label|eq 3.14.012>f<around*|(|\<lambda\><around*|(|A|)>|)>\<subseteq\>\<lambda\><around*|(|f<around*|(|A|)>|)>
      </equation>

      If <math|y\<in\>\<lambda\><around*|(|f<around*|(|A|)>|)>> then by (2)
      <math|<around*|(|f<rsup|-1>|)><around*|(|y|)>> is a lower bound of
      <math|f<rsup|-1><around*|(|f<around*|(|A|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|function preimage of image>]>>A> so that
      <math|<around*|(|f<rsup|-1>|)><around*|(|y|)>\<in\>\<lambda\><around*|(|A|)>>.
      So <math|y\<equallim\><rsub|<text|[theorem: <reference|function inverse
      function and f(x)>>>f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>\<in\>f<around*|(|\<lambda\><around*|(|A|)>|)>>.
      Hence <math|\<lambda\><around*|(|f<around*|(|A|)>|)>\<subseteq\>f<around*|(|\<lambda\><around*|(|A|)>|)>>
      which combined with [eq: <reference|eq 3.12.012>] proves\ 

      <\equation*>
        f<around*|(|\<lambda\><around*|(|A|)>|)>=\<lambda\><around*|(|f<around*|(|A|)>|)>
      </equation*>

      <item>If <math|max<around*|(|A|)>> exist then
      <math|max<around*|(|A|)>\<in\>A> giving
      <math|f<around*|(|max<around*|(|A|)>|)>\<in\>f<around*|(|A|)>>. Let
      <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A> such that
      <math|y=f<around*|(|x|)>>, as <math|max<around*|(|A|)>> exist we have
      <math|x\<leqslant\><rsub|A>max<around*|(|A|)>> so that
      <math|y=f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|max<around*|(|A|)>|)>>.
      So\ 

      <\equation*>
        max<around*|(|f<around*|(|A|)>|)><text| exist and
        >max<around*|(|f<around*|(|A|)>|)>=f<around*|(|max<around*|(|A|)>|)>
      </equation*>

      <item>If <math|min<around*|(|A|)>> exist then
      <math|min<around*|(|A|)>\<in\>A> giving
      <math|f<around*|(|min<around*|(|A|)>|)>\<in\>f<around*|(|A|)>>. Let
      <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A> such that
      <math|y=f<around*|(|x|)>>, as <math|min<around*|(|A|)>> exist we have
      <math|max<around*|(|A|)>\<leqslant\><rsub|A>x> so that
      <math|f<around*|(|max<around*|(|A|)>|)>\<leqslant\><rsub|B>f<around*|(|x|)>=y>.
      So\ 

      <\equation*>
        min<around*|(|f<around*|(|A|)>|)><text| exist and
        >min<around*|(|f<around*|(|A|)>|)>=f<around*|(|min<around*|(|A|)>|)>
      </equation*>

      <item>If <math|sup<around*|(|A|)>> exists then
      <math|min<around*|(|\<upsilon\><around*|(|A|)>|)>> exists and
      <math|sup<around*|(|A|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>>.
      Using (8) <math|min<around*|(|f<around*|(|\<upsilon\>*<around*|(|A|)>|)>|)>>
      exist, As <math|f<around*|(|\<upsilon\><around*|(|A|)>|)>\<equallim\><rsub|<around*|(|5|)>>\<upsilon\><around*|(|f<around*|(|A|)>|)>>
      we have that <math|min<around*|(|\<upsilon\><around*|(|f<around*|(|A|)>|)>|)>>
      exist and\ 

      <\equation*>
        sup<around*|(|f<around*|(|A|)>|)>=min<around*|(|\<upsilon\><around*|(|f<around*|(|A|)>|)>|)>\<equallim\><rsub|<around*|(|5|)>>min<around*|(|f<around*|(|\<upsilon\><around*|(|A|)>|)>|)>\<equallim\><rsub|<around*|(|8|)>>f<around*|(|min<around*|(|\<upsilon\><around*|(|A|)>|)>|)>=f<around*|(|sup<around*|(|A|)>|)>
      </equation*>

      <item>If <math|inf<around*|(|A|)>> exists then
      <math|max<around*|(|\<lambda\><around*|(|A|)>|)>> exists and
      <math|inf<around*|(|A|)>=max<around*|(|\<lambda\><around*|(|A|)>|)>>.
      Using (7) <math|max<around*|(|f<around*|(|\<lambda\>*<around*|(|A|)>|)>|)>>
      exist, As <math|f<around*|(|\<lambda\><around*|(|A|)>|)>\<equallim\><rsub|<around*|(|6|)>>\<lambda\><around*|(|f<around*|(|A|)>|)>>
      we have that <math|max<around*|(|\<lambda\><around*|(|f<around*|(|A|)>|)>|)>>
      exist and\ 

      <\equation*>
        inf<around*|(|f<around*|(|A|)>|)>=max<around*|(|\<lambda\><around*|(|f<around*|(|A|)>|)>|)>\<equallim\><rsub|<around*|(|6|)>>max<around*|(|f<around*|(|\<lambda\><around*|(|A|)>|)>|)>\<equallim\><rsub|<around*|(|7|)>>f<around*|(|max<around*|(|\<lambda\><around*|(|A|)>|)>|)>=f<around*|(|inf<around*|(|A|)>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|order isomorphism and conditional complete>Let
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> be a
    conditionally complete partial ordered set,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> a partial
    ordered class and <math|f:X\<rightarrow\>Y> a order isomorphism then
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> is
    conditionally complete.
  </theorem>

  <\proof>
    Let <math|A\<subseteq\>Y> such that <math|A> is bounded above and non
    empty. Let <math|u> be a upper bound of <math|A> then by [lemma:
    <reference|order isomorphism preservers sup and inf>] we have that
    <math|<around*|(|f<rsup|-1>|)><around*|(|u|)>> is a upper bound of
    <math|f<rsup|-1><around*|(|A|)>>. As <math|A\<neq\>\<varnothing\>> there
    exists a <math|a\<in\>A> which as <math|f> is surjective means that
    <math|\<exists\>x> such that <math|a=f<around*|(|x|)>> hence
    <math|x\<in\>f<rsup|-1><around*|(|A|)>> proving that
    <math|f<rsup|-1><around*|(|A|)>\<neq\>\<varnothing\>>. As
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> is
    conditional complete <math|sup<around*|(|f<rsup|-1><around*|(|A|)>|)>>
    exist. Using \ [lemma: <reference|order isomorphism preservers sup and
    inf>] <math|sup<around*|(|f*<around*|(|f<rsup|-1><around*|(|A|)>|)>|)>>
    exist which as <math|A\<equallim\><rsub|<text|[theorem:
    <reference|function preimage of image>]>>f<around*|(|f<rsup|-1><around*|(|A|)>|)><rsub|>>
    proves that <math|sup<around*|(|A|)>> exist. So
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|Y>|\<rangle\>>> is
    conditionally complete.
  </proof>

  <subsection|Well ordering>

  <\definition>
    <label|order well-rodered class><index|well-ordered class>A partial
    ordered class <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
    <with|font-series|bold|well-ordered> is every nonempty subclass of
    <math|X> has a least element. In other words if
    <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>>
    <math|min<around*|(|A|)>> exitst.
  </definition>

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|0>
    <associate|page-first|7>
    <associate|page-medium|papyrus>
    <associate|project-flag|false>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|\<less\>A,B,C\<gtr\>=\<less\>D,E,F\<gtr\>=\<gtr\>A=E,B=D,C=F|<tuple|2.5|?>>
    <associate|\<less\>A,B\<gtr\>=\<less\>C,D\<gtr\>=\<gtr\>A=C,B=D|<tuple|2.3|?>>
    <associate|Axiom of Replacement|<tuple|2.49|?>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|axiom of pairing|?>>
    <associate|auto-11|<tuple|cartesian product|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|A\<times\>B>|?>>
    <associate|auto-13|<tuple|1.4|?>>
    <associate|auto-14|<tuple|successor set|?>>
    <associate|auto-15|<tuple|axiom of infinity|?>>
    <associate|auto-16|<tuple|axiom of subsets|?>>
    <associate|auto-17|<tuple|axiom of union|?>>
    <associate|auto-18|<tuple|power set|?>>
    <associate|auto-19|<tuple|<with|mode|<quote|math>|\<cal-P\><around*|(|A|)>>|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|axiom of power|?>>
    <associate|auto-21|<tuple|2|?>>
    <associate|auto-22|<tuple|2.1|?>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|A,B,C|\<rangle\>>>|?>>
    <associate|auto-24|<tuple|2.2|?>>
    <associate|auto-25|<tuple|2.2.1|?>>
    <associate|auto-26|<tuple|image|?>>
    <associate|auto-27|<tuple|2.2.2|?>>
    <associate|auto-28|<tuple|function|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|B<rsup|A>>|?>>
    <associate|auto-3|<tuple|axiom of extent|2>>
    <associate|auto-30|<tuple|identity function|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|Id<rsub|A>>|?>>
    <associate|auto-32|<tuple|2.2.3|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|i<rsub|B>>|?>>
    <associate|auto-34|<tuple|bijection|?>>
    <associate|auto-35|<tuple|bijective|?>>
    <associate|auto-36|<tuple|2.2.4|?>>
    <associate|auto-37|<tuple|<with|mode|<quote|math>|f<rsub|\|C>>|?>>
    <associate|auto-38|<tuple|2.2.5|?>>
    <associate|auto-39|<tuple|2.3|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<cal-U\>>|3>>
    <associate|auto-40|<tuple|2.3.1|?>>
    <associate|auto-41|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>|?>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>\|i\<in\>I|}>>|?>>
    <associate|auto-43|<tuple|<with|mode|<quote|math>|<big|cap><rsub|i\<in\>I>A<rsub|i>>|?>>
    <associate|auto-44|<tuple|2.3.2|?>>
    <associate|auto-45|<tuple|2.4|?>>
    <associate|auto-46|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i\<in\>I>A<rsub|i>>|?>>
    <associate|auto-47|<tuple|<with|mode|<quote|math>|\<pi\><rsub|i>>|?>>
    <associate|auto-48|<tuple|3|?>>
    <associate|auto-49|<tuple|3.1|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|A<big|cup>B>|5>>
    <associate|auto-50|<tuple|relation|?>>
    <associate|auto-51|<tuple|3.2|?>>
    <associate|auto-52|<tuple|3.2.1|?>>
    <associate|auto-53|<tuple|equivalence relation|?>>
    <associate|auto-54|<tuple|partition of a set|?>>
    <associate|auto-55|<tuple|<with|mode|<quote|math>|R<around*|[|x|]>>|?>>
    <associate|auto-56|<tuple|<with|mode|<quote|math>|A/R>|?>>
    <associate|auto-57|<tuple|3.2.2|?>>
    <associate|auto-58|<tuple|canonical function|?>>
    <associate|auto-59|<tuple|3.3|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|A<big|cap>B>|?>>
    <associate|auto-60|<tuple|3.3.1|?>>
    <associate|auto-61|<tuple|preorder|?>>
    <associate|auto-62|<tuple|pre-ordered class|?>>
    <associate|auto-63|<tuple|order relation|?>>
    <associate|auto-64|<tuple|partial ordered class|?>>
    <associate|auto-65|<tuple|<with|mode|<quote|math>|\<leqslant\>>|?>>
    <associate|auto-66|<tuple|<with|mode|<quote|math>|\<less\>>|?>>
    <associate|auto-67|<tuple|comparable elements|?>>
    <associate|auto-68|<tuple|comparable elements|?>>
    <associate|auto-69|<tuple|totally ordered class|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<emptyset\>>|?>>
    <associate|auto-70|<tuple|fully ordered class|?>>
    <associate|auto-71|<tuple|linear ordered class|?>>
    <associate|auto-72|<tuple|chain|?>>
    <associate|auto-73|<tuple|initial segment|?>>
    <associate|auto-74|<tuple|<with|mode|<quote|math>|\<cal-S\><rsub|a>>|?>>
    <associate|auto-75|<tuple|cut|?>>
    <associate|auto-76|<tuple|3.3.2|?>>
    <associate|auto-77|<tuple|increasing function|?>>
    <associate|auto-78|<tuple|decreasing function|?>>
    <associate|auto-79|<tuple|order homomorphism|?>>
    <associate|auto-8|<tuple|1.2|?>>
    <associate|auto-80|<tuple|<with|mode|<quote|math>|A\<cong\>B>|?>>
    <associate|auto-81|<tuple|3.3.3|?>>
    <associate|auto-82|<tuple|maximal element|?>>
    <associate|auto-83|<tuple|minimal element|?>>
    <associate|auto-84|<tuple|greatest element|?>>
    <associate|auto-85|<tuple|lowest element|?>>
    <associate|auto-86|<tuple|<with|mode|<quote|math>|max<around*|(|A|)>>|?>>
    <associate|auto-87|<tuple|<with|mode|<quote|math>|min<around*|(|A|)>>|?>>
    <associate|auto-88|<tuple|upper bound|?>>
    <associate|auto-89|<tuple|lower bound|?>>
    <associate|auto-9|<tuple|1.3|?>>
    <associate|auto-90|<tuple|supremum|?>>
    <associate|auto-91|<tuple|infinum|?>>
    <associate|auto-92|<tuple|<with|mode|<quote|math>|inf<around*|(|A|)>>|?>>
    <associate|auto-93|<tuple|<with|mode|<quote|math>|sup<around*|(|A|)>>|?>>
    <associate|auto-94|<tuple|conditional completeness|?>>
    <associate|auto-95|<tuple|3.3.4|?>>
    <associate|auto-96|<tuple|well-ordered class|?>>
    <associate|axiom of construction|<tuple|1.9|?>>
    <associate|axiom of extent|<tuple|1.5|2>>
    <associate|axiom of infinity|<tuple|1.52|?>>
    <associate|axiom of pairing|<tuple|1.36|?>>
    <associate|axiom of power|<tuple|1.64|?>>
    <associate|axiom of subsets|<tuple|1.54|?>>
    <associate|axiom of union|<tuple|1.61|?>>
    <associate|bijection|<tuple|2.55|?>>
    <associate|bijective classes|<tuple|2.56|?>>
    <associate|cartesian product|<tuple|1.44|?>>
    <associate|cartesian product and inclusion|<tuple|1.48|?>>
    <associate|cartesian product of the empty set|<tuple|1.46|?>>
    <associate|cartesian product properties (1)|<tuple|1.49|?>>
    <associate|cartesian product with enpty set|<tuple|1.47|?>>
    <associate|class absorption laws|<tuple|1.27|?>>
    <associate|class class commutative,idempotent,associative,distributivity|<tuple|1.30|?>>
    <associate|class complement of comploment|<tuple|1.28|?>>
    <associate|class de Morgan's law|<tuple|1.29|?>>
    <associate|class difference|<tuple|1.24|?>>
    <associate|class empty set|<tuple|1.18|?>>
    <associate|class empty set definition|<tuple|1.16|?>>
    <associate|class empty set is unique|<tuple|1.19|?>>
    <associate|class general intersection|<tuple|1.60|?>>
    <associate|class inclusion and union and intersection|<tuple|1.26|?>>
    <associate|class intersection|<tuple|1.57|?>>
    <associate|class intersection, union, inclusion|<tuple|1.25|?>>
    <associate|class not empty sets|<tuple|1.20|?>>
    <associate|class properties (1)|<tuple|1.8|2>>
    <associate|class set difference and union , intersection|<tuple|1.31|?>>
    <associate|class trivial union intersection|<tuple|1.58|?>>
    <associate|class union|<tuple|1.56|?>>
    <associate|class union{A,B}|<tuple|1.59|?>>
    <associate|class universal and empotyset properties|<tuple|1.32|?>>
    <associate|element a=b=\<gtr\>{a}={b}|<tuple|1.34|?>>
    <associate|element equalitiy of unordered pairs|<tuple|1.39|?>>
    <associate|element equality of unordered pairs (1)|<tuple|1.40|?>>
    <associate|element is set|<tuple|1.2|?>>
    <associate|element {a,a}={a}|<tuple|1.37|?>>
    <associate|element: {a} is a element|<tuple|1.38|?>>
    <associate|empty set property|<tuple|1.17|?>>
    <associate|eq 1.1 001|<tuple|1.1|2>>
    <associate|eq 1.2 001|<tuple|1.2|2>>
    <associate|eq 1.3 001|<tuple|1.3|2>>
    <associate|eq 1.4 001|<tuple|1.4|2>>
    <associate|eq 1.5.001|<tuple|1.5|?>>
    <associate|eq 1.6.001|<tuple|1.6|?>>
    <associate|eq 1.7.001|<tuple|1.7|?>>
    <associate|eq 1.8.001|<tuple|1.8|?>>
    <associate|eq 2.1.001|<tuple|2.2|?>>
    <associate|eq 2.1.001.1|<tuple|2.1|?>>
    <associate|eq 2.10.001|<tuple|2.10|?>>
    <associate|eq 2.11.001|<tuple|2.11|?>>
    <associate|eq 2.12.001|<tuple|2.16|?>>
    <associate|eq 2.12.002|<tuple|2.12|?>>
    <associate|eq 2.13.001|<tuple|2.17|?>>
    <associate|eq 2.13.002|<tuple|2.13|?>>
    <associate|eq 2.14.001|<tuple|2.21|?>>
    <associate|eq 2.14.009|<tuple|2.14|?>>
    <associate|eq 2.15.013|<tuple|2.15|?>>
    <associate|eq 2.16.003|<tuple|2.24|?>>
    <associate|eq 2.16.005|<tuple|2.18|?>>
    <associate|eq 2.17.002|<tuple|2.25|?>>
    <associate|eq 2.17.003|<tuple|2.23|?>>
    <associate|eq 2.17.004|<tuple|2.22|?>>
    <associate|eq 2.17.006|<tuple|2.19|?>>
    <associate|eq 2.18.002|<tuple|2.26|?>>
    <associate|eq 2.18.006|<tuple|2.20|?>>
    <associate|eq 2.19.002|<tuple|2.27|?>>
    <associate|eq 2.2.001|<tuple|2.4|?>>
    <associate|eq 2.20.002|<tuple|2.28|?>>
    <associate|eq 2.21.002|<tuple|2.29|?>>
    <associate|eq 2.25.004|<tuple|2.31|?>>
    <associate|eq 2.26.004|<tuple|2.32|?>>
    <associate|eq 2.27.004|<tuple|2.33|?>>
    <associate|eq 2.28.004|<tuple|2.34|?>>
    <associate|eq 2.29.004|<tuple|2.36|?>>
    <associate|eq 2.29.012|<tuple|2.30|?>>
    <associate|eq 2.3.001.2|<tuple|2.3|?>>
    <associate|eq 2.30.004|<tuple|2.37|?>>
    <associate|eq 2.31.004|<tuple|2.38|?>>
    <associate|eq 2.31.010|<tuple|2.35|?>>
    <associate|eq 2.32.004|<tuple|2.39|?>>
    <associate|eq 2.34.005|<tuple|2.40|?>>
    <associate|eq 2.35.005|<tuple|2.41|?>>
    <associate|eq 2.38.006|<tuple|2.42|?>>
    <associate|eq 2.39.006|<tuple|2.43|?>>
    <associate|eq 2.40.006|<tuple|2.45|?>>
    <associate|eq 2.40.007|<tuple|2.44|?>>
    <associate|eq 2.41.006|<tuple|2.46|?>>
    <associate|eq 2.42.006|<tuple|2.47|?>>
    <associate|eq 2.43.006|<tuple|2.49|?>>
    <associate|eq 2.44.006|<tuple|2.50|?>>
    <associate|eq 2.44.007|<tuple|2.48|?>>
    <associate|eq 2.45.006|<tuple|2.51|?>>
    <associate|eq 2.48.007|<tuple|2.54|?>>
    <associate|eq 2.48.008|<tuple|2.52|?>>
    <associate|eq 2.49.007|<tuple|2.55|?>>
    <associate|eq 2.5.001.2|<tuple|2.5|?>>
    <associate|eq 2.50.007|<tuple|2.56|?>>
    <associate|eq 2.51.007|<tuple|2.57|?>>
    <associate|eq 2.51.010|<tuple|2.53|?>>
    <associate|eq 2.6.001|<tuple|2.6|?>>
    <associate|eq 2.7.001|<tuple|2.7|?>>
    <associate|eq 2.8.001|<tuple|2.8|?>>
    <associate|eq 2.9.001|<tuple|2.9|?>>
    <associate|eq 3.1.009|<tuple|3.1|?>>
    <associate|eq 3.10.012|<tuple|3.10|?>>
    <associate|eq 3.11.012|<tuple|3.11|?>>
    <associate|eq 3.12.012|<tuple|3.12|?>>
    <associate|eq 3.14.012|<tuple|3.13|?>>
    <associate|eq 3.2.009|<tuple|3.2|?>>
    <associate|eq 3.3.009|<tuple|3.3|?>>
    <associate|eq 3.4.009|<tuple|3.4|?>>
    <associate|eq 3.5.009|<tuple|3.5|?>>
    <associate|eq 3.6.009|<tuple|3.6|?>>
    <associate|eq 3.7.009|<tuple|3.7|?>>
    <associate|eq 3.8.011|<tuple|3.8|?>>
    <associate|eq 3.9.011|<tuple|3.9|?>>
    <associate|eq order preorder to order|<tuple|3.32|?>>
    <associate|equivalence relation|<tuple|3.5|?>>
    <associate|equivalence relation A/R|<tuple|3.16|?>>
    <associate|equivalence relation R[x]=R[y]|<tuple|3.11|?>>
    <associate|equivalence relation canical function|<tuple|3.21|?>>
    <associate|equivalence relation canonical decomposition of a
    function|<tuple|3.22|?>>
    <associate|equivalence relation class|<tuple|3.9|?>>
    <associate|equivalence relation determined by a function|<tuple|3.20|?>>
    <associate|equivalence relation function|<tuple|3.18|?>>
    <associate|equivalence relation partition|<tuple|3.6|?>>
    <associate|equivalence relation partition alternative|<tuple|3.8|?>>
    <associate|equivalence relation subsets|<tuple|3.19|?>>
    <associate|family|<tuple|2.81|?>>
    <associate|family de Morgan|<tuple|2.103|?>>
    <associate|family distributivity|<tuple|2.101|?>>
    <associate|family image and preimage|<tuple|2.106|?>>
    <associate|family intersection (2)|<tuple|2.94|?>>
    <associate|family intersection is a set|<tuple|2.95|?>>
    <associate|family intersection of sets|<tuple|2.91|?>>
    <associate|family intersection(1)|<tuple|2.93|?>>
    <associate|family properties (1)|<tuple|2.98|?>>
    <associate|family properties (2)|<tuple|2.99|?>>
    <associate|family properties (3)|<tuple|2.104|?>>
    <associate|family range|<tuple|2.82|?>>
    <associate|family range (1)|<tuple|2.83|?>>
    <associate|family set|<tuple|2.84|?>>
    <associate|family trivial|<tuple|2.96|?>>
    <associate|family union (1)|<tuple|2.86|?>>
    <associate|family union (2)|<tuple|2.89|?>>
    <associate|family union intersection and empty set|<tuple|2.105|?>>
    <associate|family union intersection and inclusion|<tuple|2.100|?>>
    <associate|family union of a empty set|<tuple|2.92|?>>
    <associate|family union of family set and surjections|<tuple|2.90|?>>
    <associate|family union of union of two families|<tuple|2.102|?>>
    <associate|family union{A,B}|<tuple|2.97|?>>
    <associate|function|<tuple|2.21|?>>
    <associate|function A^empty is empty|<tuple|2.27|?>>
    <associate|function B^A|<tuple|2.25|?>>
    <associate|function B^A and inclusion|<tuple|2.28|?>>
    <associate|function P(A)=2^A|<tuple|2.68|?>>
    <associate|function alternative for composition|<tuple|2.36|?>>
    <associate|function and power|<tuple|2.67|?>>
    <associate|function between {0,1} and {A,B}|<tuple|2.23|?>>
    <associate|function bijection and inverse|<tuple|2.64|?>>
    <associate|function bijection condition (2)|<tuple|2.63|?>>
    <associate|function bijection f,f-1|<tuple|2.61|?>>
    <associate|function bijection has a inverse|<tuple|2.60|?>>
    <associate|function characteristics function|<tuple|2.40|?>>
    <associate|function composition and restriction|<tuple|2.73|?>>
    <associate|function composition injectivity, surjectivity and
    bijectivity|<tuple|2.66|?>>
    <associate|function composition of Id function|<tuple|2.42|?>>
    <associate|function composition of functions is a
    fucntion|<tuple|2.44|?>>
    <associate|function condition (1)|<tuple|2.22|?>>
    <associate|function constant function|<tuple|2.39|?>>
    <associate|function empty function|<tuple|2.38|?>>
    <associate|function equality (1)|<tuple|2.32|?>>
    <associate|function equality (2)|<tuple|2.35|?>>
    <associate|function f(x)|<tuple|2.33|?>>
    <associate|function function and intersection and union|<tuple|2.77|?>>
    <associate|function identity function|<tuple|2.41|?>>
    <associate|function identity map is a bijection|<tuple|2.57|?>>
    <associate|function image preimage|<tuple|2.43|?>>
    <associate|function image preimage alternative|<tuple|2.37|?>>
    <associate|function inclusion function|<tuple|2.48|?>>
    <associate|function injective inverse is a function|<tuple|2.54|?>>
    <associate|function injectivity to bijection|<tuple|2.59|?>>
    <associate|function injectivity, surjectivity|<tuple|2.47|?>>
    <associate|function inverse and restriction|<tuple|2.72|?>>
    <associate|function inverse function and f(x)|<tuple|2.62|?>>
    <associate|function inverse of a bijection is unique|<tuple|2.65|?>>
    <associate|function power of intersection|<tuple|2.30|?>>
    <associate|function preimage of image|<tuple|2.50|?>>
    <associate|function properties (1)|<tuple|2.76|?>>
    <associate|function range restriction|<tuple|2.31|?>>
    <associate|function restricted function properties|<tuple|2.70|?>>
    <associate|function restriction and domain|<tuple|2.71|?>>
    <associate|function restriction of a function|<tuple|2.74|?>>
    <associate|function restriction of a graph|<tuple|2.69|?>>
    <associate|function simple definition|<tuple|2.78|?>>
    <associate|function surjection condition|<tuple|2.46|?>>
    <associate|function trivial bijection|<tuple|2.58|?>>
    <associate|function: A^B and sets|<tuple|2.29|?>>
    <associate|order A isomorphism B|<tuple|3.46|?>>
    <associate|order chain|<tuple|3.38|?>>
    <associate|order chain is a totally ordered class|<tuple|3.39|?>>
    <associate|order comparable|<tuple|3.35|?>>
    <associate|order comparable property|<tuple|3.36|?>>
    <associate|order composition of functions|<tuple|3.47|?>>
    <associate|order condition for isomorphism|<tuple|3.49|?>>
    <associate|order condition for isomorphism in a totallu ordered
    set|<tuple|3.52|?>>
    <associate|order conditional complete alternatives|<tuple|3.70|?>>
    <associate|order conditional complete order|<tuple|3.69|?>>
    <associate|order cut|<tuple|3.44|?>>
    <associate|order greatest and lowest element are unique|<tuple|3.57|?>>
    <associate|order greatest lowest element|<tuple|3.54|?>>
    <associate|order inclusion and greatest and least element|<tuple|3.64|?>>
    <associate|order inclusion is a order|<tuple|3.31|?>>
    <associate|order increasing, decreasing|<tuple|3.45|?>>
    <associate|order initial segement|<tuple|3.42|?>>
    <associate|order intial sergment property|<tuple|3.43|?>>
    <associate|order isomorphism and conditional complete|<tuple|3.72|?>>
    <associate|order isomorphism condition (2)|<tuple|3.50|?>>
    <associate|order isomorphism preservers sup and inf|<tuple|3.71|?>>
    <associate|order isomorphism strictly|<tuple|3.48|?>>
    <associate|order lexical order|<tuple|3.34|?>>
    <associate|order lower upper bound and inclusion|<tuple|3.65|?>>
    <associate|order lower upper bounds of empty set|<tuple|3.61|?>>
    <associate|order maximal minimal element|<tuple|3.53|?>>
    <associate|order maximum of class with bigger elements|<tuple|3.59|?>>
    <associate|order min(A)\<less\>=max(A)|<tuple|3.58|?>>
    <associate|order order relation|<tuple|3.26|?>>
    <associate|order partial order on sub class|<tuple|3.33|?>>
    <associate|order partial ordered class|<tuple|3.27|?>>
    <associate|order preorder|<tuple|3.24|?>>
    <associate|order preordered class|<tuple|3.25|?>>
    <associate|order properties of the isomorph relation|<tuple|3.51|?>>
    <associate|order strict order|<tuple|3.30|?>>
    <associate|order sup and inf and bigger elements|<tuple|3.67|?>>
    <associate|order sup inf condition|<tuple|3.68|?>>
    <associate|order sup, inf stalls|<tuple|3.63|?>>
    <associate|order sup,inf and inclusion|<tuple|3.66|?>>
    <associate|order supremum infinum|<tuple|3.62|?>>
    <associate|order totally lexicol ordering|<tuple|3.41|?>>
    <associate|order totally ordered subclass|<tuple|3.40|?>>
    <associate|order upport lower bound|<tuple|3.60|?>>
    <associate|order well-rodered class|<tuple|3.73|?>>
    <associate|pair equality of pairs|<tuple|1.43|?>>
    <associate|pair of elements|<tuple|1.41|?>>
    <associate|partial function associativity|<tuple|2.18|?>>
    <associate|partial function composition of graphs|<tuple|2.16|?>>
    <associate|partial function composition of partial
    functions|<tuple|2.17|?>>
    <associate|partial function dom(f) range(f) as subclasses|<tuple|2.10|?>>
    <associate|partial function domain range composition|<tuple|2.19|?>>
    <associate|partial function image|<tuple|2.12|?>>
    <associate|partial function image preimage of
    compositions|<tuple|2.20|?>>
    <associate|partial function injectivity and surjectivity|<tuple|2.45|?>>
    <associate|partial function inverse graph|<tuple|2.51|?>>
    <associate|partial function inverse if injective|<tuple|2.52|?>>
    <associate|partial function preimage|<tuple|2.14|?>>
    <associate|partial function set domain range|<tuple|2.11|?>>
    <associate|partial functions image/preimage properties|<tuple|2.15|?>>
    <associate|power set|<tuple|1.63|?>>
    <associate|product|<tuple|2.107|?>>
    <associate|product and intersection|<tuple|2.111|?>>
    <associate|product and power|<tuple|2.112|?>>
    <associate|product inclusion|<tuple|2.110|?>>
    <associate|product of family with one element|<tuple|2.108|?>>
    <associate|product of family with two classes|<tuple|2.109|?>>
    <associate|projection function|<tuple|2.113|?>>
    <associate|relation|<tuple|3.1|?>>
    <associate|relation properties|<tuple|3.4|?>>
    <associate|relation trivial|<tuple|3.3|?>>
    <associate|set A*B|<tuple|1.67|?>>
    <associate|set A*B is subset of P(P(AUB))|<tuple|1.66|?>>
    <associate|set element proper class|<tuple|1.50|?>>
    <associate|set emptyset is not set of empty set|<tuple|2.2|?>>
    <associate|set intersection of two sets is aset|<tuple|1.55|?>>
    <associate|set restriction of a set of sets|<tuple|1.65|?>>
    <associate|set union of two sets is a set|<tuple|1.62|?>>
    <associate|successor set|<tuple|1.51|?>>
    <associate|totally ordered class|<tuple|3.37|?>>
    <associate|universal class|<tuple|1.12|?>>
    <associate|universal class property|<tuple|1.13|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|axiom of extent>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-U\>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|A<big|cup>B>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|A<big|cap>B>>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|\<emptyset\>>>|<pageref|auto-7>>

      <tuple|<tuple|axiom of pairing>|<pageref|auto-10>>

      <tuple|<tuple|cartesian product>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|A\<times\>B>>|<pageref|auto-12>>

      <tuple|<tuple|successor set>|<pageref|auto-14>>

      <tuple|<tuple|axiom of infinity>|<pageref|auto-15>>

      <tuple|<tuple|axiom of subsets>|<pageref|auto-16>>

      <tuple|<tuple|axiom of union>|<pageref|auto-17>>

      <tuple|<tuple|power set>|<pageref|auto-18>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-P\><around*|(|A|)>>>|<pageref|auto-19>>

      <tuple|<tuple|axiom of power>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|A,B,C|\<rangle\>>>>|<pageref|auto-23>>

      <tuple|<tuple|image>|<pageref|auto-26>>

      <tuple|<tuple|function>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|B<rsup|A>>>|<pageref|auto-29>>

      <tuple|<tuple|identity function>|<pageref|auto-30>>

      <tuple|<tuple|<with|mode|<quote|math>|Id<rsub|A>>>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|i<rsub|B>>>|<pageref|auto-33>>

      <tuple|<tuple|bijection>|<pageref|auto-34>>

      <tuple|<tuple|bijective>|<pageref|auto-35>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rsub|\|C>>>|<pageref|auto-37>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>>|<pageref|auto-41>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>\|i\<in\>I|}>>>|<pageref|auto-42>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|cap><rsub|i\<in\>I>A<rsub|i>>>|<pageref|auto-43>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i\<in\>I>A<rsub|i>>>|<pageref|auto-46>>

      <tuple|<tuple|<with|mode|<quote|math>|\<pi\><rsub|i>>>|<pageref|auto-47>>

      <tuple|<tuple|relation>|<pageref|auto-50>>

      <tuple|<tuple|equivalence relation>|<pageref|auto-53>>

      <tuple|<tuple|partition of a set>|<pageref|auto-54>>

      <tuple|<tuple|<with|mode|<quote|math>|R<around*|[|x|]>>>|<pageref|auto-55>>

      <tuple|<tuple|<with|mode|<quote|math>|A/R>>|<pageref|auto-56>>

      <tuple|<tuple|canonical function>|<pageref|auto-58>>

      <tuple|<tuple|preorder>|<pageref|auto-61>>

      <tuple|<tuple|pre-ordered class>|<pageref|auto-62>>

      <tuple|<tuple|order relation>|<pageref|auto-63>>

      <tuple|<tuple|partial ordered class>|<pageref|auto-64>>

      <tuple|<tuple|<with|mode|<quote|math>|\<leqslant\>>>|<pageref|auto-65>>

      <tuple|<tuple|<with|mode|<quote|math>|\<less\>>>|<pageref|auto-66>>

      <tuple|<tuple|comparable elements>|<pageref|auto-67>>

      <tuple|<tuple|comparable elements>|<pageref|auto-68>>

      <tuple|<tuple|totally ordered class>|<pageref|auto-69>>

      <tuple|<tuple|fully ordered class>|<pageref|auto-70>>

      <tuple|<tuple|linear ordered class>|<pageref|auto-71>>

      <tuple|<tuple|chain>|<pageref|auto-72>>

      <tuple|<tuple|initial segment>|<pageref|auto-73>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-S\><rsub|a>>>|<pageref|auto-74>>

      <tuple|<tuple|cut>|<pageref|auto-75>>

      <tuple|<tuple|increasing function>|<pageref|auto-77>>

      <tuple|<tuple|decreasing function>|<pageref|auto-78>>

      <tuple|<tuple|order homomorphism>|<pageref|auto-79>>

      <tuple|<tuple|<with|mode|<quote|math>|A\<cong\>B>>|<pageref|auto-80>>

      <tuple|<tuple|maximal element>|<pageref|auto-82>>

      <tuple|<tuple|minimal element>|<pageref|auto-83>>

      <tuple|<tuple|greatest element>|<pageref|auto-84>>

      <tuple|<tuple|lowest element>|<pageref|auto-85>>

      <tuple|<tuple|<with|mode|<quote|math>|max<around*|(|A|)>>>|<pageref|auto-86>>

      <tuple|<tuple|<with|mode|<quote|math>|min<around*|(|A|)>>>|<pageref|auto-87>>

      <tuple|<tuple|upper bound>|<pageref|auto-88>>

      <tuple|<tuple|lower bound>|<pageref|auto-89>>

      <tuple|<tuple|supremum>|<pageref|auto-90>>

      <tuple|<tuple|infinum>|<pageref|auto-91>>

      <tuple|<tuple|<with|mode|<quote|math>|inf<around*|(|A|)>>>|<pageref|auto-92>>

      <tuple|<tuple|<with|mode|<quote|math>|sup<around*|(|A|)>>>|<pageref|auto-93>>

      <tuple|<tuple|conditional completeness>|<pageref|auto-94>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Elements
      of set theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Basic concepts about classes and sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      1.2<space|2spc>Class operations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      1.3<space|2spc>Cartesian products <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      1.4<space|2spc>Sets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Partial
      Functions and Functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      2.1<space|2spc>Pairs and Triples <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      2.2<space|2spc>Partial functions and Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      <with|par-left|<quote|1tab>|2.2.1<space|2spc>Partial function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|2.2.2<space|2spc>Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|2.2.3<space|2spc>Injectivity, Surjectivity
      and bijectivity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|2.2.4<space|2spc>Restriction of a
      Function/Partial Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|2.2.5<space|2spc>Set operations and
      (Partial) Functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      2.3<space|2spc>Families <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>

      <with|par-left|<quote|1tab>|2.3.1<space|2spc>Family
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|2.3.2<space|2spc>Properties of the union
      and intersection of families <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      2.4<space|2spc>Product of a family of sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Relations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48><vspace|0.5fn>

      3.1<space|2spc>Relation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>

      3.2<space|2spc>Equivalence relations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      <with|par-left|<quote|1tab>|3.2.1<space|2spc>Equivalence relations and
      equivalence classes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|3.2.2<space|2spc>Functions and equivalence
      relations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      3.3<space|2spc>Partial ordered classes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      <with|par-left|<quote|1tab>|3.3.1<space|2spc>Order relation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|3.3.2<space|2spc>Order relations and
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>

      <with|par-left|<quote|1tab>|3.3.3<space|2spc>Min, max, supremums and
      infinums <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>
    </associate>
  </collection>
</auxiliary>