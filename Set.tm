<TeXmacs|2.1.1>

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
    Let <math|A> and <math|B> classes then <math|A> is a subclasss of
    <math|B> noted by <math|A\<subseteq\>B> iff

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
  classes that has not themself as member. Does this class contain itself yes
  or no? If the class contain itself then by definition
  <math|R<around*|(|x|)>> should be true so the class should not contain
  itself leading to a contradiction. If the class does not contain itself
  then it satisifes <math|R<around*|(|x|)>>, hence it is a member of itself
  again leading to a contradiction. So we can not test the predicate
  <math|R<around*|(|x|)>> for all classes and thus can not define the class
  of all classes for whch <math|R<around*|(|x|)>> is true. The axiom of class
  construction allows us to create a new class in a safe way.

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

  The axiom of construction is used as a way of creating a subclass of a
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
    <index|<math|\<emptyset\>>>The empty class <math|\<varnothing\>> is
    defined by\ 

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
      <math|x\<nin\>A> then certainely <math|x\<nin\>\<varnothing\>>
      [Theorem: <reference|empty set property>] so that
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
    be false and thus <math|x\<in\>A\<Rightarrow\>x\<in\>\<emptyset\>> is
    vacuously true which proves that <math|A\<subseteq\>\<emptyset\>>,
    combining this with [theorem: <reference|class empty
    set>,<reference|class properties (1)>] proves that <math|A=\<emptyset\>>
  </proof>

  <\corollary>
    <label|class not empty sets>Let <math|A> be a class such that
    <math|A\<neq\>\<emptyset\>> then <math|\<exists\>x> such that
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

      <item*|idempotency>\ 

      <\enumerate>
        <item><math|A<big|cup>A=A>

        <item><math|A<big|cap>A=A>
      </enumerate>

      <item*|associativity>\ 

      <\enumerate>
        <item><math|A<big|cup><around*|(|B<big|cup>C|)>=<around*|(|A<big|cup>B|)><big|cup>C>

        <item><math|A<big|cap><around*|(|B<big|cap>C|)>=<around*|(|A<big|cap>B|)><big|cap>C>
      </enumerate>

      <item*|distributivity>

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

      <item*|idempotency>\ 

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

      <item*|distributivity>\ 

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
        <reference|class de Morgan's law>>>>|<cell|A<big|cap><around*|(|B<rsup|c><big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap>B<rsup|c>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|idempotency>>>|<cell|<around*|(|<around*|(|A<big|cap>A|)><big|cap>B<rsup|c>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap><around*|(|A<big|cap>B<rsup|c>|)>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|<around*|(|A<big|cap>B<rsup|c>|)><big|cap>A|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap>B<rsup|c>|)><big|cap><around*|(|A<big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|<around*|(|A\\B|)><big|cap><around*|(|A\\C|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|(|B<big|cap>C|)>>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|A<big|cap><around*|(|B<big|cap>C|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|class de Morgan's law>>>>|<cell|A<big|cap><around*|(|B<rsup|c><big|cup>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|distributivity>>>|<cell|*<around*|(|A<big|cap>B<rsup|c>|)><big|cup><around*|(|A<big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
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

  The above lemma actually shows that the order of the elements in unordere
  pairs do not matter, to remedi this we construct a ordered pair.

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

  Next we show that the order of elements is important for a tupple

  <\theorem>
    Let <math|x,y,x<rprime|'>,y<rprime|'>> are elements then\ 

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
    which contradict <math|x,y\<nin\>\<emptyset\>> \ [theorem:
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
      have by \ [corollary: <reference|class not empty sets>] the existance
      of a <math|y\<in\>C>, then <math|<around*|(|x,y|)>\<in\>A\<times\>C>
      which as <math|A\<times\>C\<subseteq\>B\<times\>D> proves that
      <math|<around*|(|x,y|)>\<in\>B\<times\>D>. By definition we have then
      that <math|x\<in\>B> proving\ 

      <\equation*>
        A\<subseteq\>B
      </equation*>

      Likewise, let <math|y\<in\>C> then, as <math|A\<neq\>\<varnothing\>> we
      have by \ [corollary: <reference|class not empty sets>] the existance
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
        Using [theorem: <reference|class properties (1)> it follws then that\ 

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
  class and can contain other elements. If we want to strees the collection
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
  but we have not ensured the existance of a element/set. To this we must
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
  existance of a sucessor set we have the axiom of infinity.

  <\axiom>
    <label|axiom of infinity><index|axiom of infinity><dueto|Axiom of
    Infinity>There exists a <with|font-series|bold|successor set>
  </axiom>

  This axiom ensures that we have at least one set. We can then use the
  orther axioms about elements/sets to create new elements. Later we will use
  the Axiom of Infinity to create the Natural Numbers, form which we build
  all the other numbers (integers, rationals, reals, complex numbers). The
  Axiom of Infinity ensures also that the empty class is actually a set.

  <\theorem>
    <math|\<varnothing\>> is a set
  </theorem>

  <\proof>
    The Axiom of Infinity [axiom: <reference|axiom of infinity>] ensures the
    existance of a successor set <math|S>. By definition we have then that
    <math|\<varnothing\>\<in\>S> which proves that <math|\<varnothing\>> is a
    set.
  </proof>

  So now we have two sets to start with, the sucessor set and the empty set.
  We can use the Axiom of Pairing [axiom: <reference|axiom of pairing>] to
  create new sets like singletons, unordered pairs and pairs. We introduce
  now extra axioms to create new sets given existing sets.

  <\axiom>
    <label|axiom of subsets><index|axiom of subsets><dueto|Axiom of
    Subnets>Every subclass of a set is a set
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

  <\definition>
    Let <math|\<cal-A\>> be a set then using the Axiom of Constuction [axiom:
    <reference|axiom of construction>] we define
    <math|<big|cup>\<cal-A\>=<around*|{|x\|\<exists\>A\<in\>\<cal-A\><text|
    such that >x\<in\>A|}>>
  </definition>

  The Axiom of Unions will ensure that <math|<big|cup>A> is a set\ 

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
    <math|A> be a set then we use the Axiom of Construction to defiine
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
    <math|<around*|{|x,y|}>\<subseteq\>A<big|cup>B>. Using the defintion
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
    If <math|A> and <math|B> are sets then <math|A\<times\>B> is a set
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
        <tformat|<table|<row|<cell|x\<in\><around*|\<langle\>|A,B|\<rangle\>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|A\<times\><around*|{|\<emptyset\>|}>|)><big|cup><around*|(|B\<times\><around*|{|<around*|{|\<emptyset\>|}>|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<times\><around*|{|\<varnothing\>|}>\<vee\>x\<in\>B\<times\><around*|{|<around*|{|\<varnothing\>|}>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x=<around*|(|a,\<emptyset\>|)>\<wedge\>a\<in\>A|)>\<vee\><around*|(|x=<around*|(|b,<around*|{|\<emptyset\>|}>|)>\<wedge\>b\<in\>B|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[axiom:
        <reference|axiom of extent>]>>>|<cell|<around*|(|x=<around*|(|a,\<emptyset\>|)>\<wedge\>a\<in\>C|)>\<vee\><around*|(|x=<around*|(|b,<around*|{|\<emptyset\>|}>|)>\<wedge\>b\<in\>D|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|C\<times\><around*|{|\<emptyset\>|}>|)><big|cup><around*|(|D\<times\><around*|{|<around*|{|\<emptyset\>|}>|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|e\<in\><around*|\<langle\>|C,D|\<rangle\>>>>>>
      </eqnarray*>

      so that by the Axiom of Extent [axiom: <reference|axiom of extent>]\ 

      <\equation*>
        <around*|\<langle\>|A,B|\<rangle\>>=<around*|\<langle\>|C,D|\<rangle\>>
      </equation*>
    </description>
  </proof>

  We can now easely extend <math|<around*|\<langle\>|A,B|\<rangle\>>> to a
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

  <section|Partial functions>

  The concept of a function as a mapping of one value to a unique value ia
  used throughout mathematics, especially in analysis, which is essential a
  theory of functions. Note that a function maps a value <math|x> to a
  <with|font-series|bold|unique> value <math|y> which in the context of a set
  theory defines a pair <math|<around*|(|x,y|)>>. This leads to the following
  definition of a graph.

  <section|Partial function>

  <\definition>
    Then a tripple <math|<around*|\<langle\>|A,B,f|\<rangle\>>> is a
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
    Further the condition (2) is to ensure that only one value can be
    associated with <math|x>. So it is usefull to use a special notation for
    this unique value, namely <math|f<around*|(|x|)>>. Essential if we say
    <math|f<around*|(|x|)>=y> we actually mean <math|>that
    <math|<around*|(|x,y|)>\<in\>f>.
  </remark>

  Given a partial function we define the domain and range of the function as
  follows [using the Axiom of Construction [axiom: <reference|axiom of
  construction>]

  <\definition>
    Let <math|f:A\<rightarrow\>B> be a partial function then its domain noted
    as <math|dom<around*|(|f|)>> and range noted as
    <math|range<around*|(|f|)>> is defined by\ 

    <\equation*>
      dom<around*|(|f|)>=<around*|{|x\|\<exists\>y\<in\>B<text| such that
      ><around*|(|x,y|)>\<in\>f|}>
    </equation*>

    <\equation*>
      range<around*|(|f|)>=<around*|{|y\|\<exists\>x\<in\>A<text| such that
      ><around*|(|x,y|)>\<in\>f|}>
    </equation*>
  </definition>

  <section|Functions>

  \ 

  <chapter|Relations>
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
    <associate|auto-25|<tuple|2.3|?>>
    <associate|auto-26|<tuple|2.4|?>>
    <associate|auto-27|<tuple|3|?>>
    <associate|auto-3|<tuple|axiom of extent|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<cal-U\>>|3>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|A<big|cup>B>|5>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|A<big|cap>B>|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<emptyset\>>|?>>
    <associate|auto-8|<tuple|1.2|?>>
    <associate|auto-9|<tuple|1.3|?>>
    <associate|axiom of construction|<tuple|1.9|?>>
    <associate|axiom of extent|<tuple|1.5|2>>
    <associate|axiom of infinity|<tuple|1.52|?>>
    <associate|axiom of pairing|<tuple|1.36|?>>
    <associate|axiom of power|<tuple|1.60|?>>
    <associate|axiom of subsets|<tuple|1.54|?>>
    <associate|axiom of union|<tuple|1.57|?>>
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
    <associate|class empty set is unique|<tuple|1.19|?>>
    <associate|class inclusion and union and intersection|<tuple|1.26|?>>
    <associate|class intersection, union, inclusion|<tuple|1.25|?>>
    <associate|class not empty sets|<tuple|1.20|?>>
    <associate|class properties (1)|<tuple|1.8|2>>
    <associate|class set difference and union , intersection|<tuple|1.31|?>>
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
    <associate|eq 2.2.001|<tuple|2.4|?>>
    <associate|eq 2.3.001.2|<tuple|2.3|?>>
    <associate|eq 2.5.001.2|<tuple|2.5|?>>
    <associate|eq 2.6.001|<tuple|2.6|?>>
    <associate|eq 2.7.001|<tuple|2.7|?>>
    <associate|eq 2.8.001|<tuple|2.8|?>>
    <associate|eq 2.9.001|<tuple|2.9|?>>
    <associate|pair of elements|<tuple|1.41|?>>
    <associate|power set|<tuple|1.59|?>>
    <associate|set A*B is subset of P(P(AUB))|<tuple|1.62|?>>
    <associate|set element proper class|<tuple|1.50|?>>
    <associate|set emptyset is not set of empty set|<tuple|2.2|?>>
    <associate|set intersection of two sets is aset|<tuple|1.55|?>>
    <associate|set restriction of a set of sets|<tuple|1.61|?>>
    <associate|set union of two sets is a set|<tuple|1.58|?>>
    <associate|successor set|<tuple|1.51|?>>
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

      2.2<space|2spc>Partial functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      2.3<space|2spc>Partial function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      2.4<space|2spc>Functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Relations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>