<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Elements of set theory>

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
    Let <math|A> and <math|B> classes then <math|A> is a sub-class of
    <math|B> noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B
    </equation*>

    So <math|A> is a sub-class of <math|B> iff every element of <math|A> is
    also a element of <math|B>.
  </definition>

  <\definition>
    Let <math|A> and <math|B> classes then <math|A> is a proper sub-class of
    <math|B> noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>A\<neq\>B
    </equation*>

    So <math|A> is a proper sub-class of <math|B> iff <math|A> is different
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

  The axiom of construction can be used as a way of creating a sub-class of a
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

      <item>If <math|A\<subseteq\>\<varnothing\>> then
      <math|A=\<varnothing\>>
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

      <item>By (1) we have <math|\<varnothing\>\<subseteq\>A> which together
      with <math|A\<subseteq\>\<varnothing\>> proves by [theorem:
      <reference|class properties (1)>] that <math|A=\<varnothing\>>.
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
    <label|class intersection, union, inclusion>Let <math|A,B,C> are classes
    then we have\ 

    <\enumerate>
      <item><math|A\<subseteq\>A<big|cup>B>

      <item><math|B\<subseteq\>A<big|cup>B>

      <item><math|A<big|cap>B\<subseteq\>A>

      <item><math|A<big|cap>B\<subseteq\>B>

      <item><math|A\\B\<subseteq\>A>

      <item><math|<around*|(|A<big|cup>B|)>\\C=<around*|(|A\\C|)><big|cup><around*|(|B\\C|)>>

      <item>If <math|C> is a class such that <math|A\<subseteq\>C> and
      <math|B\<subseteq\>C> then <math|A<big|cup>B\<subseteq\>C>

      <item>If C is a class such that <math|A\<subseteq\>C> and <math|D> a
      class such that <math|B\<subseteq\>D> then
      <math|A<big|cup>B\<subseteq\>C<big|cup>D>

      <item>If <math|C> is a class such that <math|C\<subseteq\>A> and
      <math|C\<subseteq\>B> then <math|C\<subseteq\>A<big|cap>B>

      <item>If C is a class such that <math|A\<subseteq\>C> and <math|D> a
      class such that <math|B\<subseteq\>D> then
      <math|A<big|cap>B\<subseteq\>C<big|cap>D>
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

      <item>If <math|x\<in\>A\\B> then <math|x\<in\>A\<wedge\>x\<nin\>B> so
      that <math|A\\B\<subseteq\>A>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|A<big|cup>B|)>\\C>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<around*|(|A<big|cup>B|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|<around*|(|A<big|cap>C<rsup|c>|)><big|cup><around*|(|B<big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class difference>]>>>|<cell|<around*|(|A\\C|)><big|cup><around*|(|B\\C|)>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>A<big|cup>B> then
      <math|x\<in\>A\<Rightarrowlim\><rsub|A\<subseteq\>C>x\<in\>C> or
      <math|x\<in\>B\<Rightarrowlim\><rsub|B\<subseteq\>C>x\<in\>C> proving
      that <math|x\<in\>C>

      <item>Using (1) <math|A\<subseteq\>C<big|cup>D> and
      <math|B\<subseteq\>C<big|cup>D>, so using (6) we have
      <math|A<big|cup>B\<subseteq\>C<big|cup>D>

      <item>If <math|x\<in\>C> then <math|x\<in\>A> and <math|x\<in\>B> so
      that <math|x\<in\>A<big|cap>B>

      <item>If <math|x\<in\>A<big|cap>B> then
      <math|x\<in\>A\<Rightarrowlim\><rsub|A\<subseteq\>C>x\<in\>C> and
      <math|x\<in\>B\<Rightarrowlim\><rsub|B\<subseteq\>D>x\<in\>D> hence
      <math|x\<in\>C<big|cap>D>.
    </enumerate>

    \;
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
      <item><math|A\\<around*|(|B<big|cup>C|)>=<around*|(|A\\B|)><big|cap><around*|(|A\\C|)>=<around*|(|A\\B|)>\\C>

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
        difference>>>>|<cell|<around*|(|A\\B|)><big|cap><around*|(|A\\C|)>>>|<row|<cell|A\\<around*|(|B<big|cup>C|)>>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|A<big|cap><around*|(|B<big|cup>C|)><rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|class de Morgan's law>>>>|<cell|A<big|cap><around*|(|B<rsup|c><big|cap>C<rsup|c>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|A<big|cap>B<rsup|c>|)><big|cap>C<rsup|c>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:<reference|class
        difference>>>>|<cell|<around*|(|A\\B|)>\\C>>>>
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
    <label|set successor set><index|successor set>A set <math|S> is a
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
    Subsets>Every sub-class of a set is a set
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

      <item>If <math|A\<in\>\<cal-A\>> then
      <math|A\<subseteq\><big|cup>\<cal-A\>>

      <item>If <math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|C\<subseteq\>A> then <math|C\<subseteq\><big|cap>\<cal-A\>>

      <item>If <math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|A\<subseteq\>C> then <math|<big|cup>\<cal-A\>\<subseteq\>C>

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

      <item>If <math|x\<in\>A> then <math|\<exists\>y\<in\>\<cal-A\>> such
      that <math|x\<in\>y> [take <math|y=A>] so that
      <math|x\<in\><big|cup>\<cal-A\>>

      <item>If <math|x\<in\>C> then <math|\<forall\>A\<in\>\<cal-A\>> we have
      as <math|C\<in\>A> that <math|x\<in\>A> so that
      <math|x\<in\><big|cap>\<cal-A\>>

      <item>If <math|x\<in\><big|cup>\<cal-A\>> then
      <math|\<exists\>A\<in\>\<cal-A\>> such that <math|x\<in\>A> which as
      <math|A\<subseteq\>C> proves that <math|x\<in\>A>

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
    <label|parttial function graph><dueto|Graph>A graph is a sub class of
    <math|\<cal-U\>\<times\>\<cal-U\>>, or in other words a graph is a
    collection of pairs.
  </definition>

  <\definition>
    <label|partial function>A triple <math|<around*|\<langle\>|A,B,f|\<rangle\>>>
    where <math|A,B> are classes and <math|f> a graph is a
    <with|font-series|bold|partial function between <math|A> and <math|B>> if\ 

    <\enumerate>
      <item><math|f\<subseteq\>A\<times\>B>

      <item>If <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>f>
      then <math|y=y<rprime|'>>
    </enumerate>

    We call <math|A> the <with|font-series|bold|source> of the partial
    function, <math|B> the <with|font-series|bold|destination> of the partial
    function and <math|f> the <with|font-series|bold|graph> of the partial
    function.
  </definition>

  <\remark>
    Instead of writing <math|<around*|\<langle\>|A,B,f|\<rangle\>>> for a
    partial function between <math|A> and <math|B> we use the notation
    <math|f:A\<rightarrow\>B> or <math|A<long-arrow|\<rubber-rightarrow\>|f>>B.
    Further the condition (2) ensures that only one value can be associated
    with <math|x>. So it is useful to use a special notation for this unique
    value, especially if we have a expression to calculate this unique value.
  </remark>

  <\definition>
    Let <math|f:A\<rightarrow\>B> be a partial function then
    <math|<around*|(|x,y|)>\<in\>f> is equivalent with
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
    partial function and <math|C> a class then <with|font-series|bold|the
    preimage of C by f> noted as <math|f<rsup|-1><around*|(|C|)>> is defined
    by\ 

    <\equation*>
      f<rsup|-1><around*|(|C|)>=<around*|{|x\|\<exists\>y\<in\>C<text| such
      that ><around*|(|x,y|)>\<in\>f|}>
    </equation*>
  </definition>

  <\note>
    In contrast with most text books we do not require that
    <math|C\<subseteq\>B>, this will give us more flexibility if we compose
    partial functions.
  </note>

  <\theorem>
    <label|partial functions image/preimage properties>Let
    <math|f:A\<rightarrow\>B> be a partial function, <math|C\<subseteq\>A>
    and <math|D> a class then we have:

    <\enumerate>
      <item><math|f<around*|(|C|)>\<subseteq\>range<around*|(|f|)>>

      <item><math|f<rsup|-1><around*|(|D|)>\<subseteq\>dom<around*|(|f|)>>

      <item><math|f<around*|(|A|)>=range<around*|(|f|)>>

      <item><math|f<rsup|-1><around*|(|B|)>=dom<around*|(|f|)>>

      <item>If <math|E\<subseteq\>C> then
      <math|f<around*|(|E|)>\<subseteq\>f<around*|(|C|)>>

      <item>If <math|E\<subseteq\>D> then
      <math|f<rsup|-1><around*|(|E|)>\<subseteq\>f<rsup|-1><around*|(|D|)><rsup|>>
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

      <item>If <math|y\<in\>f<around*|(|E|)>> then <math|\<exists\>x\<in\>E>
      such that <math|<around*|(|x,y|)>\<in\>f>, as <math|E\<subseteq\>C> we
      have <math|x\<in\>C> and still <math|<around*|(|x,y|)>\<in\>f> so that
      <math|y\<in\>f<around*|(|C|)>> proving\ 

      <\equation*>
        f<around*|(|E|)>\<subseteq\>f<around*|(|C|)>
      </equation*>

      <item>If <math|x\<in\>f<rsup|-1><around*|(|E|)>> there
      <math|\<exists\>y\<in\>E> such that <math|<around*|(|x,y|)>\<in\>f>, as
      <math|E\<subseteq\>D> we have <math|y\<in\>D> and still
      <math|<around*|(|x,y|)>\<in\>f> so that
      <math|x\<in\>f<rsup|-1><around*|(|D|)>> proving\ 

      <\equation*>
        f<rsup|-1><around*|(|E|)>\<subseteq\>f<rsup|-1><around*|(|D|)>
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
    <label|partial function composition of
    graphs><index|<math|g\<circ\>f>><dueto|Composition of graphs>Let
    <math|f,g> be two graphs then <math|f\<circ\>g> is defined by

    <\equation*>
      g\<circ\>f=<around*|{|z\|z=<around*|(|x,y|)><text| such that
      <math|\<exists\>u<text| with <math|<around*|(|x,u|)>\<in\>f\<wedge\><around*|(|u,y|)>\<in\>g>>>>|}>
    </equation*>
  </definition>

  <\theorem>
    <label|partial function composition of partial functions>Let
    <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> be partial
    functions then

    <\equation*>
      g\<circ\>f:A\<rightarrow\>D
    </equation*>

    is a partial function. We call <math|g\<circ\>f:A\<rightarrow\>D> the
    <with|font-series|bold|composiiton> of <math|f:A\<rightarrow\>B> and
    <math|g:C-D>
  </theorem>

  <\proof>
    If <math|<around*|(|x,y|)>\<in\>g\<circ\>f> then there exist a <math|u>
    such that <math|<around*|(|x,u|)>\<in\>f> and
    <math|<around*|(|u,y|)>\<in\>g>, as <math|f>, <math|g> are partial
    functions we have that <math|f\<subseteq\>A\<times\>B> and
    <math|g\<subseteq\>C\<times\>D>. So <math|<around*|(|x,u|)>\<in\>A\<times\>B>
    and <math|<around*|(|u,y|)>\<in\>C\<times\>D>. So <math|x\<in\>A> and
    <math|y\<in\>D> proving that <math|<around*|(|x,y|)>\<in\>A\<times\>D>.
    Hence

    <\equation*>
      g\<circ\>f\<subseteq\>A\<times\>D
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

    So all the requirements for <math|g\<circ\>f:A\<rightarrow\>D> to be a
    partial function are satisfied.
  </proof>

  <\note>
    In contrast with most textbooks we do not require that <math|B=C> in this
    theorem, there is no need for this because for partial functions
    <math|dom<around*|(|f\<circ\>g|)>> can be different from <math|A>. Later
    we will compose functions and then we will need a extra condition for
    <math|C>.
  </note>

  <\theorem>
    <label|partial function associativity><dueto|Associativity of
    Composition>Let <math|f:A\<rightarrow\>B>, <math|g:C\<rightarrow\>D> and
    <math|h:E\<rightarrow\>F> be partial functions <math|>then
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
    <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> be partial
    functions then for <math|g\<circ\>f:A\<rightarrow\>D> we have\ 

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

      If <math|x\<in\>dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|\<nobracket\>|<around*|(|g|)>|)>|\<nobracket\>>>
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
      Hence <math|z\<in\>range<around*|(|g|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|partial function image preimage of compositions>If
    <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> are partial
    functions then we have\ 

    <\enumerate>
      <item>If <math|E\<subseteq\>A> then
      <math|<around*|(|g\<circ\>f|)><around*|(|E|)>=g<around*|(|f<around*|(|E|)>|)>>

      <item>If <math|E\<subseteq\>D> then
      <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|z\<in\><around*|(|g\<circ\>f|)><around*|(|E|)>> then
      there exists a <math|x\<in\>E> such that
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f>. So by definition there exist
      a <math|y> such that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>.
      From <math|<around*|(|x,y|)>\<in\>f> it follows that
      <math|y\<in\>f<around*|(|E|)>> and as <math|<around*|(|y,z|)>\<in\>g>
      it follows that <math|z\<in\>g<around*|(|f<around*|(|E|)>|)>>. Hence\ 

      <\equation>
        <label|eq 2.12.002><around*|(|g\<circ\>f|)><around*|(|E|)>\<subseteq\>g<around*|(|f<around*|(|E|)>|)>
      </equation>

      On the other hand if <math|z\<in\>g<around*|(|f<around*|(|E|)>|)>>
      there exist a <math|y\<in\>f<around*|(|E|)>> such that
      <math|<around*|(|y,z|)>\<in\>g>. As <math|y\<in\>f<around*|(|E|)>>
      there exists a <math|x\<in\>E> such that
      <math|<around*|(|x,y|)>\<in\>f>. From
      <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g> it
      follows that <math|<around*|(|x,z|)>\<in\>g\<circ\>f> so that [as
      <math|x\<in\>E>] <math|z\<in\><around*|(|g\<circ\>f|)><around*|(|E|)>>.
      Proving <math|g<around*|(|f<around*|(|E|)>|)>\<subseteq\><around*|(|g\<circ\>f|)><around*|(|E|)>>,
      combining this with [eq <reference|eq 2.12.002>] and [theorem:
      <reference|class properties (1)>] gives\ 

      <\equation*>
        <around*|(|g\<circ\>f|)><around*|(|E|)>=g<around*|(|f<around*|(|E|)>|)>
      </equation*>

      <item>If <math|x\<in\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>>
      then there exist a <math|z\<in\>E> such that
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f>, hence <math|\<exists\>y> such
      that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>.
      So by definition <math|y\<in\>g<rsup|-1><around*|(|E|)>> and as
      <math|<around*|(|x,y|)>\<in\>f> it follows that
      <math|x\<in\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>>. Hence\ 

      <\equation>
        <label|eq 2.13.002><around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>\<subseteq\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>
      </equation>

      If <math|x\<in\>f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>> then
      there exist a <math|y\<in\>g<rsup|-1><around*|(|E|)>> such that
      <math|<around*|(|x,y|)>\<in\>f>, as
      <math|y\<in\>g<rsup|-1><around*|(|E|)>> then there exist a
      <math|z\<in\>E> such that <math|<around*|(|y,z|)>\<in\>g>. From
      <math|z\<in\>E\<wedge\><around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>
      it follows that <math|x\<in\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>>
      proving that <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>\<subseteq\><around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>>.
      Combining this with [eq: <reference|eq 2.13.002>] and [theorem:
      <reference|class properties (1)>] gives

      <\equation*>
        <around*|(|g\<circ\>f|)><rsup|-1><around*|(|E|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|E|)>|)>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Functions>

  <\definition>
    <label|function><index|function>A partial function
    <math|f:A\<rightarrow\>B> is a <with|font-series|bold|function> iff
    <math|dom<around*|(|f|)>=A>
  </definition>

  So every function is also a partial function, hence statements about
  partial functions applies also for functions. One special benefiit of
  functions is the following.

  <\theorem>
    <label|function preimage of image (1)>If <math|f:A\<rightarrow\>B> is a
    function then for <math|C\<subseteq\>A> we have
    <math|C\<subseteq\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>>.
  </theorem>

  <\proof>
    If <math|x\<in\>C\<subseteq\>A> then as <math|A=dom<around*|(|f|)>> there
    exist a <math|y> such that <math|<around*|(|x,y|)>\<in\>f> so that
    <math|y\<in\>f<around*|(|C|)>>, which as <math|<around*|(|x,y|)>\<in\>f>
    proves that <math|x\<in\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>>. Hence
    we have <math|C\<subseteq\>f<rsup|-1><around*|(|f<around*|(|C|)>|)>>.
  </proof>

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
    <label|function between {0,1} and {A,B}>Let <math|A,B> be elements and
    define <math|f=<around*|{|<around*|(|0,A|)>,<around*|(|1,B|)>|}>> then
    <math|f:<around*|{|0,1|}>\<rightarrow\><around*|{|A,B|}>> is a function\ 
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

  Although the composition of functions <math|f:A\<rightarrow\>B> and
  <math|g:C\<rightarrow\>D> is a partial function [see theorem:
  <reference|partial function composition of partial functions>], it does not
  have to be a function as we need the extra requirement that
  <math|dom<around*|(|g\<circ\>f|)>=A>. So we must have a extra condition on
  <math|C>. This is expressed in the following theorem,

  <\theorem>
    <label|function composition of functions is a fucntion>Let
    <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> functions with
    <math|f<around*|(|A|)>\<subseteq\>C> then
    <math|g\<circ\>f:C\<rightarrow\>D> is also a function with
    <math|range<around*|(|g\<circ\>f|)>=g<around*|(|range<around*|(|f|)>|)>>
  </theorem>

  <\proof>
    Using [theorem: <reference|partial function composition of partial
    functions>] we have that\ 

    <\equation*>
      g\<circ\>f:A\<rightarrow\>D<text| is a partial function>
    </equation*>

    Using [theorem: <reference|function preimage of image (1)>] we have that
    <math|A\<subseteq\>f<rsup|-1><around*|(|f<around*|(|A|)>|)>> and by
    [theorem: <reference|partial functions image/preimage properties>]
    together with <math|f<around*|(|A|)>\<subseteq\>C> we have
    <math|f<rsup|-1><around*|(|f<around*|(|A|)>|)>\<subseteq\>f<rsup|-1><around*|(|C|)>>
    proving that\ 

    <\equation>
      <label|eq 2.14.038>A\<subseteq\>f<rsup|-1><around*|(|C|)>
    </equation>

    \ 

    Further using [theorem: <reference|partial function domain range
    composition>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|dom<around*|(|g\<circ\>f|)>>|<cell|=>|<cell|dom<around*|(|f|)><big|cap>f<rsup|-1><around*|(|dom<around*|(|g|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f,g
      <text| are functions>>>|<cell|A<big|cap>f<rsup|-1><around*|(|C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 2.14.038>]>>>|<cell|A>>>>
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
      is a function>>>|<cell|g<around*|(|range<around*|(|f|)><big|cap>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|partial functions image/preimage
      properties>]>>>|<cell|g<around*|(|f<around*|(|A|)><big|cap>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<around*|(|A|)>\<subseteq\>C>>|<cell|g<around*|(|f<around*|(|A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|partial functions image/preimage
      properties>]>>>|<cell|g<around*|(|range<around*|(|f|)>|)>>>>>
    </eqnarray*>
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

  <\lemma>
    <label|function extend target>If <math|f:A\<rightarrow\>B> is a function
    and <math|B\<subseteq\>C> then <math|f:A\<rightarrow\>C> is a function
  </lemma>

  <\proof>
    As <math|f:A\<rightarrow\>B> is a function we have
    <math|f\<subseteq\>A\<times\>B> which as by [theorem:
    <reference|cartesian product and inclusion>]
    <math|A\<times\>B\<subseteq\>A\<times\>C> means that
    <math|f\<subseteq\>A\<times\>C>'. Further as <math|f:A\<rightarrow\>B> is
    a function we we have also <math|dom<around*|(|f|)>=A> and if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> then
    <math|y=y<rprime|'>>. So by definition<math|f:A\<rightarrow\>C> is a
    function.
  </proof>

  <\theorem>
    <label|function B^A and inclusion>Let <math|A,B,C> be classes such that
    <math|B\<subseteq\>C> then <math|B<rsup|A>\<subseteq\>C<rsup|A>>
  </theorem>

  <\proof>
    Let <math|f\<in\>B<rsup|A>> then <math|f:A\<rightarrow\>B> is a function,
    using the above lemma [lemma: <reference|function extend target>] we have
    that <math|f:A\<rightarrow\>C> is a function, hence
    <math|f\<in\>C<rsup|A>> proving that\ 

    <\equation*>
      B<rsup|A>\<subseteq\>C<rsup|A>
    </equation*>
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

    <\equation*>
      <with|font-series|bold|y=f<around*|(|x|)>><text| or
      <math|<with|font-series|bold|f<around*|(|x|)>=y>> is equivalent with
      ><with|font-series|bold|<around*|(|x,y|)>\<in\>f>
    </equation*>

    and

    <\equation*>
      <with|font-series|bold|f<around*|(|x|)>=E<around*|(|x|)>><text| where
      <math|<with|font-series|bold|E<around*|(|x|)>><text| is a expression
      depending on <with|font-series|bold|<math|x>> is equivalent with
      ><with|font-series|bold|<around*|(|x,E<around*|(|x|)>|)>\<in\>f>>>
    </equation*>

    Further if <math|D\<subseteq\>B> then
    <with|font-series|bold|<math|<with|font-series|bold|f<around*|(|x|)>\<in\>D>>>
    is the same as <with|font-series|bold|<math|\<exists\>y\<in\>D> such that
    <math|y=f<around*|(|x|)>> or <math|<around*|(|x,y|)>\<in\>f>>
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
    <label|function alternative for composition>If <math|f:A\<rightarrow\>B>
    and <math|g:C\<rightarrow\>D> are two functions with
    <math|f<around*|(|A|)>\<subseteq\>C> then\ 

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
    <math|\<cal-X\><rsub|A,B>:A\<rightarrow\><around*|{|0,1|}>> is defined by
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
    be a class then <math|Id<rsub|A>:A\<rightarrow\>B> is defined by

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

  \;

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

      <item>If <math|B\<subseteq\>C> and <math|f:A\<rightarrow\>B> is
      injective then <math|f:A\<rightarrow\>C> is injective

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

      <item>This is trivial because injectivity is a property of the graph of
      a function.

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
        surjective
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
      <item>This is stated in [theorem: <reference|function preimage of image
      (1)>]

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

  <\corollary>
    <label|function injection condition>If <math|f:A\<rightarrow\>B> is a
    function, <math|A\<neq\>\<varnothing\>> then <math|f:A\<rightarrow\>B> is
    injective if and only if there exist a function <math|g:B\<rightarrow\>A>
    such that <math|g\<circ\>f=Id<rsub|A>>
  </corollary>

  <\proof>
    \;

    <\description>
      <item*|<math|\<Rightarrow\>>>Using the above [theorem:
      <reference|function injective inverse is a function>] we have that
      <math|f<rsup|-1>:f<around*|(|A|)>\<rightarrow\>A> is a function. As
      <math|A\<neq\>0> there exist a <math|a\<in\>A> so we can consider the
      constant function <math|C<rsub|a>:B\\f<around*|(|A|)>\<rightarrow\>A>
      [see example: <reference|function constant function>]. As
      <math|f<around*|(|A|)><big|cap><around*|(|B\\f<around*|(|A|)>|)>=\<varnothing\>>
      and <math|B=f<around*|(|A|)><big|cup><around*|(|B\<setminus\>f<around*|(|A|)>|)>>
      we have by [theorem: <reference|function combining functions (1)>] that\ 

      <\equation*>
        g=C<rsub|a><big|cup>f<rsup|-1>\<of\>B\<rightarrow\>A
      </equation*>

      is a function. If <math|<around*|(|x,y|)>\<in\>g\<circ\>f> <math|then
      >\<exists\>z such that <math|<around*|(|x,z|)>\<in\>f\<wedge\><around*|(|z,y|)>\<in\>g>.
      As <math|<around*|(|x,z|)>\<in\>f> we have that
      <math|<around*|(|z,x|)>\<in\>f<rsup|-1>\<subseteq\>C<rsub|a><big|cup>f<rsup|-1>=g>,
      as also <math|<around*|(|z,y|)>\<in\>g> and <math|g> is function, we
      have that <math|y=x> so that <math|<around*|(|x,y|)>=<around*|(|x,x|)>\<in\>Id<rsub|A>>
      hence\ 

      <\equation*>
        g\<circ\>f\<subseteq\>Id<rsub|A>
      </equation*>

      Further if <math|<around*|(|x,y|)>\<in\>Id<rsub|A>> then <math|x=y>, as
      <math|x\<in\>A=dom<around*|(|f|)>> there exist a <math|z\<in\>B> such
      that <math|<around*|(|x,z|)>\<in\>f\<Rightarrow\><around*|(|z,x|)>\<in\>f<rsup|-1>\<subseteq\>C<rsub|a><big|cup>f<rsup|-1>=g>
      proving that <math|<around*|(|x,y|)>=<around*|(|x,x|)>\<in\>g\<circ\>f>.
      Hence\ 

      <\equation*>
        Id<rsub|A>\<subseteq\>g\<circ\>f
      </equation*>

      proving that\ 

      <\equation*>
        g\<circ\>f=Id<rsub|A>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Assume that there exists a function
      <math|g:B\<rightarrow\>A> such that <math|g\<circ\>f=Id<rsub|A>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f\<subseteq\>A\<times\>B>|<cell|\<Rightarrowlim\><rsub|y\<in\>B,dom<around*|(|g|)>=B>>|<cell|\<exists\>z\<vdash\><around*|(|y,z|)>\<in\>g>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x,z|)>,<around*|(|x<rprime|'>,z|)>\<in\>g\<circ\>f=Id<rsub|A>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=z=x<rprime|'>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=x<rprime|'>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\definition>
    <label|bijection><index|bijection>A function <math|f:A\<rightarrow\>B> is
    a <with|font-series|bold|bijection> iff the function is
    <with|font-series|bold|injective> and <with|font-series|bold|surjective>.
  </definition>

  <\definition>
    <label|bijective classes><index|bijective>Two classes <math|A> and
    <math|B> are bijective iff there exists a bijection between <math|A> and
    <math|B>
  </definition>

  <\example>
    <label|function empty function bijection>The function
    <math|\<varnothing\>:\<varnothing\>\<rightarrow\>\<varnothing\>> is a
    bijection.
  </example>

  <\proof>
    By [example: <reference|function empty function>]
    <math|\<varnothing\>:\<varnothing\>\<rightarrow\>\<varnothing\>> is a
    function. To prove that is a bijection we have:

    <\description>
      <item*|injectivity><math|\<forall\><around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>\<varnothing\>>
      we have <math|x=x<rprime|'>> is satisfied vacuously.

      <item*|surjectivity><math|\<forall\>y\<in\>\<varnothing\>> there exist
      a <math|x\<in\>\<varnothing\>> such that
      <math|<around*|(|x,y|)>\<in\>\<varnothing\>> is satisfied vacuously.
    </description>
  </proof>

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
    <label|function trivial bijection>Let <math|I=<around*|{|0|}>> <math|B> a
    class and take <math|f:I\<rightarrow\><around*|{|B|}>> defined by
    <math|f=<around*|{|<around*|(|0,B|)>|}>> is a bijection
  </example>

  <\proof>
    As <math|0\<in\><around*|{|0|}>> and <math|B\<in\><around*|{|B|}>> it
    follows that <math|<around*|(|0,B|)>\<in\><around*|{|0|}>\<times\><around*|{|B|}>>,
    hence <math|f=<around*|{|<around*|(|0,B|)>|}>\<subseteq\><around*|{|0|}>\<times\><around*|{|B|}>>.
    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f=<around*|{|0|}>\<times\><around*|{|B|}>>
    then <math|y=B=y<rprime|'>>, further <math|dom<around*|(|f|)>=<around*|{|0|}>=I>.
    So we conclude that <math|f:<around*|{|0|}>\<rightarrow\><around*|{|B|}>>
    is indeed a function. Further if <math|y\<in\><around*|{|B|}>> then
    <math|y=B> and as <math|<around*|(|0,B|)>\<in\>f> it follows that
    <math|y\<in\>range<around*|(|f|)>> or
    <math|<around*|{|B|}>\<subseteq\>range<around*|(|f|)>>, which by
    [theorem: <reference|function surjection condition>] proves that <math|f>
    is surjective. Finally if <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f=<around*|{|<around*|(|0,B|)>|}>>
    then <math|x=0=x<rprime|'>> proving that
    <math|f:<around*|{|0|}>\<rightarrow\><around*|{|B|}>> is a bijection.
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

  Composition preserves injectivity, surjectivity and <math|bijectivity>.

  <\theorem>
    <label|function composition injectivity, surjectivity and bijectivity>We
    have\ 

    <\enumerate>
      <item><math|If> <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D>
      are injective functions with <math|f<around*|(|A|)>\<subseteq\>C> then
      <math|g\<circ\>f:A\<rightarrow\>D> is a injective function.

      <item>If <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> are
      injective functions with <math|f<around*|(|A|)>\<subseteq\>C> then
      <math|g\<circ\>f:A\<rightarrow\>g<around*|(|f<around*|(|A|)>|)>> is a
      bijective function.

      <item>If <math|f:A\<rightarrow\>B> is a function and
      <math|g:C\<rightarrow\>D> a surjective function so that
      <math|f<around*|(|A|)>=C> then <math|g\<circ\>f:A\<rightarrow\>D> is a
      surjective function.

      <item>If <math|f:A\<rightarrow\>B> is a injective function and
      <math|g:C\<rightarrow\>D> a bijective function so that
      <math|f<around*|(|A|)>=C> then <math|g\<circ\>f:A\<rightarrow\>D> is a
      bijective function.

      <item>If <math|f:A\<rightarrow\>B> is a injective function and
      <math|g:C\<rightarrow\>D> a bijective function \ so that
      <math|f<around*|(|A|)>=C> then <math|<around*|(|g\<circ\>f|)><rsup|-1>=f<rsup|-1>\<circ\>g<rsup|-1>>.
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

      <item>Using (1) we have that <math|g\<circ\>f:A\<rightarrow\>D> is
      injective so that by [theorem: <reference|function injectivity to
      bijection>] <math|g\<circ\>f:A\<rightarrow\><around*|(|g\<circ\>f|)><around*|(|A|)>>
      is a bijection. Further by [theorem: <reference|partial function image
      preimage of compositions>] <math|<around*|(|g\<circ\>f|)><around*|(|A|)>=g<around*|(|f<around*|(|A|)>|)>>
      so that <math|g\<circ\>f:A\<rightarrow\>g<around*|(|f<around*|(|A|)>|)>>
      is a bijection.

      <item>Let <math|z\<in\>D> then as <math|g> is surjective there
      <math|\<exists\>y\<in\>C> such that <math|<around*|(|y,z|)>\<in\>g>. As
      <math|f<around*|(|A|)>=C> there exists a <math|x\<in\>A> such that
      <math|<around*|(|x,y|)>\<in\>f>. But then
      <math|<around*|(|x,z|)>\<in\>g\<circ\>f> proving that <math|g\<circ\>f>
      is surjective.

      <item>Using (1) and (2) proves that <math|g\<circ\>f:A\<rightarrow\>D>
      is injective and surjective and thus by definition bijective.

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

  In the special case that <math|B=C> we have\ 

  <\corollary>
    <label|function composition injectivity, surjectivity and bijectivity
    (1)>We have\ 

    <\enumerate>
      <item><math|If> <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C>
      are injective functions then <math|g\<circ\>f:A\<rightarrow\>C> is a
      injective function.

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      surjective functions then <math|g\<circ\>f:A\<rightarrow\>C> is a
      surjective function.

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      bijective function then <math|g\<circ\>f:A\<rightarrow\>C> is a
      bijective function.

      <item>If <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C> are
      bijective function \ then <math|<around*|(|g\<circ\>f|)><rsup|-1>=f<rsup|-1>\<circ\>g<rsup|-1>>.
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from [theorem: <reference|function composition
      injectivity, surjectivity and bijectivity> (1)] because
      <math|f<around*|(|A|)>\<subseteq\>B>.

      <item>This follows from [theorem: <reference|function composition
      injectivity, surjectivity and bijectivity> (2)] because if <math|f> is
      surjective we have <math|f<around*|(|A|)>=B>.

      <item>This follows from (1) and (2)

      <item>This follows from [theorem: <reference|function composition
      injectivity, surjectivity and bijectivity> (4)] because if <math|f> is
      bijective, hence surjective, we have <math|f<around*|(|A|)>=B>
    </enumerate>
  </proof>

  The following is a example of a bijection between a class and the class of
  functions in this set.

  <\theorem>
    <label|function and power>Let <math|A> be a class then there exists a
    bijection between <math|A> and <math|A<rsup|<around*|{|0|}>>>
  </theorem>

  <\proof>
    Given <math|x\<in\>A> define the function
    <math|f<rsub|x>:<around*|{|0|}>\<rightarrow\><around*|{|x|}>> where
    <math|f<rsub|x>=<around*|{|<around*|(|0,x|)>|}>> [see [example:
    <reference|function trivial bijection>] to prove that this is a function
    (even a bijection)]. So <math|f<rsub|x>\<in\><around*|{|x|}><rsup|<around*|{|0|}>>,>
    which as <math|<around*|{|x|}>\<subseteq\>A> proves by [theorem:
    <reference|function B^A and inclusion>] that
    <math|f<rsub|x>\<in\>A<rsup|<around*|{|0|}>>>. Define now
    <math|f=<around*|{|z\|z=<around*|(|x,f<rsub|x>|)><text| where
    >x\<in\>A|}>>. If <math|<around*|(|x,y|)>\<in\>f> we have <math|x\<in\>A>
    and thus <math|y=f<rsub|x>\<in\>A<rsup|<around*|{|0|}>>> hence
    <math|<around*|(|x,y|)>\<in\>A\<times\>A<rsup|<around*|{|0|}>>>. Also if
    <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>A> then
    <math|y=f<rsub|x>> and <math|y<rprime|'>=f<rsub|x>> so that
    <math|y=y<rprime|'>>. Further for every <math|x\<in\>A> we have by the
    definition of <math|f> that <math|<around*|(|x,f<rsub|x>|)>\<in\>f>. So
    we conclude that

    <\equation*>
      f:A\<rightarrow\>A<rsup|<around*|{|0|}>><text| is a function>
    </equation*>

    Assume now that <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f>
    then <math|f<rsub|x>=y=f<rsub|x<rprime|'>>>, so that
    <math|<around*|{|<around*|(|0,x|)>|}>=<around*|{|<around*|(|0,x<rprime|'>|)>|}>>,
    hence <math|<around*|(|0,x|)>=<around*|(|0,x<rprime|'>|)>>, from which it
    follows that <math|x=x<rprime|'>>. this proves that\ 

    <\equation*>
      f:A\<rightarrow\>A<rsup|<around*|{|0|}>><text| is a injective function>
    </equation*>

    If <math|y\<in\>A<rsup|<around*|{|0|}>>> then
    <math|y:<around*|{|0|}>\<rightarrow\>A> is a function, hence
    <math|0\<in\><around*|{|0|}>=dom<around*|(|y|)>>, so there exists a
    <math|z> such that <math|<around*|(|0,z|)>\<in\>y\<subseteq\><around*|{|0|}>\<times\>A>
    proving that <math|z\<in\>A>. Hence\ 

    <\equation>
      <label|eq 2.16.005><around*|{|<around*|(|0,z|)>|}>\<subseteq\>y\<wedge\>z\<in\>A<text|>
    </equation>

    If <math|<around*|(|u,v|)>\<in\>y\<subseteq\><around*|{|0|}>\<times\>A>
    then <math|u=0> so that <math|<around*|(|0,u|)>\<in\>y>, which, as
    <math|<around*|(|0,z|)>\<in\>y> and <math|y> is a function, proves that
    <math|u=z> or <math|<around*|(|u,v|)>=<around*|(|0,z|)>\<in\><around*|{|<around*|(|0,z|)>|}>>.
    <math|>So <math|y\<subseteq\><around*|{|<around*|(|0,z|)>|}>> which
    combined with [eq: <reference|eq 2.16.005>] proves that
    <math|<around*|{|<around*|(|0,z|)>|}>=y>. As
    <math|f<rsub|z>=<around*|{|<around*|(|0,z|)>|}>=y> we have that
    <math|<around*|(|z,y|)>\<in\>f> which proves that\ 

    <\equation*>
      f<text| is a surjection>
    </equation*>
  </proof>

  <\theorem>
    <label|function P(A)=2^A>If <math|A> is a class then there is a bijection
    between <math|\<cal-P\><around*|(|A|)>> and
    <math|<around*|{|0,1|}><rsup|A>> where <math|0=\<varnothing\>> and
    <math|1=<around*|{|\<varnothing\>|}>> are different elements.
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
  satisfies these, but that the restriction of this graph to a sub-class
  satisfies the conditions. For example, the function
  <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> defined by
  <math|f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1<text| if
  >x\<less\>1>>|<row|<cell|0<text| if >1\<leqslant\>x>>>>>> is not
  continuous, as it is discontinuous at <math|1.> However restricting this
  function to <math|\<bbb-R\>\\<around*|{|1|}>> produces a continuous
  function. \ This is the idea of the next definition\ 

  <\definition>
    <label|function restriction of a graph><index|<math|f<rsub|\|C>>>Let
    <math|f:A\<rightarrow\>B> be a partial function and <math|C\<subseteq\>A>
    a sub-class of <math|A> then the restriction of <math|f> to <math|C>
    noted by <math|f<rsub|\|C>> is defined by

    <\equation*>
      f<rsub|\|C>=<around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>=f<big|cap><around*|(|C\<times\>B|)>
    </equation*>

    which defines the partial function

    <\equation*>
      f<rsub|\|C>:C\<rightarrow\>B
    </equation*>
  </definition>

  <\proof>
    We must of course proof that <math|><math|<around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>=f<big|cap><around*|(|C\<times\>B|)>>
    and that <math|f<rsub|\|C>:C\<rightarrow\>B> is indeed a partial
    function. If <math|<around*|(|x,y|)>\<in\><around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>>
    then <math|<around*|(|x,y|)>\<in\>f\<subseteq\>A\<times\>B\<Rightarrow\>y\<in\>B>
    and <math|x\<in\>C>, so that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x,y|)>\<in\>C\<times\>B>,
    hence <math|<around*|(|x,y|)>\<in\>f<big|cap><around*|(|C\<times\>B|)>>.
    If <math|<around*|(|x,y|)>\<in\>f<big|cap><around*|(|C\<times\>B|)>> then
    <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x,y|)>\<in\>C\<times\>B\<Rightarrow\>x\<in\>C>,
    proving that <math|<around*|(|x,y|)>\<in\><around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>>.
    So we have that\ 

    <\equation*>
      f<rsub|\|C>=<around*|{|z\|z=<around*|(|x,y|)>\<in\>f\<wedge\>x\<in\>C|}>=f<big|cap><around*|(|C\<times\>B|)>
    </equation*>

    \ From the above it follows, using [theorem: <reference|class
    intersection, union, inclusion>], that\ 

    <\equation*>
      f<rsub|\|C>\<subseteq\>C\<times\>B
    </equation*>

    Finally, if <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<rsub|\|C>>
    then <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> so that
    <math|y=y<rprime|'>>. Hence we have that
    <math|f<rsub|\|C>:C\<rightarrow\>B> is a partial function.
  </proof>

  <\theorem>
    <label|function combining functions (1)>Let <math|f:A\<rightarrow\>C> and
    <math|g:B\<rightarrow\>C> be two partial functions such that
    <math|A<big|cap>B=\<varnothing\>> then

    <\enumerate>
      <item><math|f<big|cup>g:A<big|cup>B\<rightarrow\>C> is a partial
      function

      <item><math|f=<around*|(|f<big|cup>g|)><rsub|\|A>> and
      <math|g=<around*|(|f<big|cup>g|)><rsub|\|B>>

      <item><math|dom<around*|(|f<big|cup>g|)>=dom<around*|(|f|)><big|cup>dom<around*|(|g|)>>

      <item>If <math|f:A\<rightarrow\>C> and <math|g:B\<rightarrow\>C> are
      functions then <math|f<big|cup>g:A<big|cup>B\<rightarrow\>C> are
      functions
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f:A\<rightarrow\>C> and <math|g:B\<rightarrow\>C> are
      functions we have that <math|f\<subseteq\>A\<times\>C> and
      <math|g\<subseteq\>B\<times\>C> so that by [theorem: <reference|class
      intersection, union, inclusion>]

      <\equation*>
        f<big|cup>g\<subseteq\><around*|(|A\<times\>C|)><big|cup><around*|(|B\<times\>C|)>\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product properties
        (1)>]>><around*|(|A<big|cup>B|)>\<times\>C
      </equation*>

      Let <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<big|cup>g>.
      Assume that <math|y\<neq\>y<rprime|'>> then we can not have that
      <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f> for then,
      as <math|f> is a function, we would have <math|y=y<rprime|'>>, likewise
      we can not have that <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>g>,
      for then, as <math|g> is a function, we would have that
      <math|y=y<rprime|'>>. So we must that either
      <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>g>
      or <math|<around*|(|x,y|)>\<in\>g\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>f>,
      but then we would have <math|x\<in\>A<big|cap>B> which contradicts
      <math|A<big|cap>B=\<varnothing\>>. So we must have that
      <math|y=y<rprime|'>>. Summarized\ 

      <\equation*>
        <text|If ><around*|(|x,y|)>,<around*|(|x,y|)>\<in\>f<big|cup>g then
        we have y=y<rprime|'>
      </equation*>

      <item>As <math|f\<subseteq\>A\<times\>C> we have by [theorem
      :<reference|class intersection, union, inclusion>] that

      <\equation*>
        f<big|cap><around*|(|B\<times\>C|)>\<subseteq\><around*|(|A\<times\>C|)><big|cap><around*|(|B\<times\>C|)>\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product properties
        (1)>]>><around*|(|A<big|cap>B|)>\<times\>C=\<varnothing\>\<times\>C\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product with enpty set>>>\<varnothing\>
      </equation*>

      proving using [theorem: <reference|class empty set>] that\ 

      <\equation>
        <label|eq 2.21.017>f<big|cap><around*|(|B\<times\>C|)>=\<varnothing\>
      </equation>

      As \ <math|g\<subseteq\>B\<times\>C> we have by [theorem
      :<reference|class intersection, union, inclusion>] that\ 

      <\equation*>
        g<big|cap><around*|(|A\<times\>C|)>\<subseteq\><around*|(|B\<times\>C|)><big|cap><around*|(|A\<times\>C|)>\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product properties
        (1)>]>><around*|(|A<big|cap>B|)>\<times\>C=\<varnothing\>\<times\>C\<equallim\><rsub|<text|[theorem:
        <reference|cartesian product with enpty set>>>\<varnothing\>
      </equation*>

      proving using [theorem: <reference|class empty set> that\ 

      <\equation>
        <label|eq 2.22.017>g<big|cap><around*|(|A\<times\>C|)>=\<varnothing\>
      </equation>

      Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<big|cup>g|)><rsub|\|A>>|<cell|=>|<cell|<around*|(|f<big|cup>g|)><big|cap><around*|(|A\<times\>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>>>>|<cell|<around*|(|f<big|cap><around*|(|A\<times\>C|)>|)><big|cup><around*|(|g<big|cap><around*|(|A\<times\>C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 2.22.017>]>>>|<cell|<around*|(|f<big|cap><around*|(|A\<times\>C|)>|)><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|f<big|cap><around*|(|A\<times\>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f\<subseteq\>A\<times\>C
        snd <around*|[|theorem:<reference|class inclusion and union and
        intersection>|]>>>|<cell|f>>|<row|<cell|<around*|(|f<big|cup>g|)><rsub|\|B>>|<cell|=>|<cell|<around*|(|f<big|cup>g|)><big|cap><around*|(|B\<times\>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class class commutative,idempotent,associative,distributivity>>>>|<cell|<around*|(|f<big|cap><around*|(|B\<times\>C|)>|)><big|cup><around*|(|g<big|cap><around*|(|B\<times\>C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 2.21.017>]>>>|<cell|\<varnothing\><big|cup><around*|(|<big|cap><around*|(|B\<times\>C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class universal and empotyset
        properties>]>>>|<cell|g<big|cap><around*|(|B\<times\>C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g\<subseteq\>B\<times\>C
        snd <around*|[|theorem:<reference|class inclusion and union and
        intersection>|]>>>|<cell|g>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>dom<around*|(|f<big|cup>g|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y<text|
        such that ><around*|(|x,y|)>\<in\>f<big|cup>g>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y<text|
        such that ><around*|(|x,y|)>\<in\>f\<vee\><around*|(|x,y|)>\<in\>g>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>dom<around*|(|f|)>\<vee\>x\<in\>dom<around*|(|g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>dom<around*|(|f|)><big|cup>dom<around*|(|g|)>>>|<row|<cell|x\<in\>dom<around*|(|f|)><big|cup>dom<around*|(|g|)>>|<cell|\<Rightarrow\>>|<cell|x\<in\>dom<around*|(|f|)>\<vee\>x\<in\>dom<around*|(|g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|\<exists\>y<text|
        such that ><around*|(|x,y|)>\<in\>f|)>\<vee\><around*|(|\<exists\>y<rprime|'><text|
        such that ><around*|(|x,y|)>\<in\>g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|\<exists\>y<text|
        such that ><around*|(|x,y|)>\<in\>f<big|cup>g|)>\<vee\><around*|(|\<exists\>y<rprime|'><text|
        such that ><around*|(|x,y|)>\<in\>f<big|cup>g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>dom<around*|(|f<big|cup>g|)>>>>>
      </eqnarray*>

      so\ 

      <\equation*>
        dom<around*|(|f<big|cup>g|)>=dom<around*|(|f|)><big|cup>dom<around*|(|g|)>
      </equation*>

      <item>As <math|f:A\<rightarrow\>C> and <math|g:B\<rightarrow\>C> are
      functions we have that <math|A=dom<around*|(|f|)>>,
      <math|B=dom<around*|(|g|)>>. So that\ 

      <\equation*>
        dom<around*|(|f<big|cup>g|)>\<equallim\><rsub|<around*|(|3|)>>dom<around*|(|f|)><big|cup>dom<around*|(|g|)>=A<big|cup>B
      </equation*>

      proving that\ 

      <\equation*>
        f<big|cup>g:A<big|cup>B\<rightarrow\>C<text| is a function>
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|function combining functions (2)>Let <math|f:A\<rightarrow\>B> and
    <math|g:C\<rightarrow\>D> be functions such that
    <math|A<big|cap>C=\<varnothing\>> then\ 

    <\equation*>
      f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D
    </equation*>

    is a function.
  </corollary>

  <\proof>
    Using [theorem: \ <reference|function extend target>] we have that
    <math|f:A\<rightarrow\>B<big|cup>D> and
    <math|g:C\<rightarrow\>B<big|cup>D> are functions. Applying then the
    previous theorem [theorem: <reference|function combining functions (1)>]
    proves that <math|f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D> is a
    function.
  </proof>

  <\corollary>
    <label|function combining bijections>Let <math|f:A\<rightarrow\>B> and
    <math|g:C\<rightarrow\>D> be bijections with
    <math|A<big|cap>C=\<varnothing\>> and <math|B<big|cap>D=\<varnothing\>>
    then

    <\equation*>
      f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D
    </equation*>

    is a bijection.
  </corollary>

  <\proof>
    Using the previous theorem [theorem: <reference|function combining
    functions (2)>] we have that <math|f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D>
    is a function. Now we have:\ 

    <\description>
      <item*|injectivity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f<big|cup>g\<subseteq\><around*|(|A<big|cup>C|)>\<times\><around*|(|B<big|cup>D|)>>
      we have the following possibilities for <math|y>:\ 

      <\description>
        <item*|<math|y\<in\>B>>As <math|f\<subseteq\>A\<times\>B> and
        <math|g\<subseteq\>C\<times\>D> we can not have
        <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>g> [for then
        <math|y\<in\>D\<Rightarrow\>y\<in\>B<big|cap>D=\<varnothing\>>], as
        <math|g> is injective we have <math|x=x<rprime|'>>.

        <item*|<math|y\<in\>D>>As <math|f\<subseteq\>A\<times\>B> and
        <math|g\<subseteq\>C\<times\>D> we can not have
        <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f> [for then
        <math|y\<in\>B\<Rightarrow\>y\<in\>B<big|cap>D=\<varnothing\>>], as
        <math|f> is injective we have <math|x=x<rprime|'>>.
      </description>

      so in all cases we have <math|x=x<rprime|'>> proving injectivity of
      <math|><math|f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D>.\ 

      <item*|surjectivity>If <math|y\<in\>B<big|cup>D> then we have either:

      <\description>
        <item*|<math|y\<in\>B>>Then as <math|f> is surjective there exist a
        <math|x\<in\>A\<subseteq\>A<big|cup>C> such that
        <math|<around*|(|x,y|)>\<in\>f\<subseteq\>f<big|cup>g>.

        <item*|<math|y\<in\>D>>Then as <math|g> is surjective there exist a
        <math|x\<in\>C\<subseteq\>A<big|cup>C> such that
        <math|<around*|(|x,y|)>\<in\>g\<subseteq\>f<big|cup>g>.
      </description>

      proving that in all cases there exist a <math|x\<in\>A<big|cup>C> such
      that <math|<around*|(|x,y|)>\<in\>f<big|cup>g>.
    </description>
  </proof>

  <\corollary>
    <label|function extending funtion domain>Let <math|f:A\<rightarrow\>B> be
    a function <math|a,b> elements such that <math|a\<nin\>A> then

    <\equation*>
      g:A<big|cup><around*|{|a|}>\<rightarrow\>B<big|cup><around*|{|b|}><text|
      defined by >g=<around*|{|<around*|(|a,b|)>|}><big|cup>f
    </equation*>

    is a function.

    <\note>
      A alternative definition of <math|g> is
      <math|g<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|b<text| if
      >x=a>>|<row|<cell|f<around*|(|x|)><text| if >x\<in\>A>>>>>>
    </note>
  </corollary>

  <\proof>
    Using <math|>[example: <reference|function constant function>] we have
    that <math|C<rsub|b>:<around*|{|a|}>\<rightarrow\><around*|{|b|}>> where
    <math|C<rsub|b>=<around*|{|<around*|(|x,b|)>\|x\<in\><around*|{|a|}>|}>=<around*|{|<around*|(|a,b|)>|}>>
    is a function. As <math|A<big|cap><around*|{|a|}>> we can use the
    previous corollary [corollary: <reference|function combining functions
    (2)>] so that\ 

    <\equation*>
      h:A<big|cup><around*|{|a|}>\<rightarrow\>B<big|cup><around*|{|b|}><text|
      where >h=<around*|{|<around*|(|a,b|)>|}><big|cup>f<text| is a function>
    </equation*>
  </proof>

  <\theorem>
    <label|function restricted function properties>Let
    <math|f:A\<rightarrow\>B> be a partial function and <math|C\<subseteq\>A>
    a sub-class of <math|A> then we have:

    <\enumerate>
      <item><math|dom<around*|(|f<rsub|\|C>|)>=C<big|cap>dom<around*|(|f|)>>

      <item><math|range<around*|(|f<rsub|\|C>|)>=f<around*|(|C|)>>

      <item>If <math|D\<subseteq\>C> then
      <math|f<rsub|\|C><around*|(|D|)>=f<around*|(|D|)>> and
      <math|<around*|(|f<rsub|\|C>|)><rsub|\|D>=f<rsub|\|D>>

      <item>If <math|E\<subseteq\>B> then
      <math|<around*|(|f<rsub|\|C>|)><rsup|-1><around*|(|E|)>=C<big|cap>f<rsup|-1><around*|(|E|)>>

      <item>If <math|f:A\<rightarrow\>B> is injective then
      <math|f<rsub|\|C>:C\<rightarrow\>B> is injective
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

      Further\ 

      <\equation*>
        <around*|(|f<rsub|\|C>|)><rsub|\|D>=<around*|(|f<big|cap><around*|(|C\<times\>B|)>|)><big|cap><around*|(|D\<times\>B|)>\<equallim\><rsub|D\<times\>B\<subseteq\>C\<times\>B>f<big|cap><around*|(|D\<times\>B|)>=f<rsub|\|D>
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

      <item>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f<rsub|\|C>>
      then as <math|f<rsub|\|C>\<subseteq\>f> we have
      <math|*<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f> which as
      <math|f> is injective proves <math|y=y<rprime|'>>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|function restriction and domain>Let <math|f:A\<rightarrow\>B> be a
    <with|font-series|bold|partial> function then
    <math|f<rsub|\|dom<around*|(|f|)>>=f>
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
    a injective <with|font-series|bold|partial> function and
    <math|C\<subseteq\>A> then <math|<around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|C|)>>=<around*|(|f<rsub|\|C>|)><rsup|-1>>
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
    and <math|g:C\<rightarrow\>D> be <with|font-series|bold|partial>
    functions and <math|E\<subseteq\>A> then

    <\equation*>
      <around*|(|g\<circ\>f|)><rsub|\|E>=g<rsub|\|f<around*|(|E|)>>\<circ\>f<rsub|\|E>
    </equation*>
  </theorem>

  <\proof>
    Let <math|<around*|(|x,z|)>\<in\><around*|(|f\<circ\>g|)><rsub|\|E>> then
    <math|<around*|(|x,z|)>\<in\>f\<circ\>g> and <math|x\<in\>E>. Hence
    <math|\<exists\>y> such that <math|<around*|(|x,y|)>\<in\>f\<wedge\><around*|(|y,z|)>\<in\>g>,
    as <math|x\<in\>E> <math|<around*|(|x,y|)>\<in\>f<rsub|\|E>>. From
    <math|x\<in\>E> and <math|<around*|(|x,y|)>\<in\>f> it follows also that
    <math|y\<in\>f<around*|(|E|)>>, hence as <math|<around*|(|y,z|)>\<in\>g>
    we have that <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|E|)>>>.
    From <math|<around*|(|x,y|)>\<in\>f<rsub|\|E>> and
    <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|E|)>>> it follows that
    <math|<around*|(|x,z|)>\<in\>g<rsub|\|f<around*|(|E|)>>\<circ\>f<rsub|\|E>>
    so that\ 

    <\equation>
      <label|eq 2.17.003><around*|(|g\<circ\>f|)><rsub|\|E>\<subseteq\>g<rsub|\|f<around*|(|E|)>>\<circ\>f<rsub|\|E>
    </equation>

    If <math|<around*|(|x,z|)>\<in\>g<rsub|\|f<around*|(|E|)>>\<circ\>f<rsub|\|E>>
    then there exists a <math|y> such that
    <math|<around*|(|x,y|)>\<in\>f<rsub|\|E>> and
    <math|<around*|(|y,z|)>\<in\>g<rsub|\|f<around*|(|E|)>>>, so
    <math|x\<in\>E>, <math|<around*|(|x,y|)>\<in\>f>,
    <math|y\<in\>f<around*|(|E|)>> and <math|<around*|(|y,z|)>\<in\>g>. Hence
    <math|x\<in\>E> and <math|<around*|(|x,z|)>\<in\>g\<circ\>f> proving that
    <math|<around*|(|x,z|)>\<in\><around*|(|g\<circ\>f|)><rsub|\|E>.> So
    <math|g<rsub|\|f<around*|(|E|)>>\<circ\>f<rsub|\|E>\<subseteq\><around*|(|g\<circ\>f|)><rsub|\|E>>
    which combined with [eq: <reference|eq 2.17.003>] gives

    <\equation*>
      <around*|(|g\<circ\>f|)><rsub|\|E>=g<rsub|\|f<around*|(|E|)>>\<circ\>g<rsub|\|E>
    </equation*>
  </proof>

  <\theorem>
    <label|function restriction of a function>Let <math|f:A\<rightarrow\>B>
    and <math|C\<subseteq\>A> a sub-class of <math|A> then
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
    Let <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> be injections
    then we have\ 

    <\enumerate>
      <item><math|f:A\<rightarrow\>f<around*|(|A|)>> and
      <math|g:C\<rightarrow\>f<around*|(|C|)>> are bijections

      <item><math|dom<around*|(|f\<circ\>g<rsup|-1>|)>=g<around*|(|A<big|cap>C|)>>

      <item><math|f\<circ\>g<rsup|-1>:g<around*|(|A<big|cap>C|)>\<rightarrow\>f<around*|(|A<big|cap>C|)>>
      is a bijection

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

      <item>\ 

      <\description>
        <item*|injectivity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>f\<circ\>g<rsup|-1>>
        then <math|\<exists\>z,z<rprime|'>> such that
        <math|*<around*|(|x,z|)>,<around*|(|x<rprime|'>,z<rprime|'>|)>\<in\>f>
        and <math|<around*|(|z,y|)>,<around*|(|z<rprime|'>,y|)>\<in\>g<rsup|-1>>.
        Hence <math|<around*|(|y,z|)>,<around*|(|y,z<rprime|'>|)>\<in\>g> so
        that <math|z=z<rprime|'>> [as <math|g<rsup|-1>> is a function] hence
        <math|<around*|(|x,z|)>,<around*|(|x<rprime|'>,z|)>\<in\>f> giving
        <math|x=x<rprime|'>>.

        <item*|<math|surjectivity>>If <math|y\<in\>f<around*|(|A<big|cap>C|)>>
        then <math|\<exists\>x\<in\>A<big|cap>C> such that
        <math|*<around*|(|x,y|)>\<in\>f>. As <math|A<big|cap>C\<subseteq\>C>
        we have that <math|x\<in\>C>, so as <math|g:C\<rightarrow\>B> is a
        function there exist a <math|z> such that
        <math|<around*|(|x,z|)>\<in\>g>, hence
        <math|<around*|(|z,x|)>\<in\>g<rsup|-1>>. As
        <math|<around*|(|x,y|)>\<in\>f> it follows that
        <math|<around*|(|z,y|)>\<in\>f\<circ\>g<rsup|-1>>.
      </description>

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
    <label|function simple definition notation>The function definition
    <math|f:A\<rightarrow\>B> defined by <math|f<around*|(|x|)>=F<around*|(|x|)>>
    [where <math|E<around*|(|x|)>> is a parameterized expression that
    calculates a unique value for every <math|x\<in\>A>] is equivalent with

    <\equation*>
      f=<around*|{|z\|z=<around*|(|x,E*x|)>\<wedge\>x\<in\>E|}>=<around*|{|<around*|(|x,E<around*|(|x|)>|)>\|x\<in\>X|}>
    </equation*>
  </notation>

  <\example>
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is defined by
    <math|f<around*|(|x|)>=cos<around*|(|4\<cdot\>x|)>>
  </example>

  <subsection|Indexed sets>

  In many cases we have to deal with sets indexed by a index, which is
  actually a function in another form. We will use this in toplogy and vector
  spaces.

  <\definition>
    <label|function indexed set><dueto|indexed set>Let
    <math|f:I\<rightarrow\>A> be a surjection then <math|A> is called a
    <with|font-series|bold|indexed set> and noted as

    <\equation*>
      A=<around*|{|f<around*|(|i|)>\|i\<in\>I|}><text| or
      >A=<around*|{|f<rsub|i>\|i\<in\>I|}>
    </equation*>

    So\ 

    <\equation*>
      x\<in\>A\<Leftrightarrow\>\<exists\>i\<in\>I<text| such that
      >x=f<around*|(|i|)><text| or >x=f<rsub|i>
    </equation*>

    <math|I> is called the index of the indexed set
    <math|<around*|{|f<rsub|i>\|i\<in\>I|}>>.
  </definition>

  <\definition>
    <label|function indexed set unique><dueto|unique indexed
    set><math|A=<around*|{|f<rsub|i><around*|\||i\<in\>I|\<nobracket\>>|}>>
    is a <with|font-series|bold|unique indexed set >if
    <math|f:I\<rightarrow\>A> is a bijection. So\ 

    <\equation*>
      x\<in\>A\<Leftrightarrow\>\<exists\>i\<in\>I<text| such that
      >x=f<around*|(|i|)><text| or >x=f<rsub|i>
    </equation*>

    and\ 

    <\equation*>
      <text|If >x<rsub|i>=x<rsub|j><text| then >i=j
    </equation*>
  </definition>

  <\example>
    <label|function indexed set example>Every set can be writen as a unique
    indexed set indexed by itself. So if <math|A> is a set then
    <math|A=<around*|{|Id<rsub|X><around*|(|i|)>\|i\<in\>I|}>>.
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

    is actually a function

    <\equation*>
      <with|font-series|bold|f:I\<rightarrow\>B>
    </equation*>

    Further <with|font-series|bold|<math|x<rsub|i>>> is another notation for
    <math|<with|font-series|bold|f<around*|(|i|)>>> so that
    <with|font-series|bold|<math|y=f<rsub|i>>> is equivalent with
    <math|<with|font-series|bold|y=f<around*|(|i|)>>> or
    <with|font-series|bold|<math|<around*|(|i,y|)>\<in\>f>>
  </definition>

  <\note>
    In the above definition <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
    only make sense if you specify what the defining function is. To avoid
    excessive notation, we assume that if we write
    <with|font-series|bold|<math|<around*|{|x|}><rsub|i\<in\>I>\<subseteq\>B>>
    that the defining function is <math|<with|font-series|bold|x:I\<rightarrow\>B>>.
    However this is sometimes not feasible and in that case we state what the
    defining function of <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is.\ 
  </note>

  <\example>
    <label|family empty family>The empty function
    <math|\<varnothing\>:\<varnothing\>\<rightarrow\>V> [see example:
    <reference|function empty function>] defines a family that is noted as
    <math|<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>.
    Further if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    is a family where the index set is empty then
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V=<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
  </example>

  <\proof>
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    is defined by the function <math|x:\<varnothing\>\<rightarrow\>V>, as
    <math|x\<subseteq\>\<varnothing\>\<times\>V=\<varnothing\>> we have that
    <math|x=\<varnothing\>> so that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V=<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>.
  </proof>

  <\proposition>
    <label|family empty family condition>For the family
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<varnothing\>>
    we have <math|I=\<varnothing\>> so that
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<varnothing\>=<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>\<varnothing\>>
  </proposition>

  <\proof>
    Let <math|f:I\<rightarrow\>\<varnothing\>> be the function that defines
    the family then as <math|f> is a function we have that
    <math|f<around*|(|I|)>=\<varnothing\>>. So if <math|x\<in\>I> then
    <math|\<exists\>y\<in\>\<varnothing\>> such that
    <math|<around*|(|x,y|)>\<in\>f\<subseteq\>I\<times\>\<varnothing\>=\<varnothing\>>
    a contradiction, hence we must have <math|I=\<varnothing\>>.
  </proof>

  <\example>
    <label|family {x}xeA>Let <math|A,B> be classes then family
    <math|<around*|{|<around*|(|Id<rsub|A>|)><rsub|a>|}><rsub|a\<in\>A>\<subseteq\>B>
    defined by the function <math|Id<rsub|A>:A\<rightarrow\>B> is noted as
    <math|<around*|{|x|}><rsub|x\<in\>A>>.
  </example>

  We can now define the concept of a sub family

  <\definition>
    <label|family definition (2)>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    be a family of objects in <math|B> defined by the function
    <math|f:I\<rightarrow\>B> and <math|J\<subseteq\>I> then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>B> is the family
    defined by the function <math|f<rsub|\|J>:J\<rightarrow\>B> [see:
    theorem: <reference|function restriction of a function> for the proof
    that <math|f<rsub|J>:I\<rightarrow\>B> is a function]
  </definition>

  <\definition>
    <label|family definition (3)>Let <math|I,J,A,B> be classes such that
    <math|I<big|cap>J=\<varnothing\>> and\ 

    <\equation*>
      <around*|{|x|}><rsub|i\<in\>I>\<subseteq\>A<text| defined by the
      function >f:I\<rightarrow\>A
    </equation*>

    <\equation*>
      <around*|{|y<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>B<text| defined by
      the function >g:J\<rightarrow\>B
    </equation*>

    then <math|<around*|{|z<rsub|i>|}><rsub|i\<in\>I<big|cup>J>\<subseteq\>A<big|cup>B>
    defined by <math|z<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i>if
    i\<in\>I>>|<row|<cell|B<rsub|i><text| if >i\<in\>J>>>>>> is the family
    defined by the function

    <\equation*>
      f<big|cup>g:I<big|cup>J\<rightarrow\>A<big|cup>B
    </equation*>

    [see theorem: <reference|function combining functions (2)> for the proof
    that <math|f<big|cup>g:I<big|cup>J\<rightarrow\>A<big|cup>B> is indeed a
    function]
  </definition>

  <\definition>
    <label|family index set is a product>If <math|I,J> are classes then
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>\<subseteq\>A>
    is defined by a function <math|x:I\<times\>J\<rightarrow\>A>, based on
    this we can define the following families:

    <\enumerate>
      <item><math|\<forall\>i\<in\>I> <math|<around*|{|x<rsub|i,j>|}><rsub|j\<in\>J>>
      is defined by the function <math|x<rsub|i,\<ast\>>:J\<rightarrow\>A>
      where <math|x<rsub|i,\<ast\>><around*|(|j|)>=x<around*|(|i,j|)>=x<rsub|i,j>>

      <item><math|\<forall\>j\<in\>J> <math|<around*|{|x<rsub|i,j>|}><rsub|i\<in\>I>>
      is defined by the function <math|x<rsub|\<ast\>,j>:I\<rightarrow\>A>
      where <math|x<rsub|\<ast\>,j><around*|(|i|)>=x<around*|(|i,j|)>=x<rsub|i,j>>
    </enumerate>
  </definition>

  Composition of functions can also also be represented via the above family
  notation,

  <\definition>
    <label|family and function composition>If you have a function
    <math|<with|font-series|bold|f:I\<rightarrow\>J>> and a family
    <math|<with|font-series|bold|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>><with|font-series|bold|\<subseteq\>A>>
    [defined by the function <math|<with|font-series|bold|g:J\<rightarrow\>A>>]
    then\ 

    <\equation*>
      <with|font-series|bold|<around*|{|x<rsub|f<around*|(|i|)>>|}><rsub|i\<in\>I>>
    </equation*>

    is the family represented by the function

    <\equation*>
      <with|font-series|bold|g\<circ\>f:I\<rightarrow\>A>
    </equation*>
  </definition>

  So a family is just another notation for a function. We introduce also a
  new notation for the range of this function.

  <\definition>
    <label|family range><index|<math|<around*|{|A<rsub|i>\|i\<in\>I|}>>>If
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a family of objects in B
    [standing for the function <math|f:I\<rightarrow\>B>] then we define
    <math|<around*|{|x<rsub|i>\|i\<in\>I|}>> by\ 

    <\equation*>
      <around*|{|x<rsub|i>\|i\<in\>I|}>=range<around*|(|f|)>=f<around*|(|I|)>
    </equation*>
  </definition>

  The motivation for this definition is the following theorem

  <\theorem>
    <label|family range (1)>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family of objects in <math|B> with associated function <math|f> then\ 

    <\equation*>
      x\<in\><around*|{|x<rsub|i>\|i\<in\>I|}>\<Leftrightarrow\>\<exists\>i\<in\>I<text|
      such that >x=x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> is
    equivalent with <math|f:I\<rightarrow\>B> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|z\<in\><around*|{|x<rsub|i>\|i\<in\>I|}>>|<cell|\<Leftrightarrowlim\><rsub|define>>|<cell|z\<in\>range<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i
      with <around*|(|i,z|)>\<in\>f>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|f\<subseteq\>I\<times\>B>>|<cell|\<exists\>i<text|
      with <math|i\<in\>I\<wedge\><around*|(|i,z|)>\<in\>f>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      with ><around*|(|i,z|)>\<in\>f>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      with >z=f<around*|(|i|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
      with z=x_i>>>>>
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
    So by [theorem: <reference|family union (2)>] and the definition of
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
    <label|family union condition set>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    is a family of objects in <math|B> where <math|I> and <math|B> are sets
    then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is a set.
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
    <label|family trivial>Let <math|I=<around*|{|0|}>>, <math|B> a class and
    take <math|A:I\<rightarrow\><around*|{|B|}>> defined by
    <math|A=<around*|{|<around*|(|0,B|)>|}>>, defining the family
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|{|B|}>>
    where <math|A<rsub|0>=B>. For this family we have
    <math|<big|cap><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=B> and
    <math|<big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=B>
  </example>

  <\proof>
    Using [example: <reference|function trivial bijection>] it follows that
    <math|A:I\<rightarrow\><around*|{|B|}>> is bijection, hence a function,
    so that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|{|B|}>>
    is a well defined family. Further as <math|A> is a bijection we have that

    <\equation*>
      range<around*|(|A|)>=<around*|{|B|}>
    </equation*>

    Finally

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=<big|cup>range<around*|(|A|)>=<big|cup><around*|{|B|}>\<equallim\><rsub|<text|[example:
      <reference|class trivial union intersection>]>>A
    </equation*>

    and

    <\equation*>
      <big|cap><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=<big|cap>range<around*|(|A|)>=<big|cap><around*|{|B|}>\<equallim\><rsub|<text|[example:
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

  To save space, from now on we use [theorem: <reference|family union (2)>]
  and [theorem: <reference|family intersection (2)>] about union and
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
    </enumerate>
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
      <item>If <math|j\<in\>I> then <math|<around*|(|<big|cup><rsub|i\<in\>I\\<around*|{|j|}>>A<rsub|i>|)><big|cup>A<rsub|j>=<big|cup><rsub|i\<in\>I>A<rsub|i>>

      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\><around*|{|j\<in\>I\|A<rsub|j>\<neq\>\<varnothing\>|}>>A<rsub|i>>

      <item>If <math|\<exists\>i\<in\>I> such that
      <math|A<rsub|i>=\<varnothing\>> then
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item> If <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I\\<around*|{|j|}>>A<rsub|i>|)><big|cup>A<rsub|j>>
      then either <math|x\<in\>A<rsub|j>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      [see: <reference|family properties (1)>], so that
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> or
      <math|x\<in\><big|cup><rsub|i\<in\>I\\<around*|{|j|}>>A<rsub|i>\<Rightarrow\>\<exists\>k\<in\>I\\<around*|{|j|}>>
      with <math|x\<in\>A<rsub|k>> which as <math|k\<in\>I> proves
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>. If
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, we have
      then for <math|i> either <math|i\<in\>I\\<around*|{|j|}>> so that
      <math|x\<in\><big|cup><rsub|i\<in\>I\\<around*|{|j|}>>A<rsub|i>> or
      <math|i=j> giving <math|x\<in\>A<rsub|j>>, proving that
      <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I\\<around*|{|j|}>>A<rsub|i>|)><big|cup>A<rsub|j>.>

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

    \;
  </proof>

  <\theorem>
    <label|family union of family of families>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>C> a family and
    <math|\<forall\>i\<in\>I> <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>J>\<subseteq\>C>
    a family such that <math|A<rsub|i>=<big|cup><rsub|j\<in\>J>B<rsub|i,j>>
    then

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>B<rsub|i,j>
    </equation*>
  </theorem>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
    <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>=<big|cup><rsub|j\<in\>J>B<rsub|i>>,
    hence <math|\<exists\>j\<in\>J> such that <math|x\<in\>B<rsub|i,j>>. So
    as <math|<around*|(|i,j|)>\<in\>I\<times\>J> we have that
    <math|x\<in\><big|cup><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>B<rsub|i,j>>.
    Further if <math|x\<in\><big|cup><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>B<rsub|i,j>>
    then <math|\<exists\><around*|(|i,j|)>\<in\>I\<times\>J> such that
    <math|x\<in\>B<rsub|i,j>>, which, as <math|A<rsub|i>=<big|cup><rsub|j\<in\>J>B<rsub|i,j>>,
    proves that <math|x\<in\>A<rsub|i>>, hence
    <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>. So we conclude that\ 

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>B<rsub|i,j>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|family image and preimage>If <math|f:A\<rightarrow\>B> is a
    function, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>>\<subseteq\>\<cal-P\><around*|(|A|)>>
    and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|B|)>>
    are families of sub-classes of <math|A> and <math|B> then\ 

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

  <\theorem>
    <label|product of a empty set is empty>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B> be such that
    <math|\<exists\>i<rsub|0>\<in\>I> with
    <math|A<rsub|i<rsub|0>>=\<varnothing\>> then
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>
  </theorem>

  <\proof>
    Let <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then we have that
    <math|x:I\<rightarrow\><big|cup><rsub|i>A<rsub|i>> is a function such
    that <math|x<around*|(|i<rsub|0>|)>\<in\>A<rsub|i<rsub|0>>>,
    contradicting <math|A<rsub|i<rsub|0>>=\<varnothing\>>. Hence we must have
    that <math|<big|prod><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>.
  </proof>

  The following shows that the product of a family of only one class is
  \<#2018\>almost\<#2018\> that class itself.

  <\example>
    <label|product of family with one element>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|{|B|}>>
    be the family in [example: <reference|family trivial>] defined by
    <math|A:<around*|{|0|}>\<rightarrow\><around*|{|B|}>> where
    <math|A=<around*|{|<around*|(|0,B|)>|}>> then there exists a bijection
    between <math|B> and <math|<big|sqcap><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>
    or as <math|A<rsub|0>=B> there exists a bijection between
    <math|A<rsub|0>> and <math|<big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>.
  </example>

  <\proof>
    First using [example: <reference|family trivial>] we have\ 

    <\equation>
      <label|eq 2.34.005>B=<big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>
    </equation>

    hence\ 

    <\equation>
      <label|eq 2.35.005><around*|(|<big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>|)><rsup|<around*|{|0|}>>=B<rsup|<around*|{|0|}>>
    </equation>

    Let <math|f\<in\>B<rsup|<around*|{|0|}>>\<equallim\><rsub|<text|[eq:
    <reference|eq 2.35.005>]>><around*|(|<big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>|)>>
    then if <math|i\<in\><around*|{|0|}>> we must have <math|i=1> hence
    <math|f<around*|(|i|)>=f<around*|(|0|)>\<in\>B=A<around*|(|0|)>=A<rsub|0>>
    proving that <math|\<forall\>i\<in\><around*|{|0|}>> we have
    <math|f<around*|(|i|)>\<in\>A<rsub|i>>. Hence
    <math|f\<in\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>> from which
    it follows that <math|B<rsup|<around*|{|0|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>.
    As clearly <math|<big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>\<subseteq\><around*|(|<big|cup><rsub|i\<in\><around*|{|0|}>>A<rsub|i>|)><rsup|<around*|{|0|}>>\<equallim\><rsub|<text|[eq:
    <reference|eq 2.35.005>]>>B<rsup|<around*|{|0|}>>> we have that\ 

    <\equation*>
      <big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=B<rsup|<around*|{|0|}>>
    </equation*>

    Now by [theorem: <reference|function and power>] there exists a bijection
    between <math|B> and <math|B<rsup|<around*|{|0|}>>> which by the above
    proves the example.
  </proof>

  The next theorem shows that the product of a family of two classes is
  \<#2018\>almost\<#2018\> the Cartesian product of these classes.

  <\theorem>
    <label|product of family with two classes>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,1|}>>\<subseteq\><around*|{|C,D|}>>
    be the family in [example: <reference|family union{A,B}>] defined by
    <math|A:<around*|{|0,1|}>\<rightarrow\><around*|{|C,D|}> where>
    <math|A=<around*|{|<around*|(|0,C|)>,<around*|(|1,D|)>|}>> then there
    exists a bijection between <math|A\<times\>B> and
    <math|<big|prod><rsub|i\<in\><around*|{|0,1|}>>A<rsub|i>>
  </theorem>

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

  <\theorem>
    <label|family product and index transformation>Let <math|I,J,B> be
    classes, <math|f:I\<rightarrow\>J> a bijection and
    <math|<around*|{|A<rsub|j>|}><rsub|j\<in\>J>> then\ 

    <\equation*>
      \<beta\>:<big|prod><rsub|j\<in\>J>A<rsub|j>\<rightarrow\><big|prod><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>><text|
      where >\<beta\><around*|(|x|)>=x\<circ\>f
    </equation*>

    is a bijection.
  </theorem>

  <\proof>
    First as <math|f:I\<rightarrow\>J> is a bijection, hence surjective, we
    have by [theorem: <reference|family union of family set and surjections>]
    that\ 

    <\equation>
      <label|eq 2.59.022><big|cup><rsub|j\<in\>J>A<rsub|j>=<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>
    </equation>

    Let <math|x\<in\><big|prod><rsub|j\<in\>J>A<rsub|j>> then
    <math|x\<in\><around*|(|<big|cup><rsub|j\<in\>J>A<rsub|j>|)><rsup|J>>,
    which is equivalent with <math|x:J\<rightarrow\><big|cup><rsub|j\<in\>J>A<rsub|j>>
    is a function, and <math|\<forall\>j\<in\>J> we have
    <math|x<around*|(|j|)>\<in\>A<rsub|j>>. So
    <math|x\<circ\>f:I\<rightarrow\><big|cup><rsub|j\<in\>J>A<rsub|j>\<equallim\><rsub|<text|[eq:
    <reference|eq 2.59.022>]>><big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>>
    is a function, proving that <math|x\<circ\>f\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>|)><rsup|I>>,
    further if <math|i\<in\>I> then <math|<around*|(|x\<circ\>f|)><around*|(|i|)>=x<around*|(|f<around*|(|i|)>|)>\<in\>A<rsub|f<around*|(|i|)>>>,
    hence\ 

    <\equation>
      <label|eq 2.60.022>x\<circ\>f\<in\><big|prod><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>
    </equation>

    So\ 

    <\equation*>
      \<beta\>:<big|prod><rsub|j\<in\>J>A<rsub|j>\<rightarrow\><big|prod><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>><text|>
    </equation*>

    is indeed a function. To prove that it is a bijection note:

    <\description>
      <item*|injectivity>Assume that <math|\<beta\><around*|(|x|)>=\<beta\><around*|(|y|)>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<circ\>f=y\<circ\>f>|<cell|\<Rightarrowlim\><rsub|f
        <text| is bijective>>>|<cell|<around*|(|x\<circ\>f|)>\<circ\>f<rsup|-1>=<around*|(|y\<circ\>f|)>\<circ\>f<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<circ\><around*|(|f\<circ\>f<rsup|-1>|)>=y\<circ\><around*|(|f\<circ\>f<rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<circ\>Id<rsub|J>=y\<circ\>Id<rsub|J>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=y>>>>
      </eqnarray*>

      <item*|surjectivity>If <math|y\<in\><big|prod><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>>
      then <math|y:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|f<around*|(|i|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 2.59.022>]>><big|cup><rsub|j\<in\>J>A<rsub|j>> is a
      function and <math|\<forall\>i\<in\>I> we have
      <math|y<around*|(|i|)>\<in\>A<rsub|f<around*|(|i|)>>>. As
      <math|f<rsup|-1>:J\<rightarrow\>I> is a bijection we have that
      <math|y\<circ\>f<rsup|-1>:J\<rightarrow\><big|cup><rsub|j\<in\>J>A<rsub|j>>
      is a function, so that <math|y\<circ\>f<rsup|-1>\<in\><around*|(|<big|cup><rsub|j\<in\>J>A<rsub|j>|)><rsup|J>>,
      and <math|<around*|(|y\<circ\>f<rsup|-1>|)>*<around*|(|j|)>=y<around*|(|f<rsup|-1><around*|(|j|)>|)>\<in\>A<rsub|f<around*|(|f<rsup|-1><around*|(|j|)>|)>>=A<rsub|j>>.
      So that\ 

      <\equation*>
        y\<circ\>f<rsup|-1>\<in\><big|prod><rsub|j\<in\>J>A<rsub|j>
      </equation*>

      Finally <math|\<beta\><around*|(|y\<circ\>f<rsup|-1>|)>=<around*|(|y\<circ\>f<rsup|-1>|)>\<circ\>f=y\<circ\><around*|(|f<rsup|-1>\<circ\>f|)>=y\<circ\>Id<rsub|I>=y>
      proving surjectivity.
    </description>
  </proof>

  <\definition>
    <label|product sub-product>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>
    be a family and <math|J\<subseteq\>I> then
    <math|<big|prod><rsub|i\<in\>J>A<rsub|i>> is the product based on the
    sub-family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>B>
    [see definition: <reference|family definition (2)>] or equivalently\ 

    <\equation*>
      <big|prod><rsub|i\<in\>J>A<rsub|i>=<around*|{|f:f\<in\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><rsup|J><text|
      where >\<forall\>i\<in\>J<text| we have
      >f<around*|(|i|)>\<in\>A<rsub|i>|}>
    </equation*>
  </definition>

  The following theorem will be used later in induction arguments.

  <\theorem>
    <label|product extension>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>B>,
    <math|i\<in\>I> and <math|b\<in\>A<rsub|i>> then\ 

    <\equation*>
      if x\<in\><big|prod><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j><text| we
      have <math|y\<in\><big|prod><rsub|i\<in\>I>A<rsub|j>>>\ 
    </equation*>

    where <math|y> is defined by

    <\equation*>
      y<rsub|j>=y<around*|(|j|)>=<choice|<tformat|<table|<row|<cell|b<text|
      if >j=i>>|<row|<cell|x<rsub|j><text| if
      <math|j\<in\>I\\<around*|{|i|}>>>>>>>>\<equallim\><rsub|def><choice|<tformat|<table|<row|<cell|b<text|
      if >j=i>>|<row|<cell|x<around*|(|j|)><text| if
      <math|j\<in\>I\\<around*|{|i|}>>>>>>>>
    </equation*>

    \;
  </theorem>

  <\proof>
    If <math|x\<in\><big|prod><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j>> then
    <math|x\<in\><around*|(|<big|cup><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|i>|)><rsup|I\\<around*|{|i|}>>>
    so that <math|x:I\\<around*|{|i|}>\<rightarrow\><big|cup><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j>>
    is a function. As <math|i\<nin\><around*|(|I\\<around*|{|i|}>|)>>,
    <math|I=<around*|(|I\\<around*|{|i|}>|)><big|cup><around*|{|i|}>> and
    <math|<big|cup><rsub|j\<in\>I>A<rsub|j>\<equallim\><rsub|<text|[theorem:
    <reference|family union intersection and empty
    set>]>>A<rsub|i><big|cup><around*|(|<big|cup><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j>|)>>
    we have by [theorem: <reference|function extending funtion domain>] that\ 

    <\equation*>
      y:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| where
      >y<around*|(|j|)>=<choice|<tformat|<table|<row|<cell|b<text| if
      >j=i>>|<row|<cell|x<around*|(|j|)><text| if
      >j\<in\>I\\<around*|{|i|}>>>>>>
    </equation*>

    is a function, so

    <\equation>
      <label|eq 2.59.018>y\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsup|I>
    </equation>

    Further if <math|j\<in\>I> then either <math|j=i> so that
    <math|y<rsub|j>=y<around*|(|i|)>=b\<in\>A<rsub|i>=A<rsub|j>> or
    <math|j\<in\>I\\<around*|{|i|}>> then
    <math|y<rsub|j>=y<around*|(|j|)>=x<around*|(|j|)>=x<rsub|j>\<in\>A<rsub|j>>.
    Hence\ 

    <\equation>
      <label|eq 2.60.018>\<forall\>j\<in\>I<text| we have
      >y<rsub|j>\<in\>A<rsub|j>
    </equation>

    From [eq: <reference|eq 2.59.018>] and [eq: <reference|eq 2.60.018>] it
    follows by\ 

    <\equation*>
      y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>
    </equation*>

    \;
  </proof>

  We introduce now the projection operator

  <\definition>
    <label|product projection function><index|<math|\<pi\><rsub|i>>>Let
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
  for some of the theorems we need the Axiom of Choice. For example to prove
  that the projection function is a surjection we need the Axiom of Choice.

  <chapter|Relations>

  <section|Relation>

  The idea of a relation is that we can specify which elements of a class are
  related to each other.\nYou do this by specifying a class of pairs.

  <\definition>
    <label|relation><index|relation>Let <math|A> be a class then a relation
    in <math|A> is a sub-class of <math|A\<times\>A>
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
        then <math|y R x> proving that <math|y\<in\>R<around*|[|x|]>>
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
    <label|equivalence relation defines a partition>Let <math|A> be a set and
    <math|R> a equivalence relation in <math|A> then
    <math|<around*|{|R<around*|[|x|]>|}><rsub|x\<in\>A>> is a partition of
    <math|A>
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
  of a surjection, a bijection and injection. First we examine the relation
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
    <math|B\<subseteq\>A> a sub-class and <math|R> a equivalence relation in
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
      f<rsub|R<rsub|f>>:A\<rightarrow\>A/R<rsub|f><text| is surjective
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
    that <math|a R<rsub|f> a<rprime|'>>, so by the definition of
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
    definition of <math|R<rsub|f>> [theorem: <reference|equivalence relation
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

    From <math|<around*|(|y,z|)>\<in\>s<rsub|f>> it follows that
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
    <label|order a\<less\>=b\<less\>=c>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a pre-ordered or
    partial class and <math|x,y,z\<in\>A> then we define:

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<leqslant\>y\<leqslant\>z>|<cell|<text| is
      the same as >>|<cell|x\<leqslant\>y\<wedge\>y\<leqslant\>z>>|<row|<cell|x\<leqslant\>y\<less\>z>|<cell|<text|
      is the same as >>|<cell|x\<leqslant\>y\<wedge\>y\<less\>z>>|<row|<cell|x\<less\>y\<leqslant\>z>|<cell|<text|
      is the same as >>|<cell|x\<less\>y\<wedge\>y\<leqslant\>z>>|<row|<cell|x\<less\>y\<less\>z>|<cell|<text|
      is the same as >>|<cell|x\<less\>y\<wedge\>y\<less\>z>>>>
    </eqnarray*>
  </definition>

  <\definition>
    <index|<math|\<less\>>>If <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>>
    is a pre-ordered class [or partial ordered class] then <math|x\<less\>y>
    is equivalent with <math|x\<leqslant\>y\<wedge\>x\<neq\>y>
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

    \ or in other words\ 

    <\enumerate>
      <item><math|x\<leqslant\>y\<less\>z\<Rightarrow\>x\<less\>z>

      <item><math|x\<less\>y\<leqslant\>z\<Rightarrow\>x\<less\>z>

      <item><math|x\<less\>y\<less\>z\<Rightarrow\>x\<less\>z>

      <item><math|<around*|(|x\<less\>y\<vee\>x=y|)>\<Leftrightarrow\>x\<leqslant\>y>
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
    <label|order inclusion is a order>Let <math|A> be a class of classes and
    <math|\<leqslant\>> defined by <math|\<leqslant\>=<around*|{|<around*|(|x,y|)>\<in\>\<cal-A\>\<times\>\<cal-A\>\|x\<subseteq\>y|}>>
    then <math|<around*|\<langle\>|\<cal-A\>,\<leqslant\>|\<rangle\>>> is a
    partial ordered class
  </example>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|A\<in\>\<cal-C\>> then by [theorem:
      <reference|class properties (1)>] <math|A\<subseteq\>A> so that
      <math|A\<leqslant\>A>

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
  expressed in the following theorem. The basic idea is that
  <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x\<Rightarrow\>x=y> is missing
  from a pre-order. By defining a equivalence relation <math|\<sim\>> such
  that <math|x\<sim\>y> if <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> we
  turn this in equality of equivalence classes. This is a typical example
  about the use of equivalence relations, they allow you to define a new type
  of equality, so that objects that are not equal have associated equivalence
  classes that are equal.

  <\theorem>
    <label|order eq order preorder to order>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a pre-ordered
    set then we have\ 

    <\enumerate>
      <item><math|\<sim\>\<subseteq\>A\<times\>A> defined by
      <math|\<sim\>=<around*|{|<around*|(|x,y|)>\<in\>A\|x\<leqslant\>y\<wedge\>y\<leqslant\>x|}>>
      is a equivalence relation

      <item>Define <math|\<preccurlyeq\>\<subseteq\><around*|(|A/\<sim\>|)>\<times\><around*|(|A/\<sim\>|)>>
      by\ 

      <\equation*>
        \<preccurlyeq\>=<around*|{|<around*|(|x,y|)>\<in\><around*|(|A/\<sim\>|)>\<times\><around*|(|A/\<sim\>|)>\|\<exists\>x<rprime|'>\<in\>\<sim\><around*|[|x|]><text|
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
        then we have the existence of <math|x<rprime|'>\<in\>\<sim\><around*|[|x|]>>,
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

  Given a partial ordered class then we can induce the order on a sub-class
  making the sub-class also a partial ordered class.

  <\theorem>
    <label|order partial order on sub class>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered sets and <math|B\<subseteq\>A> then <math|\<leqslant\><rsub|\|B>>
    defined by\ 

    <\equation*>
      \<leqslant\><rsub|\|B>=\<leqslant\><big|cap>B\<times\>B=B
    </equation*>

    is a order relation in <math|B> making
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> a partial
    ordered set.<space|1em>
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

  <\convention>
    To avoid excessive usage notation we write
    <math|<around*|\<langle\>|B,\<leqslant\>|\<rangle\>>> instead of
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>>
  </convention>

  The following shows a technique of defining a partial order on the
  Cartesian product of partial ordered set.

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
      then we have to consider the following cases:

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
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class and <math|C\<subseteq\>A> then <math|C> is called a
    <with|font-series|bold|chain> if <math|\<forall\>x,y\<in\>C> we have that
    <math|x\<leqslant\>y> or <math|y\<leqslant\>x>.
  </definition>

  <\example>
    <label|order empty set is a chain>Let
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> be a partial
    ordered class then <math|\<varnothing\>> is a chain
  </example>

  <\proof>
    The condition <math|\<forall\>x,y\<in\>\<varnothing\>> we have that
    <math|x,y> are comparable is satisfied vacuously.
  </proof>

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
    ordered class, <math|a\<in\>A> then a <with|font-series|bold|initial
    segment of A determined by a> noted as <math|S<rsub|A,a>> is defined by\ 

    <\equation*>
      S<rsub|A,a>=<around*|{|x\<in\>A\|x\<less\>a|}>
    </equation*>
  </definition>

  We have the following trivial result for initial segments.

  <\proposition>
    <label|order initial segement inclusion>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|a,b\<in\>A> such that <math|a\<leqslant\>b> then
    <math|S<rsub|A,a>\<subseteq\>S<rsub|A,b>>
  </proposition>

  <\proof>
    If <math|x\<in\>S<rsub|A,a>> then <math|x\<less\>a\<Rightarrowlim\><rsub|a\<leqslant\>b>x\<less\>b>
    proving that <math|x\<in\>S<rsub|A,b>>
  </proof>

  <\theorem>
    <label|order intial sergment property>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class and <math|P> is a initial segment of <math|A> and <math|Q>
    is a initial segment of <math|P> [using the induced order
    <math|\<leqslant\><rsub|\|P>>] then <math|A> is a initial segment of
    <math|A>
  </theorem>

  <\proof>
    Using the hypothesis there exists <math|a\<in\>A> such that
    <math|P=<around*|{|x\<in\>A\|x\<less\>a|}>> and a <math|b\<in\>P> such
    that <math|Q=<around*|{|x\<in\>P\|x\<less\>b|}>>. Consider then the
    initial segment <math|S<rsub|A,b>=<around*|{|x\<in\>A\|x\<less\>b|}>> of
    <math|A> determined by <math|a> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>S<rsub|A,b>>|<cell|\<Rightarrow\>>|<cell|x\<in\>A\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|b\<less\>a\<Rightarrow\>x\<less\>b\<Rightarrow\>x\<less\>a>>|<cell|x\<in\>A\<wedge\>x\<less\>a\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\><rsub|\|P>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>Q>>|<row|<cell|x\<in\>Q>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\><rsub|\|P>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>P\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|P\<subseteq\>A>>|<cell|x\<in\>A\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>S<rsub|A,b>>>>>
    </eqnarray*>

    Hence <math|Q=S<rsub|A,b>> a initial segment of <math|A>
  </proof>

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
      <item><math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\>B>
      is <with|font-series|bold|increasing> if <math|\<forall\>x,y\<in\>A>
      with <math|x\<leqslant\>y> we have <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>.
      Another name that is used is <with|font-series|bold|a order
      homeomorphism> [a homeomorphism is a function that preserver a certain
      operation, in this case the order relation]

      <item><math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is <with|font-series|bold|strictly increasing> if
      <math|\<forall\>x,y\<in\>A> with <math|x\<less\>y> we have
      <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>>

      <item><math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is <with|font-series|bold|decreasing> if <math|\<forall\>x,y\<in\>A>
      with <math|x\<leqslant\>y> we have <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>

      <item><math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is <with|font-series|bold|strictly decreasing> if
      <math|\<forall\>x,y\<in\>A> with <math|x\<less\>y> we have
      <math|f<around*|(|y|)>\<less\>f<around*|(|x|)>>

      <item><math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is a <with|font-series|bold|order isomorphism> if
      <math|\<forall\>x,y\<in\>A> with <math|x\<leqslant\>y\<Leftrightarrow\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>
    </enumerate>
  </definition>

  <\definition>
    <label|order A isomorphism B><index|<math|A\<cong\>B>>Two partial ordered
    classes <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> and
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    <with|font-series|bold|order isomorphic> noted as <math|A\<cong\>B> if
    there exists order isomorphism between <math|A> and <math|B>.
  </definition>

  <\theorem>
    <label|order homeomorphism extending>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> be two
    partial ordered classes, <math|D\<subseteq\>B> and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,<around*|(|\<leqslant\><rsub|B>|)><rsub|\|D>|\<rangle\>><text|
      be a order homeomorphism [see theorem: <reference|order partial order
      on sub class> for <math|<around*|\<langle\>|D,<around*|(|\<leqslant\><rsub|B>|)><rsub|\|D>|\<rangle\>>>>
    </equation*>

    then\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>><text|
      is a order homeomorphism>
    </equation*>
  </theorem>

  <\proof>
    The proof is trivial for if <math|x,y\<in\>A> with
    <math|x\<leqslant\><rsub|A>y> then <math|f<around*|(|x|)><around*|(|\<leqslant\><rsub|B>|)><rsub|\|D>f<around*|(|y|)>\<Rightarrowlim\><rsub|<text|<reference|order
    partial order on sub class>>>f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>>

    \;
  </proof>

  <\theorem>
    <label|order composition of functions>Let
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>,<math|<around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>>>
    be partial ordered classes, <math|D\<subseteq\>B>

    <\enumerate>
      <item>If <math|D\<subseteq\>B> is equiped with the induced order from
      <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> [see
      theorem: <reference|order partial order on sub class>] and\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<leqslant\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        are order homeomorphisms>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        is a order homeomorphism>
      </equation*>

      <item>If <math|D\<subseteq\>B> is equiped with the induced order from
      <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> [see
      theorem: <reference|order partial order on sub class>] and

      <\equation*>
        f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<leqslant\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        are strictly increasing>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        is stritly increasing>
      </equation*>

      <item>If <math|D\<subseteq\>B> is equiped with the induced order from
      <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> [see
      theorem: <reference|order partial order on sub class>] and

      <\equation*>
        f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<leqslant\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        are order isomorphism>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|f<around*|(|A|)>|)>,\<leqslant\><rsub|C>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>

      or as <math|D\<equallim\><rsub|f:a\<rightarrow\>D <text| is
      bijective>>f<around*|(|A|)>>

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|D|)>,\<leqslant\><rsub|C>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>
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

      <item>Using [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity>] we have that
      <math|g\<circ\>f:A\<rightarrow\>g<around*|(|D|)>=g<around*|(|f<around*|(|A|)>|)>>
      is a bijection. Let <math|x,y\<in\>A>. If <math|x\<leqslant\><rsub|A>y>
      then <math|f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|y|)>> hence
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
    partially ordered classes and

    <\equation*>
      f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>><text|
      a order isomorphism>
    </equation*>

    then <math|\<forall\>x,y\<in\>A> we have

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
      f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>><text|
      is a order isomorphism >\<Leftrightarrow\><text|
      >f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>><text|
      and >f<rsup|-1>:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>><text|
      are increasing functions>
    </equation*>
  </theorem>

  <\proof>
    As <math|f:A\<rightarrow\>B> is a bijection we have by [theorems:
    <reference|function bijection has a inverse>, <reference|function
    bijection and inverse>] that <math|f<rsup|=1>:B\<rightarrow\>A> is a
    bijection.

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is a isomorphism we have that <math|\<forall\>x,y\<in\>A> with
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
    <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>,<around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>> are
    partially ordered classes then\ 

    <\enumerate>
      <item><math|1<rsub|A>:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>
      is a order isomorphism

      <item>If <math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
      is a order isomorphism then <math|f<rsup|-1>:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>
      is a order isomorphism

      <item>If <math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\>B>
      and <math|g:<around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>>>
      are order isomorphism's then

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<leqslant\><rsub|C>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>
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
    <math|f:<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\><rsub|B>|\<rangle\>>>
    is a isomorphism
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

  <subsection|Min, max, supremum and infinum>

  \;

  <\definition>
    <label|order maximal minimal element><index|maximal
    element><index|minimal element>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    be a pre-ordered class and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item><math|m> is a <with|font-series|bold|maximal element> of <math|A>
      iff <math|m\<in\>A> and if <math|\<forall\>x\<in\>A> with
      <math|m\<leqslant\>x> we have <math|x=m>

      <item><math|m> is a <with|font-series|bold|minimal element> of <math|A>
      iff <math|m\<in\>A> and if <math|\<forall\>x\<in\>A> with
      <math|x\<leqslant\>m> we have <math|x=m>
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
    There is a subtle difference between the definition of a maximal
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
      <item>If <math|m,m<rprime|'>> are greatest elements of <math|A> then as
      <math|m,m<rprime|'>\<in\>A> we have
      <math|m\<leqslant\>m<rprime|'>\<wedge\>m<rprime|'>\<leqslant\>m> so
      that <math|m=m<rprime|'>>.

      <item>If <math|m,m<rprime|'>> are least elements of <math|A> then as
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
      <item><math|u\<in\>X> is a <with|font-series|bold|upper bound> of
      <math|A> if <math|\<forall\>a\<in\>A> <math|a\<leqslant\>u>.

      <item><math|A> is <with|font-series|bold|bounded above> if it has a
      upper bound.

      <item><math|l\<in\>X> is a <with|font-series|bold|lower bound> of
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

  <\example>
    <label|order example inclusion order and sup, inf>Let <math|\<cal-A\>> be
    a class of classes and <math|<around*|\<langle\>|\<cal-A\>,\<leqslant\>|\<rangle\>>>
    the partial class where

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|x,y|)>\<in\>\<cal-A\>\<times\>\<cal-A\>\|x\<subseteq\>y|}>
    </equation*>

    [see example: <reference|order inclusion is a order>] and
    <math|\<cal-B\>\<subseteq\>\<cal-A\>> we have that\ 

    <\enumerate>
      <item>If <math|<big|cap>\<cal-B\>\<in\>\<cal-A\>> then
      <math|inf<around*|(|\<cal-B\>|)>> exist and
      <math|inf<around*|(|\<cal-B\>|)>=<big|cap>\<cal-B\>>

      <item>If <math|<big|cup>\<cal-B\>\<in\>\<cal-A\><text| then >>
      <math|sup<around*|(|\<cal-B\>|)>> exist and
      <math|sup<around*|(|\<cal-B\>|)>=<big|cup>\<cal-B\>>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|B\<in\>\<cal-B\>> then by [theorem: <reference|class
      general intersection>] <math|<big|cap>\<cal-B\>\<subseteq\>B\<Rightarrow\><big|cap>\<cal-B\>\<leqslant\>B>
      so that <math|<big|cap>\<cal-B\>\<in\>\<lambda\><around*|(|\<cal-B\>|)>>.
      Now if <math|C\<in\>\<lambda\><around*|(|\<cal-B\>|)>> then
      <math|\<forall\>B\<in\>\<cal-B\>> we have that
      <math|C\<leqslant\>B\<Rightarrow\>C\<subseteq\>B>, so that by [theorem:
      <reference|class general intersection>] we have
      <math|C\<subseteq\><big|cap>\<cal-B\>\<Rightarrow\>C\<leqslant\><big|cap>\<cal-B\>>
      so that <math|<big|cap>\<cal-B\>> is the greatest element of
      <math|\<lambda\><around*|(|\<cal-B\>|)>> proving that
      <math|inf<around*|(|\<cal-B\>|)>> exists and
      <math|inf<around*|(|\<cal-B\>|)>=<big|cap>\<cal-B\>>.

      <item>If <math|B\<in\>\<cal-B\>> then by [theorem: <reference|class
      general intersection>] <math|B\<subseteq\><big|cup>\<cal-B\>\<Rightarrow\>B\<leqslant\><big|cup>\<cal-B\>>
      so that <math|<big|cup>\<cal-B\>\<in\>\<upsilon\><around*|(|\<cal-B\>|)>>.
      Now if <math|C\<in\>\<upsilon\><around*|(|\<cal-B\>|)>> then
      <math|\<forall\>B\<in\>\<cal-B\>> we have that
      <math|B\<leqslant\>C\<Rightarrow\>B\<subseteq\>C>, so that by [theorem:
      <reference|class general intersection>] we have
      <math|<big|cup>\<cal-B\>\<subseteq\>C\<Rightarrow\><big|cup>\<cal-B\>\<leqslant\>C>
      so that <math|<big|cup>\<cal-B\>> is the lowest element of
      <math|\<upsilon\><around*|(|\<cal-B\>|)>> proving that
      <math|sup<around*|(|\<cal-B\>|)>> exists and
      <math|sup<around*|(|\<cal-B\>|)>=<big|cup>\<cal-B\>>.
    </enumerate>
  </proof>

  The following theorem will be used a lot of time when dealing with
  supremums and infinums.

  <\theorem>
    <label|order sup, inf property>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    be a totally ordered set and <math|A\<subseteq\>X> then

    <\enumerate>
      <item>If <math|sup<around*|(|A|)>> exists then
      <math|\<forall\>x\<in\>X> with <math|x\<less\>sup<around*|(|A|)>> there
      <math|\<exists\>a\<in\>A> such that
      <math|x\<less\>a\<wedge\>a\<leqslant\>sup<around*|(|A|)>>

      <item>If <math|inf<around*|(|A|)>> exist then <math|\<forall\>x\<in\>X>
      with <math|inf<around*|(|A|)>\<less\>x> there <math|\<exists\>a\<in\>A>
      such that <math|inf<around*|(|A|)>\<leqslant\>a\<wedge\>a\<less\>x>
    </enumerate>
  </theorem>

  <\proof>
    First as <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is totally
    ordered we have <math|\<forall\>x,y\<in\>X> that <math|x,y> are
    comparable, hence by [theorem: <reference|order comparable property>], we
    have <math|x\<leqslant\>y\<wedge\>y\<less\>x>/

    <\enumerate>
      <item>Let <math|x\<in\>X> such that <math|x\<less\>sup<around*|(|A|)>>.
      Assume that <math|\<forall\>a\<in\>A> we have
      <math|\<neg\><around*|(|x\<less\>a|)>> so that <math|a\<leqslant\>x>,
      so <math|x> is a upper bound of <math|A>, hence
      <math|x\<in\>\<upsilon\>*<around*|(|A|)>>, so that
      <math|sup<around*|(|A|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>\<leqslant\>x>,
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
      <math|x\<in\>\<lambda\><around*|(|A|)>>, so that
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
  existence of <math|sup<around*|(|A|)>> and <math|inf<around*|(|A|)>>.

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
      As <math|a\<in\>A> was arbitrary chosen we have that

      <\equation>
        <label|eq 3.8.011>sup<around*|(|\<lambda\><around*|(|A|)>|)>\<in\>\<lambda\><around*|(|A|)>
      </equation>

      If <math|x\<in\>\<lambda\><around*|(|A|)>>, then, as
      <math|sup<around*|(|\<lambda\><around*|(|A|)>|)>> is a upper bound of
      <math|\<lambda\><around*|(|A|)>>, we have
      <math|x\<leqslant\>sup<around*|(|\<lambda\><around*|(|A|)>|)>>. So

      <\equation>
        <label|eq 3.9.011>\<forall\>x\<in\>\<lambda\><around*|(|A|)><text| we
        have <math|x\<leqslant\>sup<around*|(|\<lambda\><around*|(|A|)>|)>>>
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
      As <math|a\<in\>A> was arbitrary chosen we have that

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
      it follows that <math|inf<around*|(|\<upsilon\><around*|(|A|)>|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>=sup<around*|(|A|)>>
      or\ 

      <\equation*>
        inf<around*|(|\<upsilon\><around*|(|A|)>|)>=sup<around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  In general it is not guaranteed that <math|sup<around*|(|A|)>> or
  <math|inf<around*|(|A|)>> exists. However there exists partial order
  classes that guarantees the existence of a supremum for non empty
  sub-classes that are bounded above.\ 

  <\definition>
    <label|order conditional complete order><index|conditional
    completeness><dueto|Conditional Completeness>A partial ordered class
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
    <with|font-series|bold|conditional complete >if every non empty sub-class
    of <math|A> that is bounded above has a supremum.
  </definition>

  The next theorem shows that conditional completeness can also be defined
  based on bounded below and infinum.

  <\theorem>
    <label|order conditional complete alternatives>If
    <math|<around*|\<langle\>|A,\<leqslant\>|\<rangle\>>> is a partial
    ordered class then the following are equivalent

    <\enumerate>
      <item>Every non empty sub-class of <math|X> that is bounded above has a
      supremum [<math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
      conditional complete]

      <item>Every non empty sub-class of <math|X> that is bounded below has a
      infinum\ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|A\<subseteq\>X> a non empty
      sub-class that is bounded below. As <math|A\<neq\>\<varnothing\>> there
      exists a <math|a\<in\>A>, further by definition of
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
      sub-class that is bounded above. As <math|A\<neq\>\<varnothing\>> there
      exists a <math|a\<in\>A>, further by definition of
      <math|\<upsilon\><around*|(|A|)>> we have
      <math|\<forall\>y\<in\>\<upsilon\><around*|(|A|)>> that
      <math|a\<leqslant\>y> so <math|\<upsilon\><around*|(|A|)>> is bounded
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
    ordered classes, <math|f:<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    is a order isomorphism, <math|A\<subseteq\>X> and <math|B\<subseteq\>Y>
    then

    <\enumerate>
      <item>If <math|u> is a upper bound of <math|B> then
      <math|<around*|(|f<rsup|-1>|)><around*|(|u|)>> is a upper bound of
      <math|f<rsup|-1><around*|(|B|)>>

      <item>If <math|l> is a lower bound of <math|B> then
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
    have that <math|f:<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    and <math|f<rsup|-1>:<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>\<rightarrow\><around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>
    are increasing.

    <\enumerate>
      <item>Let <math|x\<in\>f<rsup|-1><around*|(|B|)>> then
      <math|\<exists\>y\<in\>B> such that <math|y=f<around*|(|x|)>>, as
      <math|u> is a upper bound of <math|B>, we have that
      <math|y\<leqslant\><rsub|B>u>. So <math|x\<equallim\><rsub|<text|[theorem:
      <reference|function inverse function and
      f(x)>]>><around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>=<around*|(|f<rsup|-1>|)><around*|(|y|)>\<leqslant\><rsub|A><around*|(|f<rsup|-1>|)><around*|(|u|)>>,
      proving that <math|<around*|(|f<rsup|-1>|)><around*|(|u|)>> is a upper
      bound of <math|f<rsup|-1><around*|(|B|)>>.

      <item>Let <math|x\<in\>f<rsup|-1><around*|(|B|)>> then
      <math|\<exists\>y\<in\>B> such that <math|y=f<around*|(|x|)>>, as
      <math|l> is a lower bound of <math|B> we have that
      <math|l\<leqslant\><rsub|B>y>. So <math|<around*|(|f<rsup|-1>|)><around*|(|l|)>\<leqslant\><rsub|A><around*|(|f<rsup|-1>|)><around*|(|y|)>=<around*|(|f<rsup|-1>|)><around*|(|f<around*|(|x|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|function inverse function and f(x)>]>>x>, proving that
      <math|<around*|(|f<rsup|-1>|)><around*|(|l|)>> is a lower bound of
      <math|f<rsup|-1><around*|(|B|)>>.

      <item>If <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A>
      such that <math|y=f<around*|(|x|)>>. As <math|u> is a upper bound of
      <math|A> we have that <math|x\<leqslant\><rsub|A>u>, so
      <math|y=f<around*|(|x|)>\<leqslant\><rsub|B>f<around*|(|u|)>> proving
      that <math|f<around*|(|u|)>> is a upper bound of
      <math|f<around*|(|A|)>>.

      <item>If <math|y\<in\>f<around*|(|A|)>> then <math|\<exists\>x\<in\>A>
      such that <math|y=f<around*|(|x|)>>, As <math|l> is a lower bound of
      <math|A> we have that <math|l\<leqslant\><rsub|A>x>, so
      <math|f<around*|(|l|)>\<leqslant\><rsub|B>f<around*|(|x|)>=y> proving
      that <math|f<around*|(|l|)>> is a lower bound of
      <math|f<around*|(|A|)>>.

      <item> If <math|y\<in\>f<around*|(|\<upsilon\><around*|(|A|)>|)>> then
      there <math|\<exists\>x\<in\>\<upsilon\><around*|(|A|)>> such that
      <math|y=f<around*|(|x|)>>. As <math|x\<in\>\<upsilon\><around*|(|A|)>>,
      <math|x> is a upper bound of <math|B>, so that by (3)
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
      function and f(x)>>>f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>=y\<in\>f<around*|(|\<upsilon\><around*|(|A|)>|)>>.
      Hence <math|\<upsilon\><around*|(|f<around*|(|A|)>|)>\<subseteq\>f<around*|(|\<upsilon\><around*|(|A|)>|)>>
      which combined with [eq: <reference|eq 3.12.012>] proves\ 

      <\equation*>
        f<around*|(|\<upsilon\><around*|(|A|)>|)>=\<upsilon\><around*|(|f<around*|(|A|)>|)>
      </equation*>

      <item>If <math|y\<in\>f<around*|(|\<lambda\><around*|(|A|)>|)>> then
      there <math|\<exists\>x\<in\>\<lambda\><around*|(|A|)>> such that
      <math|y=f<around*|(|x|)>>. As <math|x\<in\>\<lambda\><around*|(|A|)>>,
      <math|x> is a lower bound of <math|A>, so that by (4)
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
      function and f(x)>>>f<around*|(|<around*|(|f<rsup|-1>|)><around*|(|y|)>|)>=y\<in\>f<around*|(|\<lambda\><around*|(|A|)>|)>>.
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
      <math|min<around*|(|A|)>\<leqslant\><rsub|A>x> so that
      <math|f<around*|(|min<around*|(|A|)>|)>\<leqslant\><rsub|B>f<around*|(|x|)>=y>.
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
    conditional complete partial ordered set,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> a partial
    ordered class and <math|f:<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    a order isomorphism then <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    is conditionally complete.
  </theorem>

  <\proof>
    Let <math|A\<subseteq\>Y> be such that <math|A> is bounded above and non
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
    conditional complete.
  </proof>

  <subsection|Well ordering>

  <\definition>
    <label|order well-rodered class><index|well-ordered class>A partial
    ordered class <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
    <with|font-series|bold|well ordered> is every non empty sub-class of
    <math|X> has a least element. In other words if
    <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>>
    <math|min<around*|(|A|)>> exist.
  </definition>

  <\theorem>
    <label|order well ordering and order isomorphism>If
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> are partial
    ordered sets, <math|f:<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    a order isomorphism then if <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>
    is well ordered <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    is well ordered.
  </theorem>

  <\proof>
    Let <math|A\<subseteq\>Y> be a non empty subclass of <math|Y>. Then
    <math|\<exists\>a\<in\>A> and as <math|f> is a bijection there exist a
    <math|x\<in\>X> such that <math|y=f<around*|(|x|)>>, from which it
    follows that <math|x\<in\>f<rsup|-1><around*|(|A|)>>. So\ 

    <\equation*>
      f<rsup|-1><around*|(|A|)>\<neq\>\<varnothing\>
    </equation*>

    As <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> is well
    ordered we have that <math|f<rsup|-1><around*|(|A|)>> has a least
    element, hence\ 

    <\equation*>
      \<exists\>m<rprime|'>\<in\>f<rsup|-1><around*|(|A|)> such that
      \<forall\>a\<in\>f<rsup|-1><around*|(|A|)><text| we have
      >m<rprime|'>\<leqslant\><rsub|X>a
    </equation*>

    Take now <math|m=f<around*|(|m<rprime|'>|)>> then as
    <math|m<rprime|'>\<in\>f<rsup|-1><around*|(|A|)>> we have that\ 

    <\equation>
      <label|eq 3.14.026>m\<in\>A
    </equation>

    Further if <math|a\<in\>A> then as <math|f> is surjective there exists a
    <math|b\<in\>X> such that <math|a=f<around*|(|b|)>> or
    <math|b\<in\>f<rsup|-1><around*|(|A|)>>, so that
    <math|m<rprime|'>\<leqslant\><rsub|X>b>. As <math|f> is a order
    isomorphism we have <math|m=f<around*|(|m<rprime|'>|)>\<leqslant\><rsub|Y>f<around*|(|b|)>=a>.
    Hence we have proved that\ 

    <\equation>
      <label|eq 3.15.026>\<forall\>a\<in\>A<text| we have >m\<leqslant\>a
    </equation>

    From [eq: <reference|eq 3.14.026>] and [eq: <reference|eq 3.15.026>] we
    conclude finally that <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>>
    is well ordered.
  </proof>

  <\theorem>
    <label|order total/well-order inclusion>If
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
    ordered class, <math|B\<subseteq\>X> then for
    <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>> [see
    theorem: <reference|order partial order on sub class>] we have\ 

    <\enumerate>
      <item>If <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
      totally ordered then <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>>
      is totally ordered

      <item>If <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is well
      ordered then <math|<around*|\<langle\>|B,\<leqslant\><rsub|\|B>|\<rangle\>>>
      is totally ordered
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>B\<Rightarrow\>x,y\<in\>X> hence
      <math|x\<leqslant\>y\<vee\>y\<leqslant\>x> so that
      <math|x\<leqslant\><rsub|\|B>y\<vee\>y\<leqslant\><rsub|\|B>x>.

      <item>If <math|C\<subseteq\>B> is a non empty class then as
      <math|B\<subseteq\>X> we have <math|\<varnothing\>\<neq\>C\<subseteq\>X>.
      So there exists a least element <math|c> of <math|C>. So
      <math|c\<in\>C> and <math|\<forall\>x\<in\>C> we have
      <math|c\<leqslant\>x\<Rightarrowlim\><rsub|x\<in\>B>c\<leqslant\><rsub|\|B>x>
      proving that <math|c> is a least element of <math|C> using the order
      relation <math|\<leqslant\><rsub|\|B>>.
    </enumerate>
  </proof>

  Well ordering is a stronger condition then conditional completeness and
  totally ordering

  <\theorem>
    <label|order well order implies conditional complete and totally
    ordering>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a
    well ordered class then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is totally
      ordered

      <item><math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is
      conditional complete

      <item><math|\<forall\>x,y\<in\>X> we have <math|x\<leqslant\>y> or
      <math|y\<less\>x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>X> then <math|<around*|{|x,y|}>> is a non empty
      sub-class of <math|X> and must have a least element. If <math|x> is the
      least element then <math|x\<leqslant\>y> and if <math|y> is the least
      element then <math|y\<leqslant\>x>, so
      <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is totally
      ordered.\ 

      <item>If <math|A> is a non empty sub-class of <math|X> that is bounded
      above then <math|\<upsilon\><around*|(|A|)>\<neq\>\<varnothing\>>.
      Using well ordering we have that <math|sup<around*|(|A|)>=min<around*|(|\<upsilon\><around*|(|A|)>|)>>
      exist.

      <item>As by (1) <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
      is totally ordered we have that <math|x<text| and >y> are comparable,
      hence by [theorem: <reference|order comparable property>] we have
      <math|x\<leqslant\>y\<vee\>y\<less\>x>.
    </enumerate>
  </proof>

  One difference between the order relation on the set of whole numbers
  <math|\<bbb-Z\>> and the set of real numbers <math|\<bbb-R\>> is that there
  does not exist a whole number between 1 and 2 while for the real numbers
  there is the real number <math|1.5> between <math|1> and <math|2>. This
  leads to the following definition.

  <\definition>
    <label|order immediate successor><index|immediate
    successor><dueto|Immediate successor>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered set and <math|x,y\<in\>X> then <math|y> is the
    <with|font-series|bold|immediate> successor of <math|x> iff\ 

    <\enumerate>
      <item><math|x\<less\>y>

      <item><math|\<neg\><around*|(|\<exists\>z\<in\>X<text| such that
      >x\<less\>z\<wedge\>z\<less\>y|)>> [in words there does not exists a
      <math|x\<in\>X> such that <math|x\<less\>z\<less\>y>]
    </enumerate>
  </definition>

  <\theorem>
    <label|order well order and immediate successor>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class then every element that is not a greatest element of <math|X> has a
    immediate successor.
  </theorem>

  <\proof>
    Using [theorem: <reference|order well order implies conditional complete
    and totally ordering>] we have that <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    is totally ordered. Let <math|x\<in\>X> such that <math|x> is not a
    greatest element in <math|X>. Take <math|B=<around*|{|y\<in\>X\|x\<less\>y|}>>
    then if <math|B=\<varnothing\>> we have that <math|X\\B=X> so
    <math|\<forall\>r\<in\>X> we have <math|r\<nin\>B> or
    <math|\<neg\><around*|(|x\<less\>r|)>>, by [theorem: <reference|order
    well order implies conditional complete and totally ordering>] we have
    that <math|r\<leqslant\>x>, proving that <math|x> is a greatest element
    of <math|X> which contradicts or hypothesis.. So we must have that
    <math|B\<neq\>\<varnothing\>>, by well ordering there exist a least
    element <math|b> of <math|B>, which as <math|b\<in\>B> gives
    <math|x\<less\>b>. Assume that there exist a <math|a\<in\>X> such that
    <math|x\<less\>a\<wedge\>a\<less\>b>, then we must have that
    <math|a\<in\>B> and <math|a\<less\>b>. As <math|b> is the least element
    of <math|B> and <math|a\<in\>B> we have <math|b\<less\>a> leading to the
    contradiction <math|a\<less\>a>. So <math|b> is a immediate successor of
    <math|x>/
  </proof>

  <\definition>
    <label|order section><index|section>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered class then <math|B\<subseteq\>A> is a
    <with|font-series|bold|section> of <math|X> if\ 

    <\equation*>
      \<forall\>x\<in\>X we have<text| >\<forall\>y\<in\>B<text| with
      >x\<leqslant\>y<text| that >x\<in\>B
    </equation*>
  </definition>

  <\lemma>
    <label|order section and well ordering>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class and <math|B\<subseteq\>X> then\ 

    <\equation*>
      B<text| is a section >\<Leftrightarrow\><text| >B=X<text| or >B<text|
      is a initial segment of >X<text| [definition: <reference|order initial
      segement>]>
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|B> be a section of <math|X> then
      if <math|B=X> we are done. So we must prove the theorem for
      <math|B\<neq\>X> or equivalently <math|X\\B\<neq\>\<varnothing\>>.
      Because <math|X> is well ordered, there a exists a least element
      <math|l\<in\>X\\B>. Consider the initial segment
      <math|S<rsub|X,l>=<around*|{|x\<in\>X\|x\<less\>l|}>> [see definition:
      <reference|order initial segement>]. Let <math|x\<in\>S<rsub|X,l>> so
      that <math|x\<less\>l>. Assume that <math|x\<nin\>B> then
      <math|x\<in\>X\\B> so, as <math|l> is a least element of <math|X\\B>,
      we have <math|l\<leqslant\>x> which combined with <math|x\<less\>l>
      leads to the contradiction <math|l\<less\>l>. So we must have that
      <math|x\<in\>B> which proves that\ 

      <\equation>
        <label|eq 3.14.013>S<rsub|X,l>\<subseteq\>B
      </equation>

      Let <math|x\<in\>B>, as <math|X> is well ordered we have by [theorem:
      <reference|order well order implies conditional complete and totally
      ordering>] that <math|l\<leqslant\>x\<vee\>x\<less\>l>. Assume that
      <math|l\<leqslant\>x> then, as <math|B> is a section, we have
      <math|l\<in\>B> contradicting <math|l\<in\>X\\B> [as <math|l> is least
      element of <math|X\\B>]. So we must have <math|x\<less\>l> or
      <math|x\<in\>S<rsub|X,l>> so <math|B\<subseteq\>S<rsub|X,l>>. Combining
      this result with [eq: <reference|eq 3.14.013>] proves\ 

      <\equation*>
        S<rsub|X,l>=B
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|X=B> then
      <math|\<forall\>x\<in\>X> we have <math|\<forall\>y\<in\>B=X> with
      <math|x\<leqslant\>y> that trivially <math|x\<in\>X=B>, so <math|B> is
      a section. If <math|B> is initial segment then there exist a
      <math|l\<in\>X> such that <math|B=<around*|{|y\<in\>X\|y\<less\>l|}>>.
      Take <math|x\<in\>X> then if <math|y\<in\>B> with <math|x\<leqslant\>y>
      we have <math|y\<less\>l> so that <math|x\<less\>l> hence
      <math|x\<in\>B>, proving that <math|B> is a section.
    </description>
  </proof>

  A application of the above lemma is Transfinite Induction.

  <\theorem>
    <label|order transfinite induction><index|transfinite
    induction><dueto|Transfinite Induction>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class and let <math|P<around*|(|x|)>> a proposition about <math|x> [a
    statement about <math|x> that can be true or false] such that\ 

    <\equation>
      <label|eq 3.15.013>\<forall\>x\<in\>X<text| such that, if
      <math|P<around*|(|y|)>> is true for every <math|y\<less\>x> then
      <math|P<around*|(|x|)><text| is true>>>
    </equation>

    then\ 

    <\equation*>
      \<forall\>x\<in\>X<text| >P<around*|(|x|)><text| is true>
    </equation*>
  </theorem>

  <\proof>
    We prove this by contradiction. Assume that <math|\<exists\>x\<in\>X>
    such that <math|P<around*|(|x|)>> is false, then
    <math|B=<around*|{|x\<in\>X\|\<cal-P\><around*|(|x|)><text| is false>|}>>
    is non empty. \ As <math|X> is well ordered there exist a least element
    <math|l\<in\>B>. Take <math|x\<in\>X> with <math|x\<less\>l> then
    <math|x\<nin\>B> [for if <math|x\<in\>B> then <math|l\<leqslant\>x>,
    which combined with <math|x\<less\>l> gives the contradiction
    <math|l\<less\>l>] so that <math|P<around*|(|x|)>> is true. By the
    hypothesis [eq: <reference|eq 3.15.013>] we have that
    <math|P<around*|(|l|)>> is true, which means that <math|l\<nin\>B>
    contradicting <math|l\<in\>B>. So we must have that
    <math|\<forall\>x\<in\>X> <math|P<around*|(|x|)>> is true.
  </proof>

  <\lemma>
    <label|order well ordered and order isomorphism>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class, <math|B\<subseteq\>X> and <math|f:<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\>|\<rangle\>>>
    a order isomorphism then <math|\<forall\>x\<in\>X> we have
    <math|x\<leqslant\>f<around*|(|x|)>>
  </lemma>

  <\proof>
    We prove this by contradiction. Assume that that<math|\<exists\>x\<in\>X>
    such that <math|\<neg\><around*|(|x\<leqslant\>f<around*|(|x|)>|)>>. As
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> if well ordered we
    have by \ [theorem: <reference|order well order implies conditional
    complete and totally ordering>] that <math|f<around*|(|x|)>\<less\>x>,
    hence <math|C=<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>x|}>\<neq\>\<varnothing\>>.
    By well ordering there exists a least element <math|c> of <math|C>. As
    <math|c\<in\>C> we have that <math|f<around*|(|c|)>\<less\>c>, hence by
    [theorem: <reference|order isomorphism strictly>]
    <math|f<around*|(|f<around*|(|c|)>|)>\<less\>f<around*|(|c|)>> so that
    <math|f<around*|(|c|)>\<in\>C>. As <math|c> is the least element of
    <math|C> we have <math|c\<leqslant\>f<around*|(|c|)>>, which combined
    with <math|f<around*|(|c|)>\<less\>c> gives the contradiction
    <math|c\<less\>c>. So we must have <math|\<forall\>x\<in\>X> that
    <math|x\<leqslant\>f<around*|(|x|)>>.
  </proof>

  <\theorem>
    <label|order well ordered class and isomorphism>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class then there does not exist a order isomorphism from <math|X> to a
    sub-class of an initial segment of <math|X>.
  </theorem>

  <\proof>
    We prove this by contradiction. So assume that there exists a initial
    segment <math|S<rsub|X,a>=<around*|{|y\<in\>X\|y\<less\>a|}>> of
    <math|X>, a <math|B\<subseteq\>S<rsub|X,\<alpha\>>> and a order
    isomorphism <math|f:<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<leqslant\>|\<rangle\>>>.
    Using the previous lemma [lemma: <reference|order well ordered and order
    isomorphism>] we have that <math|a\<leqslant\>f<around*|(|a|)>>, so
    <math|f<around*|(|a|)>\<nin\>S<rsub|X,a>> [for if
    <math|f<around*|(|a|)>\<in\>S<rsub|X,a>> then
    <math|f<around*|(|a|)>\<less\>a> leading to the contradiction
    <math|a\<less\>a>]. However as <math|range<around*|(|f|)>=B\<subseteq\>S<rsub|X,a>>
    we must have that <math|f<around*|(|a|)>\<in\>S<rsub|X,a>> and we reach a
    contradiction.
  </proof>

  <\corollary>
    <label|order well ordered is not isomorph to a initial segment >Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class then there does not exist a order isomorphism between <math|X> and
    initial segment of <math|X>
  </corollary>

  <\proof>
    As a initial segment is a sub-class of itself this follows from the
    previous theorem [theorem: <reference|order well ordered class and
    isomorphism>]
  </proof>

  <\theorem>
    <label|order well ordered isomorphism property>If
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> are well
    ordered classes then if <math|X> is order isomorphic with an initial
    segment of <math|Y> we have that <math|Y> is not order isomorphic with
    any sub-class of <math|X>.
  </theorem>

  <\proof>
    Let <math|S<rsub|Y,y>> be a initial segment of <math|Y> and
    <math|f:<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|S<rsub|Y,y>,\<leqslant\><rsub|Y>|\<rangle\>>>
    a order isomorphism. Assume that there exist a <math|A\<subseteq\>X> and
    a order isomorphism <math|g:<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>\<rightarrow\><around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>,
    As by [lemma: <reference|function extend target>],[theorem:
    <reference|function injectivity, surjectivity>] and the fact that
    'increasing' is a property of the graph of a function,we have that
    <math|g:<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>\<rightarrow\><around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>
    is a injective increasing function. Using [theorem: <reference|function
    composition injectivity, surjectivity and bijectivity>],[theorem:
    <reference|order composition of functions>] <math|we have \ that
    f\<circ\>g:<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>\<rightarrow\><around*|\<langle\>|S<rsub|Y,y>,\<leqslant\><rsub|Y>|\<rangle\>>>
    is a injective increasing function, hence
    <math|f\<circ\>g:Y\<rightarrow\><around*|(|f\<circ\>g|)><around*|(|Y|)>>
    is a bijective function [see theorem: <reference|function injectivity to
    bijection>] which is increasing, hence by [theorem: <reference|order
    condition for isomorphism in a totallu ordered set>] we have that
    <math|f\<circ\>g:<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>\<rightarrow\><around*|\<langle\>|<around*|(|f\<circ\>g|)><around*|(|Y|)>,\<leqslant\><rsub|Y>|\<rangle\>>>
    is a order isomorphism. As <math|<around*|(|f\<circ\>g|)><around*|(|Y|)>\<subseteq\>range<around*|(|f|)>>
    [see theorem: <reference|partial function domain range composition>] and
    <math|range<around*|(|f|)>\<subseteq\>S<rsub|Y,y>> we have a order
    isomorphism \ between <math|Y> and a sub-class of a initial segment of
    <math|Y>. By [theorem: <reference|order well ordered class and
    isomorphism>] this is impossible so the assumption is false, hence
    <math|Y> is not order isomorphic to a an initial segment of <math|Y>.
  </proof>

  <\corollary>
    <label|order well ordered isomorphic property (3)>If
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> are well
    ordered classes such that <math|X> is order isomorphic with <math|Y> then\ 

    <\enumerate>
      <item><math|X> can not be order isomorphic with a initial segment of
      <math|Y>

      <item><math|Y> can not be order isomorphic with a initial segment of
      <math|X>
    </enumerate>
  </corollary>

  <\proof>
    \ We prove this by contradiction. First by the hypothesis we have
    <math|X\<cong\>Y> and by [theorem: <reference|order properties of the
    isomorph relation>] <math|Y\<cong\>X>.

    <\enumerate>
      <item>If <math|X> is order isomorphic with a initial segment of
      <math|Y> then as <math|Y\<cong\>X> we have that <math|Y> is order
      isomorphic with a sub-class of <math|X>, which by [theorem:
      <reference|order well ordered isomorphism property>] is not allowed.

      <item>If <math|Y> is order isomorphic with a initial segment of
      <math|X> then as <math|X\<cong\>Y> we have that <math|X> is order
      isomorphic with a sub-class of <math|Y>, which by [theorem:
      <reference|order well ordered isomorphism property>] is not allowed.
    </enumerate>
  </proof>

  <\lemma>
    <label|order initial segement a\<less\>b>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a well ordered
    class and <math|a,b\<in\>X> with <math|a\<less\>b> then
    <math|S<rsub|X,a>> is a initial segment of <math|\<cal-S\><rsub|X,b>>
    [using the order <math|\<leqslant\><rsub|\|S<rsub|X,y>>>]
  </lemma>

  <\proof>
    First if <math|x\<in\>S<rsub|X,a>> then
    <math|x\<less\>a\<Rightarrowlim\><rsub|<text|a\<less\>b>>x\<less\>b<rsub|>>
    so that <math|x\<in\>S<rsub|X,b>>, hence\ 

    <\equation*>
      S<rsub|X,a>\<subseteq\>S<rsub|X,b>
    </equation*>

    Now if <math|x\<in\>S<rsub|X,b>> and <math|y\<in\>S<rsub|X,a>> is such
    that <math|x\<leqslant\><rsub|\|S<rsub|X<rsub|B>>>y<text| then
    >x\<leqslant\>y\<Rightarrowlim\><rsub|y\<in\>S<rsub|X,a>\<Rightarrow\>y\<less\>a>x\<less\>a<text|
    hence >x\<in\>S<rsub|X,a>>. So <math|S<rsub|X,a>> is a section of
    <math|S<rsub|X,b>>, as <math|a\<nin\>S<rsub|X,a>\<wedge\>a\<in\>S<rsub|X,b>>
    [for <math|a\<less\>b>] we have <math|S<rsub|X,a>\<neq\>S<rsub|X,b>> so
    that, using [theorem: <reference|order section and well ordering>],
    <math|S<rsub|X,a>> is a initial segment of <math|S<rsub|X,b>>.
  </proof>

  <\theorem>
    <label|order well ordering and isomorphism (2)>Let Let
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> be well
    ordered classes then exactly one of the following cases hold

    <\enumerate>
      <item><math|X> is order isomorphic with <math|Y>

      <item><math|X> is order isomorphic with an initial segment of <math|Y>

      <item><math|Y> is order isomorphic with an initial segment of <math|X>
    </enumerate>
  </theorem>

  <\proof>
    Define

    <\equation>
      <label|eq 3.16.016>C=<around*|{|x\<in\>X\|\<exists\>y\<in\>Y<text| such
      that >S<rsub|X,x>\<cong\>S<rsub|Y,y>|}>
    </equation>

    and

    <\equation>
      <label|eq 3.17.016>F=<around*|{|<around*|(|x,y|)>\<in\>C\<times\>Y\|S<rsub|X,x>\<cong\>S<rsub|Y,y>|)>
    </equation>

    We prove now that <math|F> is the graph of a order isomorphism between
    <math|C> and <math|F<around*|(|C|)>>. We have trivially from the
    definition of <math|F> that

    <\equation>
      <label|eq 3.16.014>F\<subseteq\>C\<times\>Y
    </equation>

    Let <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>F>, then
    <math|\<cal-S\><rsub|X,x>\<cong\>S<rsub|Y,y>> and
    <math|S<rsub|x,x>\<cong\>S<rsub|Y,y<rprime|'>>> so by [theorem:
    <reference|order properties of the isomorph relation>]

    <\equation>
      <label|eq 3.17.014>S<rsub|Y,y>\<cong\>S<rsub|Y,y<rprime|'>><rsub|>
    </equation>

    Assume that <math|y\<neq\>y<rprime|'>> then, as
    <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> is well
    ordered we have by [theorem: <reference|order well order implies
    conditional complete and totally ordering>] either:

    <\description>
      <item*|<math|y\<leqslant\>y<rprime|'>>>then <math|y\<less\>y<rprime|'>>
      so that by the previous lemma [lemma: <reference|order initial segement
      a\<less\>b>] we have that <math|S<rsub|Y,y>> is a initial segment of
      <math|S<rsub|Y,y<rprime|'>>>. Using [corollary: <reference|order well
      ordered is not isomorph to a initial segment >] we have then that
      <math|S<rsub|Y,y<rprime|'>>> is not order isomorphic with
      <math|S<rsub|Y,y>> contradicting [eq: <reference|eq 3.17.014>].

      <item*|<math|y<rprime|'>\<less\>y>>then by the previous lemma [lemma:
      <reference|order initial segement a\<less\>b>] we have that
      <math|S<rsub|Y,y<rprime|'>>> is a initial segment of
      <math|S<rsub|Y,y>>. Using [corollary: <reference|order well ordered is
      not isomorph to a initial segment >] we have then that
      <math|S<rsub|Y,y>> is not order isomorphic with
      <math|S<rsub|Y,y<rprime|'>>> contradicting [eq: <reference|eq
      3.17.014>].
    </description>

    as in all cases we have a contradiction, the assumption must be wrong.
    Hence\ 

    <\equation>
      <label|eq 3.18.014><text|If ><around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>F<text|
      then >y=y<rprime|'>
    </equation>

    Further if <math|x\<in\>C> then by definition of <math|C> there exists a
    <math|y\<in\>Y> such that <math|S<rsub|X,x>=S<rsub|Y,y>> hence
    <math|<around*|(|x,y|)>\<in\>F> proving that\ 

    <\equation>
      <label|eq 3.19.014>C\<subseteq\>dom<around*|(|F|)>
    </equation>

    If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>F> then
    <math|S<rsub|X,x>\<cong\>S<rsub|Y,y>> and
    <math|\<cal-S\><rsub|X,x<rprime|'>>\<cong\>S<rsub|Y,y>> so by \ [theorem:
    <reference|order properties of the isomorph relation>] we have that\ 

    <\equation>
      <label|eq 3.20.014>S<rsub|X,x>\<cong\>S<rsub|X,x<rprime|'>>
    </equation>

    Assume that <math|x\<neq\>x<rprime|'>> then, as
    <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> is well
    ordered we have by \ [theorem: <reference|order well order implies
    conditional complete and totally ordering>] either:

    <\description>
      <item*|<math|x\<leqslant\>x<rprime|'>>>then <math|x\<less\>x<rprime|'>>
      so that by the previous lemma [lemma: <reference|order initial segement
      a\<less\>b>] we have that <math|S<rsub|X,x>> is a initial segment of
      <math|S<rsub|X,x<rprime|'>>>. Using [corollary: <reference|order well
      ordered is not isomorph to a initial segment >] we have then that
      <math|S<rsub|X,x<rprime|'>>> is not order isomorphic with
      <math|S<rsub|X,x>> contradicting [eq: <reference|eq 3.20.014>].

      <item*|<math|x<rprime|'>\<leqslant\>x>>then by the previous lemma
      [lemma: <reference|order initial segement a\<less\>b>] we have that
      <math|S<rsub|X,x<rprime|'>>> is a initial segment of
      <math|S<rsub|X,x>>. Using [corollary: <reference|order well ordered is
      not isomorph to a initial segment >] we have then that
      <math|S<rsub|X,x>> is not order isomorphic with
      <math|S<rsub|X,x<rprime|'>>> contradicting [eq: <reference|eq
      3.20.014>].
    </description>

    as in all cases we have a contradiction, the assumption must be wrong.
    Hence\ 

    <\equation>
      <label|eq 3.21.014><text|If ><around*|(|x,y|)>,<around*|(|x<rprime|'>,y|)>\<in\>F<text|
      we have >x=x<rprime|'>
    </equation>

    Combining [eq: <reference|eq 3.16.014>], [eq: <reference|eq 3.18.014>],
    [eq: <reference|eq 3.19.014>] and [eq: <reference|eq 3.21.014>] it
    follows that <math|F:C\<rightarrow\>Y<text| is a injective \ function>>.
    Applying then [proposition: <reference|function injectivity to
    bijection>] gives if we define <math|D=F<around*|(|C|)>>

    <\equation>
      <label|eq 3.22.014>F:C\<rightarrow\>D<text| is a bijection>
    </equation>

    Take <math|x,y\<in\>C> such that <math|x\<leqslant\><rsub|X>y<rsub|>>
    then by definition of <math|F> we have

    <\equation>
      <label|eq 3.23.014>S<rsub|X,x>\<cong\>S<rsub|Y,F<around*|(|x|)>><text|
      and >S<rsub|X,y>\<cong\>S<rsub|Y,F<around*|(|y|)>>
    </equation>

    Assume now that <math|\<neg\><around*|(|F<around*|(|x|)>\<leqslant\><rsub|Y>F<around*|(|y|)>|)>>
    then as <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> is
    well ordered we have by [theorem: <reference|order well order implies
    conditional complete and totally ordering>] that
    <math|F<around*|(|y|)>\<less\><rsub|Y>F<around*|(|x|)>>. So using
    [theorem: <reference|order initial segement a\<less\>b>] we have that
    <math|S<rsub|Y,F<around*|(|y|)>>> is a initial segment of
    <math|S<rsub|Y,F<around*|(|x|)>>>. As <math|x\<leqslant\><rsub|X>y> it
    follows that <math|S<rsub|X,x>\<subseteq\>S<rsub|X,y>> [see proposition:
    <reference|order initial segement inclusion>]. So we have using [eq:
    <reference|eq 3.23.014>]

    <\enumerate-alpha>
      <item><math|S<rsub|X,y>> is order isomorphic with
      <math|S<rsub|Y,F<around*|(|y|)>>> a initial segment of
      <math|S<rsub|Y,F<around*|(|x|)>>>

      <item><math|S<rsub|F<around*|(|x|)>>> is order isomorphic with
      <math|S<rsub|X,x>> a sub-class of <math|S<rsub|X,y>>
    </enumerate-alpha>

    Using [theorem: <reference|order well ordered isomorphism property>] we
    see that (a) and (b) can not be all true, hence our assumption is false
    so that <math|F<around*|(|x|)>\<leqslant\>F<around*|(|y|)>>. Hence we
    have that <math|F:C\<rightarrow\>D> is a increasing bijection which by
    [theorem: <reference|order condition for isomorphism in a totallu ordered
    set>] proves that\ 

    <\equation>
      <label|eq 3.21.014.1>F:<around*|\<langle\>|C,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<leqslant\><rsub|Y>|\<rangle\>><text|
      is a order isomorphism or >C\<cong\>D
    </equation>

    Next we prove that

    <\equation>
      <label|eq 3.25.015>C<text| is a section of >X
    </equation>

    <\proof>
      Let <math|x\<in\>X> and take <math|c\<in\>C> such that
      <math|x\<leqslant\><rsub|X>c>. As <math|S<rsub|X,c>\<cong\>S<rsub|Y,F<around*|(|c|)>>>
      there exist a order isomorphism

      <\equation>
        <label|eq 3.25.014>g:S<rsub|X,c>\<rightarrow\>S<rsub|Y,F<around*|(|c|)>>
      </equation>

      Now as <math|x\<leqslant\><rsub|X>c> we have by [proposition:
      <reference|order initial segement inclusion>] that
      <math|S<rsub|X,x>\<subseteq\>S<rsub|X,c>>. Hence by <reference|function
      restriction of a function> we have that\ 

      <\equation>
        <label|eq 3.26.014>g<rsub|\|S<rsub|X,x>>:S<rsub|X,x>\<rightarrow\>S<rsub|X,c><text|
        is a function>
      </equation>

      Further if <math|y\<in\>S<rsub|X,x>> we have that
      <math|y\<less\><rsub|X>x>, so as <math|g> is a order isomorphism we
      have <math|g<around*|(|y|)>\<less\><rsub|Y>g<around*|(|x|)>> proving
      that <math|g<rsub|\|S<rsub|X,x>><around*|(|y|)>=g<around*|(|y|)>\<in\>S<rsub|Y,g<around*|(|x|)>>>
      or <math|range<around*|(|g<rsub|\|S<rsub|X,x>>|)>\<subseteq\>S<rsub|Y,g<around*|(|x|)>>>.
      So by [theorem: <reference|function range restriction>] it follows that\ 

      <\equation>
        <label|eq 3.27.014>g<rsub|\|S<rsub|X,x>>:S<rsub|X,x>\<rightarrow\>S<rsub|Y,g<around*|(|x|)>><text|
        is a function>
      </equation>

      As <math|g> is a isomorphism and thus injective it follows from
      [theorem: <reference|function restricted function properties>] that\ 

      <\equation>
        <label|eq 3.28.014>g<rsub|\|S<rsub|X,x>>:S<rsub|X<rsub|x>>\<rightarrow\>S<rsub|Y,g<around*|(|x|)>><text|
        is injective>
      </equation>

      Further if <math|y\<in\>S<rsub|Y,g<around*|(|x|)>>> then
      <math|y\<less\><rsub|Y>g<around*|(|x|)>>, as
      <math|g<around*|(|x|)>\<in\>S<rsub|Y,F<around*|(|c|)>>> [see eq:
      <reference|eq 3.25.014>] we have <math|g<around*|(|x|)>\<less\><rsub|Y>F<around*|(|c|)>>
      so that <math|y\<less\><rsub|Y>F<around*|(|c|)>> proving
      <math|y\<in\>S<rsub|Y,F<around*|(|c|)>>>. As <math|g> is surjective
      there exist a <math|u\<in\>S<rsub|X,c>> such that
      <math|y=g<around*|(|u|)>>. Assume that <math|x\<leqslant\><rsub|X>u>
      then <math|g<around*|(|x|)>\<leqslant\><rsub|Y>g<around*|(|u|)>=y>, as
      <math|y\<less\><rsub|Y>g<around*|(|x|)>> this gives the contradiction
      <math|g<around*|(|x|)>\<less\>g<around*|(|x|)>>. So we have
      <math|\<neg\><around*|(|x\<leqslant\>u|)>> which, as
      <math|<around*|\<langle\>|X,\<leqslant\><rsub|X>|\<rangle\>>> is well
      ordered, gives by [theorem: <reference|order well order implies
      conditional complete and totally ordering>] that
      <math|u\<less\><rsub|X>x> so that <math|u\<in\>S<rsub|X,x>>. So for
      <math|y\<in\>S<rsub|Y,g<around*|(|x|)>>> we found a
      <math|u\<in\>S<rsub|X,x>> such that
      <math|g<rsub|\|S<rsub|X,x>><around*|(|u|)>=g<around*|(|u|)>=y> proving
      that\ 

      <\equation>
        <label|eq 3.29.014>g<rsub|\|S<rsub|X,x>>:S<rsub|X,x>\<rightarrow\>S<rsub|Y,g<around*|(|x|)>><text|
        is surjective>
      </equation>

      Further if <math|u,v\<in\>S<rsub|X,x>> are such that
      <math|u\<leqslant\><rsub|X>v> so that
      <math|g<rsub|\|S<rsub|X,x>><around*|(|u|)>=g<around*|(|u|)>\<leqslant\><rsub|X>g<around*|(|v|)>=g<rsub|\|S<rsub|X,x>><around*|(|v|)>>
      proving that\ 

      <\equation>
        <label|eq 3.30.014>g<rsub|\|S<rsub|X,x>>:S<rsub|X,x>\<rightarrow\>S<rsub|Y,g<around*|(|x|)>><text|
        is increasing>
      </equation>

      Combining [eq: <reference|eq 3.26.014>], [eq: <reference|eq 3.27.014>],
      [eq: <reference|eq 3.29.014>], [eq: <reference|eq 3.30.014>] we have
      that <math|g<rsub|\|S<rsub|X,x>>:<around*|\<langle\>|S<rsub|X,x>,\<leqslant\><rsub|X>|\<rangle\>>\<rightarrow\><around*|\<langle\>|S<rsub|Y,g<around*|(|x|)>><rsub|>,\<leqslant\><rsub|Y>|\<rangle\>>>
      is a order isomorphism so that <math|S<rsub|X,x>\<cong\>S<rsub|Y,g<around*|(|x|)>>>
      hence <math|x\<in\>C>. Proving that <math|C> is as section of <math|X>.
    </proof>

    Next we prove that\ 

    <\equation>
      <label|eq 3.31.014>D<text| is a section of >Y
    </equation>

    <\proof>
      Let <math|y\<in\>Y> and take <math|d\<in\>D> such that
      <math|y\<leqslant\><rsub|Y>d>. As <math|d\<in\>D=range<around*|(|F|)>>
      there exist a <math|c\<in\>C> such that <math|F<around*|(|c|)>=d>, so
      <math|S<rsub|X,c>\<cong\>S<rsub|Y,d>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|order properties of the isomorph
      relation>]>>S<rsub|Y,d>\<cong\>S<rsub|X,c>>. So there exist a order
      isomorphism\ 

      <\equation>
        <label|eq 3.32.014>f:S<rsub|Y,d>\<rightarrow\>S<rsub|X,c>
      </equation>

      Now from <math|y\<leqslant\><rsub|D>d> we have by [theorem:
      <reference|order initial segement inclusion>]
      <math|S<rsub|Y,y>\<subseteq\>S<rsub|Y,d>>. Hence by <reference|function
      restriction of a function> we have that\ 

      <\equation>
        <label|eq 3.33.014>f<rsub|\|S<rsub|Y,y>>:S<rsub|Y,y>\<rightarrow\>S<rsub|X,c><text|
        is a function>
      </equation>

      If <math|x\<in\>S<rsub|Y,y>> then <math|x\<less\><rsub|Y>y> so, as
      <math|f> is a order isomorphism, <math|f<rsub|\|S<rsub|Y,y>><around*|(|x|)>=f<around*|(|x|)>\<less\><rsub|X>f<around*|(|y|)>>,
      we have that <math|f<rsub|\|S<rsub|Y,y>><around*|(|x|)>\<in\>S<rsub|Y,f<around*|(|y|)>>>,
      so <math|range<around*|(|f<rsub|\|S<rsub|Y,y>>|)>\<subseteq\>S<rsub|X,f<around*|(|y|)>>>.
      By [theorem: <reference|function range restriction>] it follows that\ 

      <\equation>
        <label|eq 3.34.014>f<rsub|\|S<rsub|Y,y>>:S<rsub|Y,y>\<rightarrow\>S<rsub|X,f<around*|(|y|)>><text|
        is a function>
      </equation>

      As <math|f> is a isomorphism and injective it follows from [theorem:
      <reference|function restricted function properties>] that\ 

      <\equation>
        <label|eq 3.35.014>f<rsub|\|S<rsub|Y,y>>:S<rsub|Y,y>\<rightarrow\>S<rsub|X,f<around*|(|y|)>><text|
        is injective><rsub|>
      </equation>

      If <math|x\<in\>S<rsub|X,f<around*|(|y|)>>> then
      <math|x\<less\><rsub|X>f<around*|(|y|)>>, as by [eq: <reference|eq
      3.32.014>] <math|f<around*|(|y|)>\<in\>S<rsub|X,c>>, we have
      <math|f<around*|(|y|)>\<less\>c>, so that <math|x\<less\><rsub|X>c> or
      <math|x\<in\>S<rsub|X,c>>. As <math|f> is surjective there exists a
      <math|u\<in\>S<rsub|Y,d>> such that <math|f<around*|(|u|)>=x>. As
      <math|u\<in\>S<rsub|Y,d>> we have that <math|u\<less\><rsub|Y>d>.
      Assume now that <math|y\<leqslant\><rsub|Y>u> then, as <math|f> is a
      order isomorphism, <math|f<around*|(|y|)>\<leqslant\><rsub|X>f<around*|(|u|)>=x>,
      which as <math|x\<less\><rsub|X>f<around*|(|y|)>> gives the
      contradiction <math|x\<less\><rsub|X>x>. So we must have that
      <math|\<neg\><around*|(|y\<leqslant\><rsub|Y>u|)>>, which, as
      <math|<around*|\<langle\>|Y,\<leqslant\><rsub|Y>|\<rangle\>>> is well
      ordered, gives by [theorem: <reference|order well order implies
      conditional complete and totally ordering>] that
      <math|u\<less\><rsub|Y>y> or <math|u\<in\>S<rsub|Y,y>>. So for
      <math|x\<in\>S<rsub|X,f<around*|(|y|)>>> there exist a
      <math|u\<in\>S<rsub|Y,y>> such that <math|f<around*|(|u|)>=x>, proving
      that\ 

      <\equation>
        <label|eq 3.36.014>f<rsub|\|S<rsub|Y,y>>:S<rsub|Y,y>\<rightarrow\>S<rsub|X,f<around*|(|y|)>><text|
        is surjective>
      </equation>

      Further if <math|u,v\<in\>S<rsub|Y,y>> is such that
      <math|u\<leqslant\>v> then <math|f<rsub|\|S<rsub|Y,y>><around*|(|u|)>=f<around*|(|u|)>\<leqslant\>f<around*|(|v|)>=f<rsub|\|S<rsub|U,y>><around*|(|v|)>>
      proving that

      <\equation>
        <label|eq 3.37.014>f<rsub|\|S<rsub|Y,y>>:S<rsub|Y,y>\<rightarrow\>S<rsub|X,f<around*|(|y|)>><text|
        is increasing>
      </equation>

      Combining [eq: <reference|eq 3.34.014>], [eq: <reference|eq 3.35.014>],
      [eq: <reference|eq 3.36.014>] and [eq: <reference|eq 3.37.014>] we have
      that

      <\equation*>
        f<rsub|\|S<rsub|Y,y>>:<around*|\<langle\>|S<rsub|Y,y>,\<leqslant\><rsub|>|\<rangle\>>\<rightarrow\><around*|\<langle\>|S<rsub|X,f<around*|(|y|)>>,\<leqslant\><rsub|X>|\<rangle\>><text|
        is a order isomorphism>,
      </equation*>

      hence <math|S<rsub|Y,y>\<cong\>S<rsub|X,f<around*|(|y|)>>>. As
      <math|f<around*|(|y|)>\<in\>S<rsub|X,c>\<subseteq\>X> and
      <math|y\<in\>Y> it follows from the definition of <math|C> that
      <math|f<around*|(|y|)>\<in\>C>, hence by definition of <math|F>
      <math|<around*|(|f<around*|(|y|)>,y|)>\<in\>F> or
      <math|y=F<around*|(|f<around*|(|y|)>|)>\<in\>F<around*|(|C|)>=D>,
      giving <math|y\<in\>D>. Proving that <math|D> is a section of <math|Y>.
    </proof>

    To summarize [eq: <reference|eq 3.21.014.1>], [eq: <reference|eq
    3.25.015>] and [eq: <reference|eq 3.31.014>] we have\ 

    <\equation>
      <label|eq 3.39.015>C\<cong\>D\<wedge\>C<text| is a segment of
      >X\<wedge\>D<text| is a segment of >Y
    </equation>

    Assume now that <math|C> is a initial segment of <math|X> and <math|D> is
    a initial segment of <math|Y> then there exist a <math|r\<in\>X> and a
    <math|s\<in\>Y> such that <math|C=S<rsub|X,r>> and <math|D=S<rsub|Y,s>>.
    By <reference|eq 3.39.015> we have that
    <math|S<rsub|X,r>\<cong\>S<rsub|Y,s>> which by definition of <math|C>
    means that <math|r\<in\>C> or as <math|C=S<rsub|X,r>> that
    <math|r\<less\>r> a contradiction. So we have that\ 

    <\equation>
      <label|eq 3.42.015>\<neg\><around*|(|C<text| is a initial segment of
      <math|X\<wedge\>D<text| is a initial segment of >Y>>|)>
    </equation>

    As <math|C> is a section of <math|X> we have by [theorem:
    <reference|order section and well ordering>] that

    <\equation>
      <label|eq 3.43.015>X=C<text| or >C<text| is a initial segment of >X
    </equation>

    Like wise, as <math|D> is a section of <math|Y> we have by \ [theorem:
    <reference|order section and well ordering>] that

    <\equation>
      <label|eq 3.44.015>Y=D<text| or >D<text| is a initial segment of >Y
    </equation>

    We have taking [eq: <reference|eq 3.43.015>] and [eq: <reference|eq
    3.44.015>] in account that either:\ 

    <\description>
      <item*|<math|X=C\<wedge\>Y=D>>then by [eq: <reference|eq 3.39.015>]\ 

      <\equation*>
        X\<cong\>Y
      </equation*>

      Using theorem [theorem: <reference|order well ordered isomorphic
      property (3)>] and the above we have that\ 

      <\equation*>
        X<text| is not order isomorphic with a sub-class of Y>
      </equation*>

      <\equation*>
        Y<text| is not order isomorphic with a sub-class of X>
      </equation*>

      <item*|<math|X=C\<wedge\>Y\<neq\>D>>then by [eq: <reference|eq
      3.44.015>] we have that <math|D> is a initial segment of <math|Y>,
      which as by [eq: <reference|eq 3.39.015>] <math|X=C\<cong\>D> prove
      that\ 

      <\equation*>
        X<text| is order isomorphic with a initial segment of <math|Y>>
      </equation*>

      If <math|Y> is order isomorphic with a initial segment of <math|X> then
      by [theorem: <reference|order well ordered isomorphism property>] we
      have that <math|X> is not order isomorphic to a subset of <math|Y>
      contradicting <math|X\<cong\>D> and <math|X\<cong\>Y>. So \ 

      <\equation*>
        Y<text| is not >order isomorphic to a initial segment of X
      </equation*>

      <\equation*>
        X<text| is not order isomorphic to >Y
      </equation*>

      <item*|<math|X\<neq\>C\<wedge\>Y=D>>then by [eq: <reference|eq
      3.43.015>] we have that <math|C> is a initial segment of <math|X>,
      which as by [eq: <reference|eq 3.39.015>]
      <math|C\<cong\>D\<Rightarrowlim\><rsub|<text|[theorem: <reference|order
      properties of the isomorph relation>]>>Y=D\<cong\>C> proves that

      <\equation*>
        Y<text| is order isomorphic with a initial segment of <math|X>>
      </equation*>

      If <math|X> is order isomorphic with a initial segment of <math|Y> then
      by [theorem: <reference|order well ordered isomorphism property>] we
      have that <math|Y> is not order isomorphic to a subset of <math|X>
      contradicting <math|Y\<cong\>C> and <math|Y\<cong\>X>. So \ 

      <\equation*>
        X<text| is not >order isomorphic to a initial segment of Y
      </equation*>

      <\equation*>
        X<text| is not order isomorphic to >Y
      </equation*>

      <item*|<math|X\<neq\>C\<wedge\>Y\<neq\>D>>Using [eq: <reference|eq
      3.43.015>] and [eq: <reference|eq 3.44.015>] we have that <math|C> is a
      initial segment of <math|X> and <math|D> is a initial segment of
      <math|Y> which contradicts [eq: <reference|eq 3.42.015>]. Hence this
      case does not apply.
    </description>
  </proof>

  <\corollary>
    <label|order well order every subclass is isomorphic with A or a iitial
    segement>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a
    well ordered class and <math|Y\<subseteq\>X> then we have either (but not
    both):

    <\enumerate>
      <item><math|Y> is order isomorphic with <math|X>

      <item><math|X> is order isomorphic with a initial segment of <math|X>
    </enumerate>
  </corollary>

  <\proof>
    If <math|Y\<subseteq\>X> then <math|<around*|\<langle\>|Y,\<leqslant\><rsub|\|Y>|\<rangle\>>>
    is a well ordered class [see theorem: <reference|order total/well-order
    inclusion>], so using the previous [theorem: <reference|order well
    ordering and isomorphism (2)>] we have either:\ 

    <\enumerate>
      <item><math|Y> is order isomorphic with X

      <item><math|Y> is order isomorphic with a initial segment of <math|X>

      <item><math|X> is order isomorphic with a initial segment of <math|Y>.
      By [theorem: <reference|order well ordered isomorphism property>] we
      may not have that <math|Y> is order isomorphic with a sub-class of
      <math|X>. As by [theorem: <reference|order properties of the isomorph
      relation>] <math|Y\<cong\>Y> and <math|Y> is a sub-class of <math|X> we
      reach a contradiction, so this case never applies.
    </enumerate>
  </proof>

  <section|Axiom of choice>

  The axiom of choice in it's many equivalent forms like

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|Hausdorff<rprime|'>s Maximal
    Principle>|<cell|>>|<row|<cell|>|<cell|Zorn<rprime|'>s
    Lemma>|<cell|>>|<row|<cell|>|<cell|Well-Ordering Theorem>|<cell|>>>>
  </eqnarray*>

  plays a major role in some fundamental theorems about the product of sets,
  the existence of a basis for a vector space, etc.

  <\definition>
    <label|choice P'(A)><index|<math|\<cal-P\><rprime|'><around*|(|A|)>>>Let
    <math|A> be a class then <math|\<cal-P\><rprime|'><around*|(|A|)>> is
    defined as\ 

    <\equation*>
      \<cal-P\><rprime|'><around*|(|A|)>=\<cal-P\><around*|(|A|)>\\<around*|{|\<varnothing\>|}>
    </equation*>

    In other words it is the collection of all non empty sub sets of a set
  </definition>

  It turns out that if <math|A> is a set then
  <math|\<cal-P\><rprime|'><around*|(|A|)>> is also a set.

  <\theorem>
    <label|choice P'(A) is a set>If <math|A> is a set then
    <math|\<cal-P\><rprime|'><around*|(|A|)>> is a set
  </theorem>

  <\proof>
    Using the Axiom of Power [axiom <reference|axiom of power>] we have that
    <math|\<cal-P\><around*|(|A|)>> is a set. As
    <math|\<cal-P\><rprime|'><around*|(|A|)>\<subseteq\>\<cal-P\><around*|(|A|)>>
    [see [theorem: <reference|class intersection, union, inclusion>] it
    follow from the Axiom of Subsets [axiom: <reference|axiom of subsets>]
    that <math|\<cal-P\><rprime|'><around*|(|A|)>> is a set.
  </proof>

  <\definition>
    <label|choice choice function><index|choice function><dueto|Choice
    Function>Let <math|A> be a set then a <with|font-series|bold|choice
    function for <math|A>> is a function <math|f:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A>
    such that <math|\<forall\>B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> we
    have <math|f<around*|(|B|)>\<in\>B>
  </definition>

  So a choice function picks out one element out of each subset of <math|A>
  and the axiom of choice ensures the existence of a choice function for a
  set.

  <\axiom>
    <label|axiom of choice><index|axiom of choice><dueto|Axiom of Choice>If
    <math|A> is a set then there exist a choice function for <math|A>
  </axiom>

  As a application of the axiom of choice we have the following theorem

  <\theorem>
    <label|function surjection and construction of inverse function>If
    <math|f:A\<rightarrow\>B> is a surjective function then there exists a
    injective function <math|g:B\<rightarrow\>A> such that
    <math|f\<circ\>g=Id<rsub|B>>
  </theorem>

  <\proof>
    \ By the axiom of choice there exists a choice function

    <\equation*>
      c:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A<text| such that
      >\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|A|)><text| we have
      >c<around*|(|A|)>\<in\>A
    </equation*>

    If <math|f:A\<rightarrow\>B> is surjective. Then
    <math|\<forall\>y\<in\>B> we have that
    <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>> is a non empty subset of
    <math|A\<Rightarrow\>><math|f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-P\><rprime|'><around*|(|A|)>>.
    Define then the function

    <\equation*>
      g:B\<rightarrow\>Y<text| by >g<around*|(|y|)>=c<around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>
    </equation*>

    Now if <math|y\<in\>Y> then, as <math|c> is a choice function,
    <math|c<around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>
    so that <math|f<around*|(|c<around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>|)>=y>.
    Hence we have that <math|<around*|(|f\<circ\>g|)><around*|(|y|)>=f<around*|(|g<around*|(|y|)>|)>=f<around*|(|c<around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>|)>=y>
    or\ 

    <\equation*>
      f\<circ\>g=Id<rsub|B>
    </equation*>

    If <math|g<around*|(|y|)>=g<around*|(|y<rprime|'>|)>> then we have
    <math|f<around*|(|g<around*|(|y|)>|)>=f<around*|(|g<around*|(|y<rprime|'>|)>|)>\<Rightarrowlim\><rsub|f\<circ\>g=Id<rsub|B>>Id<rsub|B><around*|(|y|)>=Id<rsub|B><around*|(|y<rprime|'>|)>\<Rightarrow\>y=y<rprime|'>>
    proving that\ 

    <\equation*>
      g:B\<rightarrow\>Y is injective
    </equation*>
  </proof>

  The important thing to remember in the above is that the axiom of choice
  ensures the existence of <math|g:B\<rightarrow\>A> but does not give a way
  to construct the function <math|g> itself.

  We have the following equivalent statements of the axiom of choice

  <\theorem>
    <label|choice axiom of choice equivalences (1)>The following are
    equivalent

    <\enumerate>
      <item>The Axiom of Choice\ 

      <item>Let <math|\<cal-A\>> be a set of sets such that:

      <\enumerate>
        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|A\<neq\>\<varnothing\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<neq\>B> we
        have <math|A<big|cap>B=\<varnothing\>>
      </enumerate>

      \ then there exist a set <math|C> called the
      <with|font-series|bold|choice set for <math|\<cal-A\>>> such that\ 

      <\enumerate>
        <item><math|C\<subseteq\><big|cup>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|A<big|cap>C\<neq\>\<varnothing\>> and if
        <math|y,y<rprime|'>\<in\>A<big|cap>C> then <math|y=y<rprime|'>>
      </enumerate>

      \ In other words <math|C> consists of exactly one element from each
      <math|A\<in\>\<cal-A\>>.

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
      is a family of non empty sets [<math|\<forall\>i\<in\>I> we have
      <math|A<rsub|i>\<neq\>\<varnothing\>>] where <math|I,\<cal-A\>> are
      sets then there exists a function <math|f:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      such that <math|\<forall\>i\<in\>I> we have
      <math|f<around*|(|i|)>\<in\>A<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Take <math|U=<big|cup>\<cal-A\>> [see
      definition: <reference|class union>]. As <math|\<cal-A\>> is a set we
      have by the Axiom of Union [axiom: <reference|axiom of union>] that
      <math|U> is a set. So we can apply the Axiom of Choice [axiom:
      <reference|axiom of choice>] to get a function\ 

      <\equation*>
        c:\<cal-P\><rprime|'><around*|(|U|)>\<rightarrow\>U<text| such that
        >\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|U|)> <text| we have
        >c<around*|(|A|)>\<in\>A
      </equation*>

      If <math|A\<in\>\<cal-A\>> then <math|A\<neq\>\<varnothing\>> and using
      [theorem: <reference|class general intersection>] we have
      <math|A\<subseteq\>U> proving that <math|A\<in\>\<cal-P\><rprime|'><around*|(|U|)>>
      hence

      <\equation*>
        \<cal-A\>\<subseteq\>\<cal-P\><rprime|'><around*|(|U|)>
      </equation*>

      so we can take the <with|font-series|bold|image> of <math|\<cal-A\>> by
      <math|c>\ 

      <\equation*>
        C=c<around*|(|\<cal-A\>|)>
      </equation*>

      We have now:\ 

      <\enumerate-alpha>
        <item>If <math|x\<in\>C> then <math|\<exists\>A\<in\>\<cal-A\>> such
        that <math|x=<around*|(|c|)><around*|(|A|)>>, which as <math|c> is a
        choice function means that <math|x\<in\>A> hence, by [theorem:
        <reference|class general intersection>], we have that
        <math|x\<in\><big|cup>\<cal-A\>> proving that

        <\equation*>
          C\<subseteq\><big|cup>\<cal-A\>
        </equation*>

        <item>Let <math|A\<in\>\<cal-A\>> then
        <math|<around*|(|c|)><around*|(|A|)>\<in\>c<around*|(|\<cal-A\>|)>=C>
        and, as <math|c> is a choice function,
        <math|<around*|(|c|)><around*|(|A|)>\<in\>A> [note:
        <math|<around*|(|c|)><around*|(|A|)>> is function application and
        <math|c<around*|(|\<cal-A\>|)>> is the image of <math|\<cal-A\>> by
        <math|c>]. Hence\ 

        <\equation*>
          A<big|cap>C\<neq\>\<varnothing\>
        </equation*>

        If <math|y,y<rprime|'>\<in\>A<big|cap>C> then as
        <math|y,y<rprime|'>\<in\>C=c<around*|(|\<cal-A\>|)>> there exist
        <math|Y,Y<rprime|'>\<in\>\<cal-A\>> such that
        <math|y=<around*|(|c|)><around*|(|Y|)>> and
        <math|y<rprime|'>=<around*|(|c|)><around*|(|Y<rprime|'>|)>>, as
        <math|c> is a choice function we have
        <math|y=<around*|(|c|)><around*|(|Y|)>\<in\>Y> and
        <math|y<rprime|'>=<around*|(|c|)><around*|(|Y<rprime|'>|)>\<in\>Y<rprime|'>>.
        Assume that <math|Y\<neq\>Y<rprime|'>> then we have the contradiction
        <math|y,y<rprime|'>\<in\>Y<big|cap>Y<rprime|'>=\<varnothing\>,so we
        have that >Y=Y' but then <math|y=c<around*|(|Y|)>=c<around*|(|Y<rprime|'>|)>=y<rprime|'>>
        proving that <math|y=y<rprime|'>.> So\ 

        <\equation*>
          y,y<rprime|'>\<in\>A<big|cap>C\<Rightarrow\>y=y<rprime|'>
        </equation*>
      </enumerate-alpha>

      so (2.a) and (2.b) is proved.

      <item*|<math|2\<Rightarrow\>1>>Let <math|A> be a set and let
      <math|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> then
      <math|\<varnothing\>\<neq\>B\<subseteq\>A>. Define now

      <\equation>
        P<rsub|B>=<around*|{|<around*|(|B,x|)>\|x\<in\>B|}>
      </equation>

      If <math|<around*|(|B,x|)>\<in\>P<rsub|B>> then as
      <math|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> and
      <math|x\<in\>B\<subseteq\>A> we have
      <math|<around*|(|B,x|)>\<in\>\<cal-P\><rprime|'><around*|(|A|)>\<times\>A>
      or

      <\equation>
        <label|eq 3.46.016>P<rsub|B>\<subseteq\>\<cal-P\><rprime|'><around*|(|A|)>\<times\>A<text|
        or <math|P<rsub|B>\<in\>\<cal-P\><around*|(|\<cal-P\><rprime|'><around*|(|A|)>\<times\>A|)>>>
      </equation>

      As <math|B\<neq\>\<varnothing\>> we have that <math|\<exists\>b\<in\>B>
      so that <math|<around*|(|B,p|)>\<in\>P<rsub|B>> proving that

      <\equation>
        <label|eq 3.47.016>\<forall\>B\<in\>\<cal-P\><rprime|'><around*|(|A|)><text|
        we have >P<rsub|B>\<neq\>\<varnothing\>
      </equation>

      If <math|x\<in\>P<rsub|B><big|cap>P<rsub|B<rprime|'>>> then
      <math|\<exists\>b\<in\>B> and <math|b<rprime|'>\<in\>B> such that
      <math|<around*|(|B,b|)>=x=<around*|(|B<rprime|'>,b<rprime|'>|)>>
      proving that <math|B=B<rprime|'>>, hence
      <math|P<rsub|B>=P<rsub|B<rprime|'>>>. From this it follows that

      <\equation>
        <label|eq 3.48.016>\<forall\>B,B<rprime|'>\<in\>\<cal-P\><rprime|'><around*|(|A|)><text|
        we have >If P<rsub|B>\<neq\>P<rsub|B<rprime|'>><text| then
        <math|P<rsub|B><big|cap>P<rsub|B<rprime|'>>=\<varnothing\>>>
      </equation>

      Define

      <\equation>
        <label|eq 3.49.016>\<cal-A\>=<around*|{|P<rsub|B>\|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>|}>\<subseteq\>\<cal-P\><around*|(|\<cal-P\><rprime|'><around*|(|A|)>\<times\>A|)>
      </equation>

      As <math|A> is a set we have by [theorem: <reference|choice P'(A) is a
      set>] that <math|\<cal-P\><rprime|'><around*|(|A|)>> is a set, using
      [theorem: <reference|set A*B>] it follow that
      <math|\<cal-P\><rprime|'><around*|(|A|)>\<times\>A> is a set, applying
      \ the Axiom of Power sets [axiom: <reference|axiom of power>] proves
      that <math|\<cal-P\><around*|(|\<cal-P\><rprime|'><around*|(|A|)>\<times\>A|)>>
      is a set. As by [eq: <reference|eq 3.49.016>] we have that
      <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|\<cal-P\><rprime|'><around*|(|A|)>\<times\>A|)>>
      we can use the Axiom of Sub Sets [axiom: <reference|axiom of subsets>]
      giving\ 

      <\equation>
        <label|eq 3.50.016>\<cal-A\> is a set
      </equation>

      So the conditions for the hypothesis (2) are satisfied by [eq:
      <reference|eq 3.50.016>],[eq: <reference|eq 3.47.016>] and [eq:
      <reference|eq 3.48.016>] hence there exist a choice set <math|C> for
      <math|\<cal-A\>> such that:\ 

      <\equation>
        <label|eq 3.51.016>C\<subseteq\><big|cup>\<cal-A\><text| and
        >\<forall\>B\<in\>\<cal-A\><text| we have
        <math|B<big|cap>C\<neq\>\<varnothing\>> and if
        <math|y,y<rprime|'>\<in\>B<big|cap>C<text| then >y=y<rprime|'>>>
      </equation>

      If <math|x\<in\>C> then <math|\<exists\>y\<in\>\<cal-A\>> such that
      <math|x\<in\>y>. As <math|y\<in\>\<cal-A\>> there exists a
      <math|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> such that
      <math|y=P<rsub|B>=<around*|{|<around*|(|B,x|)>\|x\<in\>B|}>>, hence
      there exist a <math|b\<in\>B> such that
      <math|x=<around*|(|B,b|)>\<in\>P<rsub|B>\<subseteq\>\<cal-P\><rprime|'><around*|(|A|)>\<times\>A>
      [see eq: <reference|eq 3.46.016>] proving that\ 

      <\equation>
        <label|eq 3.52.016>C\<subseteq\>\<cal-P\><rprime|'><around*|(|A|)>\<times\>A
      </equation>

      If <math|<around*|(|B,y|)>,<around*|(|B,y<rprime|'>|)>\<in\>C> then
      <math|<around*|(|B,y|)>,<around*|(|B,y<rprime|'>|)>\<in\>P<rsub|B><big|cap>C\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 3.51.016>>><around*|(|B,y|)>=<around*|(|B,y<rprime|'>|)>>
      proving that <math|y=y<rprime|'>>, so

      <\equation>
        <label|eq 3.53.016><text|If ><around*|(|B,y|)>,<around*|(|B,y<rprime|'>|)>\<in\>C<text|
        then >y=y<rprime|'>
      </equation>

      Let <math|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> then
      <math|P<rsub|B>\<in\>\<cal-A\>> so that by [eq: <reference|eq
      3.51.016>] <math|P<rsub|B><big|cap>C\<neq\>\<varnothing\>> hence there
      exist a <math|y\<in\>B> such that <math|<around*|(|B,y|)>\<in\>C>
      proving that\ 

      <\equation>
        <label|eq 3.54.016>\<cal-P\><rprime|'><around*|(|A|)>\<subseteq\>dom<around*|(|C|)>
      </equation>

      From [eq: <reference|eq 3.52.016>], [eq: <reference|eq 3.53.016>] and
      [eq: <reference|eq 3.54.016>] it follows that

      <\equation>
        <label|eq 3.55.016>C:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A<text|
        is a function>
      </equation>

      Let <math|B\<in\>\<cal-P\><rprime|'><around*|(|A|)>> then
      <math|<around*|(|B,C<around*|(|B|)>|)>\<in\>C\<subseteq\><big|cup>\<cal-A\>>
      so that <math|\<exists\>B<rprime|'>\<in\>\<cal-P\><rprime|'><around*|(|A|)>>
      such that <math|<around*|(|B,C<around*|(|B|)>|)>\<in\>P<rsub|B<rprime|'>>>
      hence <math|B=B<rprime|'>> and <math|C<around*|(|B|)>\<in\>B<rprime|'>=B>
      proving that <math|\<forall\>B\<in\>\<cal-P\><rprime|'><around*|(|A|)><text|
      we have >C<around*|(|B|)>\<in\>B>, so that\ 

      <\equation*>
        C:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A<text| is a choice
        function>
      </equation*>

      proving (1)

      <item*|<math|1\<Rightarrow\>3>>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
      be a family of non empty \ sets where <math|I,\<cal-A\>> are sets. Then
      using [theorem: <reference|family union condition set>] it follows that
      <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is a set. Using the Axiom of
      Choice [axiom: <reference|axiom of choice>] there exist a choice
      function\ 

      <\equation*>
        c:\<cal-P\><rprime|'><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
        where >\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><text|
        >c<around*|(|A|)>\<in\>A
      </equation*>

      Let <math|A:I\<rightarrow\>\<cal-A\>> be the function that defines
      <math|<around*|{|A<rsub|i>|)><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> then
      <math|\<forall\>i\<in\>I> we have that
      <math|A<around*|(|i|)>=A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      [see: theorem: <reference|family properties (1)>] or
      <math|A<around*|(|i|)>\<in\>\<cal-P\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>,
      further as <math|A<rsub|i>\<neq\>\<varnothing\>> we have that
      <math|A<rsub|i>\<in\>\<cal-P\><rprime|'><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>,
      hence <math|range<around*|(|A|)>\<subseteq\>\<cal-P\><rprime|'><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>.
      Using [theorem: <reference|function range restriction>] it follows that
      <math|A:I\<rightarrow\>\<cal-P\><rprime|'><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>>
      is also a function. If we take <math|f=c\<circ\>A> then\ 

      <\equation*>
        f:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| is a
        function and >\<forall\>i\<in\>I<text| we have
        >f<around*|(|i|)>=c<around*|(|A<around*|(|i|)>|)>=c<around*|(|A<rsub|i>|)>\<in\>A<rsub|i><rsub|>
      </equation*>

      proving (3).

      <item*|<math|3\<Rightarrow\>1>>Let <math|A> be a set and define the
      family <math|<around*|{|B<rsub|C>|}><rsub|C\<in\>\<cal-P\><rprime|'>*A>\<subseteq\>\<cal-P\><rprime|'><around*|(|A|)>>
      by <math|B=Id<rsub|\<cal-P\><rprime|'><around*|(|A|)>>:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>\<cal-P\><rprime|'><around*|(|A|)>>
      [see example: <reference|function identity function>]. For every
      <math|C\<in\>\<cal-P\><rprime|'><around*|(|A|)>> we have
      <math|B<rsub|C>=Id<around*|(|C|)>=C\<neq\>\<varnothing\>>, further as
      <math|A> is a set we have by [theorem: <reference|choice P'(A) is a
      set>] that <math|\<cal-P\><rprime|'><around*|(|A|)>> is a set. So the
      conditions for (3) are satisfied and by (3) there exist a function

      <\equation>
        <label|eq 3.56.016>f:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\><big|cup><rsub|C\<in\>\<cal-P\><rprime|'><around*|(|A|)>>B<rsub|C><text|
        such that <math|\<forall\>C\<in\>\<cal-P\><rprime|'><around*|(|A|)><text|
        we have <math|f<around*|(|C|)>\<in\>B<rsub|C>=Id<around*|(|C|)>=C>>>>
      </equation>

      Let <math|x\<in\><big|cup><rsub|C\<in\>\<cal-P\><rprime|'><around*|(|A|)>>B<rsub|C>>
      then <math|\<exists\>C\<in\>\<cal-P\><rprime|'><around*|(|A|)>> such
      that <math|x\<in\>B<rsub|C>=Id<rsub|\<cal-P\><rprime|'><around*|(|A|)>><around*|(|C|)>=C\<subseteq\>A\<Rightarrow\>x\<in\>A>.
      So <math|<big|cup><rsub|C\<in\>\<cal-P\><rprime|'><around*|(|A|)>>B<rsub|C>\<subseteq\>A>.
      Using then [theorem: <reference|function extend target>] we have\ 

      <\equation*>
        f:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A<text| is a
        function with >\<forall\>C\<in\>\<cal-P\><rprime|'><around*|(|A|)><text|
        we have <math|f<around*|(|C|)>\<in\>C>>
      </equation*>

      which proves that <math|f:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A>
      is a choice function for <math|A>, proving (1).
    </description>
  </proof>

  As a application of the Axiom of Choice we have the following theorems
  about the product of a family of sets. First we prove that the projection
  function is surjective.

  <\theorem>
    <label|product projection is surjective>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> be a
    family of <with|font-series|bold|non empty sets> \ where
    <math|I,\<cal-A\>> are sets then <math|\<forall\>i\<in\>I> we have that
    the projection function

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>A<rsub|j>\<rightarrow\>A<rsub|i><text|
      defined by >\<pi\><rsub|j><around*|(|x|)>=x<around*|(|j|)><text| [see
      definition: ><reference|product projection function><text|]>
    </equation*>

    is a surjection.
  </theorem>

  <\proof>
    Let <math|i\<in\>I> and take <math|x\<in\>A<rsub|i>>. Consider the family
    <math|<around*|{|A<rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>>> [see
    definition: <reference|family definition (2)>] then
    <math|\<forall\>j\<in\>I\\<around*|{|i|}>> we have
    <math|A<rsub|j>\<neq\>\<varnothing\>>. So we can use [theorem:
    <reference|choice axiom of choice equivalences (1)> (3)] to find a
    function

    <\equation*>
      f:I\\<around*|{|i|}>\<rightarrow\><big|cup><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j><text|
      such that <math|\<forall\>j\<in\>I\\<around*|{|i|}><text| we have
      <math|f<around*|(|j|)>\<in\>A<rsub|j>>>>>
    </equation*>

    By the definition of the product of a family of sets we have that\ 

    <\equation*>
      f\<in\><big|prod><rsub|j\<in\>I\\<around*|{|i|}>>A<rsub|j>
    </equation*>

    Define now <math|g:I\<rightarrow\><big|cup><rsub|j\<in\>I>A<rsub|j>> by
    <math|g<around*|(|j|)>=<choice|<tformat|<table|<row|<cell|x<text| if
    >j=i>>|<row|<cell|f<around*|(|j|)><text| if
    >j\<in\>I\\<around*|{|i|}>>>>>>> then by [theorem: <reference|product
    extension>] we have that <math|g\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>>.
    Finally by <math|\<pi\><rsub|i><around*|(|g|)>=g<around*|(|i|)>=x>
    proving surjectivity.
  </proof>

  Second we prove that the product of a family of sets is not empty if and
  only if every set in the family is non empty.

  <\theorem>
    <label|product product is not empty>Let
    <math|<around*|{|A|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> be a family of
    sets where <math|I,\<cal-A\>> are sets then we have\ 

    <\equation*>
      <big|prod><rsub|i\<in\>I>A<rsub|i>\<neq\>\<varnothing\>\<Leftrightarrow\>\<forall\>i\<in\>I<text|
      we have >A<rsub|i>\<neq\>\<varnothing\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by contradiction, so assume
      that <math|\<exists\>i\<in\>I> such that
      <math|A<rsub|i>=\<varnothing\>>. As
      <math|<big|prod><rsub|i\<in\>I>A<rsub|i>\<neq\>\<varnothing\>> there
      exists a <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> such that
      <math|\<forall\>j\<in\>I> <math|x<rsub|j>\<in\>A<rsub|j>>, in
      particular \ we would have <math|x<rsub|i>\<in\>A<rsub|i>>
      contradicting <math|A<rsub|i>=\<varnothing\>>. So we must have that
      <math|\<forall\>i\<in\>I> we have <math|A<rsub|i>\<neq\>\<varnothing\>>.

      <item*|<math|\<Leftarrow\>>>If <math|\<forall\>i\<in\>I> we have
      <math|A<rsub|i>\<neq\>\<varnothing\>> we have by [theorem:
      <reference|choice axiom of choice equivalences (1)> (3)] that there
      exist a function

      <\equation*>
        f:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| such that
        >\<forall\>i\<in\>I<text| we have
        >f<around*|(|i|)>\<in\>\<Alpha\><rsub|i>
      </equation*>

      which by definition of the product means that
      <math|f\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> proving that\ 

      <\equation*>
        <big|prod><rsub|i\<in\>I>A<rsub|i>\<neq\>\<varnothing\>
      </equation*>
    </description>
  </proof>

  We can rephrase the above theorem in another way.

  <\corollary>
    <label|product product is empty>Let <math|<around*|{|A|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    be a family of sets where <math|I,\<cal-A\>> are sets then we have\ 

    <\equation*>
      <big|prod><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>\<Leftrightarrow\>\<exists\>i\<in\>I<text|
      such that >A<rsub|i>=\<varnothing\>
    </equation*>
  </corollary>

  <\proof>
    \ We proceed by contradiction to prove this

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that <math|\<forall\>i\<in\>I> we
      have that <math|A<rsub|i>\<neq\>\<varnothing\>> then by [theorem:
      <reference|product product is not empty>]
      <math|<big|prod><rsub|i\<in\>I>A<rsub|i>\<neq\>\<varnothing\>>
      contradicting <math|<big|prod><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>.
      So the assumption is false or <math|\<exists\>i\<in\>I> such that
      <math|A<rsub|i>=\<varnothing\>>.

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|><math|<big|prod><rsub|i\<in\>I>A<rsub|i>\<neq\>0> then by
      [theorem: <reference|product product is not empty>] we have
      <math|\<forall\>i\<in\>I> that <math|A<rsub|i>\<neq\>\<varnothing\>>
      contradicting <math|\<exists\>i\<in\>I> such that <math|A<rsub|i>=0>.
      Hence we must have <math|<big|prod><rsub|i\<in\>I>A<rsub|i>=\<varnothing\>>.
    </description>
  </proof>

  The Axiom of Choice has also import consequences for partial ordered sets.\ 

  <\theorem>
    <label|choice existence of successor>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered <with|font-series|bold|set> such that:

    <\enumerate>
      <item><math|X> has a least element <math|p>

      <item>Every chain [see definition:<reference|order chain>] of <math|X>
      has a supremum
    </enumerate>

    then there is a element <math|x\<in\>X> which has no immediate successor
    [see definition: <reference|order immediate successor>]
  </theorem>

  <\proof>
    We prove this by contradiction, so assume that <math|\<forall\>x\<in\>X>
    there exist a immediate successor. Given <math|x\<in\>X> define
    <math|T<rsub|x>=<around*|{|y\|y<text| is a immediate successor of >x|}>>
    then <math|T<rsub|x>\<neq\>\<varnothing\>> so that
    <math|T<rsub|x>\<in\>\<cal-P\><rprime|'><around*|(|X|)>>. Using the Axiom
    of Choice [axiom: <reference|axiom of choice>] there exist a choice
    function

    <\equation>
      <label|eq 3.57.018>c:\<cal-P\><rprime|'><around*|(|A|)>\<rightarrow\>A<text|
      such that <math|\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|X|)>> we
      have >c<around*|(|A|)>\<in\>A
    </equation>

    As <math|\<forall\>x\<in\>X <text| we have
    >T<rsub|x>\<in\>\<cal-P\><rprime|'><around*|(|X|)>> so that
    <math|c<around*|(|T<rsub|x>|)>> is well defined we can use [proposition:
    <reference|function simple definition>] to define the function

    <\equation*>
      succ:X\<rightarrow\>X<text| by >succ<around*|(|x|)>=c<around*|(|T<rsub|x>|)>.
    </equation*>

    If <math|x\<in\>X> then <math|succ<around*|(|x|)>=c<around*|(|T<rsub|x>|)>\<in\>T<rsub|x>>
    so that <math|succ<around*|(|x|)>> is a immediate successor of <math|x>,
    to summarize

    <\equation>
      <label|eq 3.58.018>succ:X\<rightarrow\>X<text| is a function such that
      >\<forall\>x\<in\>X<text| >succ<around*|(|x|)><text| is a immediate
      successor of >x
    </equation>

    Before we can reach the contradiction we need to have some definitions
    and sub lemmas.

    <\definition>
      <label|choice lemma p-sequence><math|A\<subseteq\>X> is a
      <with|font-series|bold|p-sequence> iff\ 

      <\enumerate>
        <item><math|p\<in\>A>

        <item>If <math|x\<in\>A<text| then >succ<around*|(|x|)>\<in\>A>

        <item>If <math|C\<subseteq\>A> is a chain then
        <math|sup<around*|(|C|)>\<in\>A> [note that by hypothesis (2)
        <math|sup<around*|(|C|)>> exist]
      </enumerate>
    </definition>

    <\note>
      <math|X> is a p-sequence so there exist p-sequences.
    </note>

    <\proof>
      First <math|p\<in\>X> by the hypothesis (1), second if <math|x\<in\>X>
      then by [eq: <reference|eq 3.58.018>] <math|succ<around*|(|X|)>\<in\>X>
      and finally if <math|C> is chain then by definition of the supremum
      <math|sup<around*|(|C|)>\<in\>X>
    </proof>

    <\lemma>
      <label|choice intersection of p-sewuences>Every intersection of a set
      of p-sequences is a p-sequence
    </lemma>

    <\proof>
      Let <math|\<cal-A\>> be a set of p-sequences then\ 

      <\enumerate>
        <item><math|\<forall\>A\<in\>\<cal-A\>> <math|A> is a p-sequence
        hence <math|p\<in\>A> so that <math|p\<in\><big|cap>\<cal-A\>>

        <item>If <math|x\<in\><big|cap>\<cal-A\>> then
        <math|\<forall\>A\<in\>\<cal-A\>> we have <math|p\<in\>A> which as
        <math|A> is a p-sequence gives that <math|succ<around*|(|x|)>\<in\>A>
        hence <math|succ<around*|(|x|)>\<in\><big|cap>\<cal-A\>>

        <item>If <math|C\<subseteq\><big|cap>\<cal-A\>> is a chain then
        <math|\<forall\>A\<in\>\<cal-A\>> we have <math|C\<subseteq\>A> and
        as <math|A> is a p-sequence we have that
        <math|sup<around*|(|C|)>\<in\>A> so that
        <math|sup<around*|(|A|)>\<in\><big|cap>\<cal-A\>>
      </enumerate>

      so by definition of a p-sequence we have that\ 

      <\equation*>
        <big|cap>\<cal-A\><text| is a p-sequence>
      </equation*>
    </proof>

    From the above lemma [lemma: <reference|choice intersection of
    p-sewuences>] we have that <math|<big|cap><around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
    is a p-sequence>|}>> is a p-sequence and by definition
    <math|p\<in\><big|cap><around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
    is a p-sequence>|}>>. Further if <math|A> is a p-sequence then
    <math|<big|cap><around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text| is a
    p-sequence>|}>\<subseteq\>A>. Summarized

    <\equation>
      <label|eq 3.59.018>P=<big|cap><around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|B<text|
      is a p-sequence >|}><text| is a p-sequence>\<wedge\>p\<in\>P\<wedge\><text|>If
      A<text| is a p-sequence>\<Rightarrow\>P\<subseteq\>A
    </equation>

    <\definition>
      A element <math|x\<in\>P> is <with|font-series|bold|select >if <math|x>
      is comparable with every element in <math|P>.\ 
    </definition>

    <\lemma>
      <label|choice lemma property of select elements>If <math|x\<in\>P> is
      select then <math|\<forall\>y\<in\>P> with <math|y\<less\>x> have
      <math|succ<around*|(|y|)>\<leqslant\>x>
    </lemma>

    <\proof>
      If <math|y\<in\>P> with <math|y\<less\>x> then as <math|P> is a
      p-sequence we have by [definition: <reference|choice lemma p-sequence>
      (2)] that <math|succ<around*|(|y|)>\<in\>P>. Now as <math|x> is select
      we have that <math|x,succ<around*|(|y|)>> are comparable, hence by
      [theorem: <reference|order comparable property>] we have either
      <math|succ<around*|(|y|)>\<leqslant\>x> or
      <math|x\<less\>succ<around*|(|y|)>>. If
      <math|x\<less\>succ<around*|(|y|)>> then from <math|y\<less\>x> it
      follows that <math|y\<less\>x\<wedge\>x\<less\>succ<around*|(|y|)>>
      contradicting the fact that by [eq: <reference|eq 3.58.018>]
      <math|succ<around*|(|y|)>> is the immediate successor of <math|y>.
      Hence we must have that\ 

      <\equation*>
        succ<around*|(|y|)>\<leqslant\>x
      </equation*>
    </proof>

    <\lemma>
      <label|choice lemma p-sequence generation>If <math|x> is select then
      <math|A<rsub|x>=<around*|{|y\<in\>P\|y\<leqslant\>x\<vee\>succ<around*|(|x|)>\<leqslant\>y|}>>
      is a p-sequence
    </lemma>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|p> is a least element of <math|X> we have that
        <math|p\<leqslant\>x> so that <math|p\<in\>A<rsub|x>>

        <item>Let <math|y\<in\>A<rsub|x>> Then we have either:

        <\description>
          <item*|<math|y=x>>Then <math|succ<around*|(|x|)>=succ<around*|(|y|)>\<Rightarrow\>succ<around*|(|x|)>\<leqslant\>succ<around*|(|y|)>>
          so that <math|succ<around*|(|y|)>\<in\>A<rsub|x>>.

          <item*|<math|y\<less\>x>>Then as
          <math|y\<in\>A<rsub|x>\<subseteq\>P> we have by the previous lemma
          [lemma: <reference|choice lemma property of select elements>] that
          <math|succ<around*|(|y|)>\<less\>x\<Rightarrow\>succ<around*|(|y|)>\<leqslant\>x>
          so that <math|succ<around*|(|y|)>\<in\>A<rsub|x>>.

          <item*|<math|succ<around*|(|x|)>\<leqslant\>y>>As
          <math|succ<around*|(|y|)>> is the immediate successor of <math|y>
          we have <math|y\<less\>succ<around*|(|y|)>> so that
          <math|succ<around*|(|x|)>\<less\>succ<around*|(|y|)>\<Rightarrow\>succ<around*|(|x|)>\<leqslant\>succ<around*|(|y|)>>
          proving that <math|succ<around*|(|y|)>\<in\>A<rsub|x>>.
        </description>

        so in all cases we have\ 

        <\equation*>
          succ<around*|(|y|)>\<in\>A<rsub|x>
        </equation*>

        <item>If <math|C\<subseteq\>A<rsub|x>> is a chain then we have the
        following excluding cases:

        <\description>
          <item*|<math|\<exists\>y\<in\>C<text| with
          >succ<around*|(|x|)>\<leqslant\>y>>Then as
          <math|y\<leqslant\>sup<around*|(|C|)>> we have that
          <math|succ<around*|(|x|)>\<leqslant\>sup<around*|(|C|)>> so that
          <math|sup<around*|(|C|)>\<in\>A<rsub|x>.>

          <item*|<math|\<forall\>y\<in\>C<text| we have
          >\<neg\><around*|(|succ<around*|(|x|)>\<leqslant\>y|)>>>Now
          <math|\<forall\>y\<in\>C> as <math|y\<in\>C\<subseteq\>A<rsub|x>>
          we have either <math|y\<leqslant\>x> or
          <math|succ<around*|(|y|)>\<leqslant\>y>. As
          <math|\<neg\><around*|(|succ<around*|(|x|)>\<leqslant\>y|)>> is
          true we must have <math|y\<leqslant\>x> and thus <math|x> is a
          upper bound of <math|C>. So by definition of the supremum as the
          least upper bound of <math|C> we must have that
          <math|sup<around*|(|C|)>\<leqslant\>x>, hence
          <math|sup<around*|(|C|)>\<in\>A<rsub|x>>
        </description>

        So in all cases we have

        <\equation*>
          sup<around*|(|C|)>\<in\>A<rsub|x>
        </equation*>
      </enumerate>

      From (1),(2) and (3) it follows then that\ 

      <\equation*>
        A<rsub|x><text| is a p-sequence>
      </equation*>
    </proof>

    <\corollary>
      <label|choice lemma properties of select>If <math|x> is select then
      <math|\<forall\>y\<in\>P> we have <math|y\<leqslant\>x> or
      <math|succ<around*|(|x|)>\<leqslant\>y>
    </corollary>

    <\proof>
      As <math|A<rsub|x>> is a p-sequence by the previous lemma [lemma:
      <reference|choice lemma p-sequence generation>] we have by [eq:
      <reference|eq 3.59.018>] that <math|P\<subseteq\>A<rsub|x>> and as by
      definition of <math|A<rsub|x>> <math|A<rsub|x>\<subseteq\>P> it follows
      that\ 

      <\equation*>
        P=A<rsub|x>
      </equation*>
    </proof>

    <\lemma>
      <label|choice lemma select elements froms a p-sewuence>The set
      <math|<around*|{|x\<in\>X\|x<text| is select>|}>> is \ a p-sequence.
    </lemma>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|p> is a least element of <math|X> we have
        <math|\<forall\>x\<in\>P> that <math|p\<leqslant\>x> so it is
        comparable with every element of <math|p>, hence <math|p> is select,
        so \ <math|p\<in\><around*|{|x\<in\>X\|s<text| is select>|}>>.

        <item>If <math|x\<in\><around*|{|x\<in\>X\|x<text| is select>|}>>
        then <math|x> is select and by [corollary: <reference|choice lemma
        properties of select>] we have <math|\<forall\>y\<in\>P> either:

        <\description>
          <item*|<math|y\<leqslant\>x>>Then as <math|succ<around*|(|x|)>> is
          the immediate successor of <math|x> we have
          <math|x\<less\>succ<around*|(|x|)>> so that
          <math|y\<less\>succ<around*|(|x|)>\<Rightarrow\>y\<leqslant\>succ<around*|(|x|)>>
          proving that <math|succ<around*|(|x|)>> is comparable with <math|y>

          <item*|<math|succ<around*|(|x|)>\<leqslant\>y>>Then
          <math|succ<around*|(|x|)>> is comparable with <math|y>
        </description>

        from the above it follows that <math|succ<around*|(|x|)>> is
        comparable with every <math|y\<in\>P> hence

        <\equation*>
          succ<around*|(|x|)>\<in\><around*|{|x\<in\>X\|x<text| is
          selected>|}>
        </equation*>

        <item>Let <math|C\<subseteq\><around*|{|x\<in\>X\|x<text| is
        select>|}>> be a chain. Then as <math|C\<subseteq\>X> we have the
        hypothesis (3) that <math|sup<around*|(|C|)>> exist. Then
        <math|\<forall\>y\<in\>P> we have the following possibilities for
        <math|C>:

        <\description>
          <item*|<math|\<exists\>x\<in\>C<text| with >y\<leqslant\>x>>Then
          <math|x\<leqslant\>sup<around*|(|C|)>> so that
          <math|y\<leqslant\>sup*<around*|(|C|)>> so that
          <math|sup<around*|(|C|)>> is comparable with <math|y>

          <item*|<math|\<forall\>x\<in\>C> we have
          <math|\<neg\><around*|(|y\<leqslant\>x|)>>>Then given
          <math|x\<in\>C> we have as <math|C\<subseteq\><around*|{|x\<in\>X\|x<text|
          is select>|}>> that <math|x> is select. By [corollary:
          <reference|choice lemma properties of select>] we have either
          <math|y\<leqslant\>x> which is not allowed or
          <math|succ<around*|(|x|)>\<leqslant\>y>. As
          <math|succ<around*|(|x|)>> is a immediate successor of <math|x> we
          have <math|x\<less\>succ<around*|(|x|)>> so that <math|x\<less\>y>
          proving that <math|y> is a upper bound of <math|C>. Hence
          <math|sup<around*|(|C|)>\<leqslant\>y> proving that
          <math|sup<around*|(|C|)>> is comparable with <math|y>
        </description>

        So in all cases we have that <math|sup<around*|(|C|)>> is comparable
        with <math|y> proving that <math|sup<around*|(|C|)>> is select and
        thus that <math|sup<around*|(|C|)>\<in\><around*|{|x\<in\>X\|x<text|
        is select>|}>>
      </enumerate>

      From (1),(2),(3) it follows then that
      <math|<around*|{|x\<in\>X\|x<text| is select>|}>> is a p-sequence.
    </proof>

    Now for the last corollary in the proof.

    <\corollary>
      <math|P> is a chain
    </corollary>

    <\proof>
      As by the previous lemma [lemma: <reference|choice lemma select
      elements froms a p-sewuence>] <math|<around*|{|x\<in\>X\|x<text| is
      select>|}>> is a p-sequence it follows from [eq: <reference|eq
      3.59.018>] that <math|P\<subseteq\><around*|{|x\<in\>X\|x<text| is
      select>|}>>. So if <math|x,y\<in\>P> then <math|x> is select and as
      <math|y\<in\>P> comparable with <math|y>, proving that <math|P> is a
      chain.
    </proof>

    We are now finally able to reach a contradiction and prove the theorem.
    As <math|P> is a chain we have by hypothesis (2) that
    <math|sup<around*|(|P|)>> exist. Now as <math|P> is a p-sequence [see eq:
    <reference|eq 3.59.018>] we have by [definition: <reference|choice lemma
    p-sequence> (3)] that <math|sup<around*|(|P|)>\<in\>P> and by
    [definition: <reference|choice lemma p-sequence> (2)] that
    <math|succ<around*|(|sup<around*|(|P|)>|)>\<in\>P > so that
    <math|succ<around*|(|sup<around*|(|P|)>|)>\<leqslant\>sup<around*|(|P|)>>.
    As <math|><math|succ<around*|(|sup<around*|(|P|)>|)>> is the immediate
    successor of <math|sup<around*|(|P|)>> we have that
    <math|sup<around*|(|P|)>\<less\>succ<around*|(|sup<around*|(|P|)>|)>>.
    Hence <math|sup<around*|(|P|)>\<less\>sup<around*|(|P|)>> which is a
    contradiction.
  </proof>

  This was a long proof but it will be used in the following important
  theorem.

  <\definition>
    <label|choice Hausdorff maximal principle><index|Hausdorff's maximality>A
    partial ordered set <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    is <with|font-series|bold|Hausdorff maximal> if there exist a chain
    <math|C> such that if <math|D> is a chain with <math|C\<subseteq\>D> then
    <math|C=D>. In other words <math|C> is maximal when using the order
    relation defined by <math|\<subseteq\>>.
  </definition>

  We show now that as a consequence of the Axiom of choice every partial
  ordered set is Hausdorff maximal.

  <\theorem>
    <dueto|Hausdorff's Maximal Theorem><label|choice Hausdorff's Maximal
    Principle>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a
    partial ordered set then it is Hausdorff maximal. In other words there
    exists a chain <math|C> such that if <math|D> is a chain such that
    <math|C\<subseteq\>D> then <math|C=D>.\ 
  </theorem>

  <\proof>
    Define the set of all chain of <math|X>

    <\equation*>
      \<cal-C\>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text| is a
      chain in ><around*|\<langle\>|X,\<leqslant\>|\<rangle\>>|}>
    </equation*>

    Using the fact <math|\<cal-P\><around*|(|X|)>> is a set by the Axiom of
    Power Sets [axiom: <reference|axiom of power>] we have by the Axiom of
    Subsets [axiom: <reference|axiom of subsets>] and the fact that
    <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> it follows that\ 

    <\equation>
      <label|eq 3.61.018>\<cal-C\><text| is a set>
    </equation>

    Using [example: <reference|order inclusion is a order>] we have that\ 

    <\equation*>
      <around*|\<langle\>|\<cal-C\>,\<preccurlyeq\>|\<rangle\>><text| where
      >\<preccurlyeq\>=<around*|{|<around*|(|x,y|)>\<in\>\<cal-C\>\<times\>\<cal-C\>\|x\<subseteq\>y|}><text|
      is a partial ordered set>
    </equation*>

    As <math|\<forall\>A\<in\>\<cal-C\>> we have
    <math|\<varnothing\>\<subseteq\>A\<Rightarrow\>\<varnothing\>\<preccurlyeq\>A>
    and <math|\<varnothing\>> is a chain [see example: <reference|order empty
    set is a chain>] in <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>><text|>
    it follows that <text|>>

    <\equation>
      <label|eq 3.62.018>\<cal-C\><text| has a least element [using
      <math|\<preccurlyeq\>>]>
    </equation>

    Let <math|\<cal-D\>> a chain in <math|<around*|\<langle\>|\<cal-C\>,\<preccurlyeq\>|\<rangle\>>>
    then if <math|x,y\<in\><big|cup>\<cal-D\>> there exists
    <math|A,B\<in\>\<cal-D\>\<subseteq\>\<cal-C\>> such that
    <math|x\<in\>A\<wedge\>y\<in\>B> where <math|A,B> are chains in
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>. \ As
    <math|\<cal-D\>> is a chain we have either:

    <\description>
      <item*|<math|A\<subseteq\>B>>Then <math|x,y\<in\>B> which as <math|B>
      is a chain [using <math|\<leqslant\>>] means that <math|x,y> are
      comparable [using the order <math|\<leqslant\>>]

      <item*|<math|B\<subseteq\>A>>Then <math|x,y\<in\>A> which as <math|A>
      is a chain [using <math|\<leqslant\>>] \ means that <math|x,y> are
      comparable [using the order <math|\<leqslant\>>]
    </description>

    From the above it follows that <math|<big|cup>\<cal-D\>> is a chain in
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> hence
    <math|<big|cup>\<cal-D\>\<in\>\<cal-C\>>. Hence by [example:
    <reference|order example inclusion order and sup, inf>] it follows that
    <math|<big|cup>\<cal-D\>=sup<around*|(|\<cal-D\>|)>> [using
    <math|\<preccurlyeq\>>]. So we have proved that

    <\equation>
      <label|eq 3.63.018><text|Every chain of
      ><around*|\<langle\>|\<cal-C\>,\<preccurlyeq\>|\<rangle\>><text| has a
      supremum>
    </equation>

    Now the conditions for [theorem: <reference|choice existence of
    successor>] are satisfied by [eq: <reference|eq 3.61.018>], [eq:
    <reference|eq 3.62.018>] and [eq: <reference|eq 3.63.018>] so we have\ 

    <\equation>
      <label|eq 3.64.018>\<exists\>C\<in\>\<cal-C\><text| [so <math|C<text|
      is a chain in <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>]>>
      which has no immediate successor> <around*|[|using\<preccurlyeq\>|]>\ 
    </equation>

    Let now <math|D> be a chain in <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    [so that <math|D\<in\>\<cal-C\>>] such that <math|C\<subseteq\>D>. Take
    <math|d\<in\>D> and assume that <math|d\<nin\>C > then
    <math|C\<subset\>C<big|cup><around*|{|d|}>> [as
    <math|C<big|cup><around*|{|d|}>\<nsubseteq\>C\<Rightarrow\>C\<neq\>C<big|cup><around*|{|d|}>>]
    so that <math|C\<prec\>C<big|cup><around*|{|d|}>>. As <math|C> has no
    immediate successor [using <math|\<prec\>>] there must be a
    <math|H\<in\>\<cal-C\>> such that <math|C\<prec\>H\<wedge\>H\<prec\>C<big|cup><around*|{|d|}>>
    or <math|C\<subset\>H\<wedge\>H\<subset\>C<big|cup><around*|{|d|}>>. As
    <math|C\<subset\>H> there exists a <math|h\<in\>H> such that
    <math|h\<nin\>C>, but then as <math|H\<subset\>C<big|cup><around*|{|d|}>>
    we must have <math|h\<in\><around*|{|d|}>> or <math|h=d>, so
    <math|d\<in\>H>. Now as <math|H\<subset\>C<big|cup><around*|{|d|}>> there
    exists a <math|y\<in\>C<big|cup><around*|{|d|}>> such that
    <math|y\<nin\>H>, we can not have <math|y=d> [as <math|d\<in\>H>] so we
    must have <math|y\<in\>C> but then as <math|C\<subset\>H> we have
    <math|y\<in\>H> contradicting <math|y\<in\>H>. So we must have
    <math|d\<in\>C>. As <math|d\<in\>D> was chosen arbitrary we have that
    <math|D\<subseteq\>C> or <math|C=D> which proves maximality.
  </proof>

  We state now Zorn's lemma but not prove it yet, it will be show to be
  directly dependent on the Hausdorff maximal principle, which in turn
  depends on the Axiom of Choice. So if we accept the Axiom of Choice [which
  we do as it is a expressed as a Axiom] then Zorn's lemma applies.

  <\lemma>
    <label|choice Zorn's lemma><index|Zorn's Lemma><dueto|Zorn's Lemma>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered set such that <math|>every chain has a upper bound then <math|X>
    has a maximal element.
  </lemma>

  We prove now that the Hausdorff Maximal principle implies Zorn's lemma.\ 

  <\theorem>
    <label|choice Hausdorff's implies Zorn's>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be Hausdorff
    Maximal then Zorn's lemma follows.
  </theorem>

  <\proof>
    Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered set such that every chain in <math|X> has a upper bound. As
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is Hausdorff
    maximal [definition: <reference|choice Hausdorff maximal principle>]
    there exist a chain <math|C> such that for every chain <math|D> with
    <math|C\<subseteq\>D> we have <math|C=D>. As <math|C> is a chain it has
    by the hypothesis a upper bound <math|u> for <math|C>. Assume now that
    <math|u> is not a maximal element of <math|X>, then by the definition of
    a maximal element [definition: <reference|order maximal minimal element>]
    there exist a <math|x\<in\>X> with <math|u\<leqslant\>x> and
    <math|u\<neq\>x> so that <math|u\<less\>x>. If <math|x\<in\>C> then as
    <math|u> is a upper bound of <math|C> we have <math|x\<leqslant\>u> so
    that <math|u\<less\>u> a contradiction. So we must have that
    <math|x\<nin\>C>. Consider now <math|r,s\<in\>C<big|cup><around*|{|x|}>>
    then we have to consider the following possibilities:

    <\description>
      <item*|<math|r=x\<wedge\>s=x>>Then by reflectivity we have
      <math|r\<leqslant\>s>, so <math|r,s> are comparable.

      <item*|<math|r=x\<wedge\>s\<neq\>x>>Then <math|s\<in\>C> so that
      <math|s\<leqslant\>u>, which as <math|u\<leqslant\>x> proves that
      <math|s\<leqslant\>x\<Rightarrowlim\><rsub|r=x>s\<leqslant\>r>, so
      <math|r,s> are comparable.

      <item*|<math|r\<neq\>x\<wedge\>s=x>>Then <math|r\<in\>C> so that
      <math|r\<leqslant\>u>, which as <math|u\<leqslant\>x> proves that
      <math|r\<leqslant\>x\<Rightarrowlim\><rsub|s=x>r\<leqslant\>s>, so
      <math|r,s> are comparable.

      <item*|<math|r\<neq\>x\<wedge\>s\<neq\>x>>Then <math|r,s\<in\>C>, which
      as <math|C> is a chain proves that <math|r,s> are comparable
    </description>

    From the above it follows that <math|C<big|cup><around*|{|x|}>> is a
    chain such that <math|C\<subseteq\>C<big|cup><around*|{|x|}>> giving by
    maximality of <math|C> that <math|C=C<big|cup><around*|{|x|}>>
    contradicting <math|x\<nin\>C>. Hence the assumption that <math|u> is not
    a maximal element of <math|X> is false. So <math|u> is a maximal element
    of <math|X>.
  </proof>

  We show now that Zorn's lemma implies well ordering.

  <\theorem>
    <label|choice Zorn implies welll ordering>Zorn's lemma implies that given
    a set <math|X> there exist a order relation <math|\<leqslant\>> on
    <math|X> such that <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
    is well ordered [see <reference|order well-rodered class>]\ 
  </theorem>

  <\proof>
    Just like the proof of [theorem: <reference|choice existence of
    successor>] this proof will consist of many sub lemma's.\ 

    Let <math|X> be a set and define the class

    <\equation*>
      \<cal-A\>=<around*|{|<around*|(|B,R|)>\|B\<in\>\<cal-P\><around*|(|A|)>\<wedge\>R<text|
      a order relation on <math|B> so that
      ><around*|\<langle\>|B,R|\<rangle\>><text| is well ordered>|}>
    </equation*>

    Define now <math|\<preccurlyeq\>\<in\>\<cal-A\>\<times\>\<cal-A\>> by\ 

    <\equation*>
      \<preccurlyeq\>=<around*|{|<around*|(|<around*|(|B,R|)>,<around*|(|B<rprime|'>,R<rprime|'>|)>|)>\|B\<subseteq\>B<rprime|'>\<wedge\>R\<subseteq\>R<rprime|'>\<wedge\><text|If
      >x\<in\>B\<wedge\><text|>y\<in\>B<rprime|'>\\B<text| then
      ><around*|(|x,y|)>\<in\>R<rprime|'>|}>
    </equation*>

    then we have that\ 

    <\equation>
      <label|eq 3.65.018><around*|\<langle\>|\<cal-A\>,\<preccurlyeq\>|\<rangle\>><text|
      is a order relation>
    </equation>

    <\proof>
      We have to prove reflexivity, anti-symmetry and transitivity:

      <\description>
        <item*|reflectivity>If <math|<around*|(|B,R|)>\<in\>\<cal-A\>> then
        we have\ 

        <\enumerate>
          <item><math|B\<subseteq\>B>

          <item><math|R\<subseteq\>R>

          <item>If <math|x\<in\>B\<wedge\>y\<in\>B\\B\<equallim\><rsub|<text|[theorem:
          <reference|class universal and empotyset
          properties>]>>\<varnothing\>> which can not occur so that
          <math|<around*|(|x,y|)>\<in\>R> is satisfied vacuously
        </enumerate>

        proving that <math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B,R|)>>

        <item*|<math|>anti-symmetry>If <math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>\<wedge\><around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>
        then <math|B\<subseteq\>B<rprime|'>\<wedge\>R\<subseteq\>R<rprime|'>\<wedge\>B<rprime|'>\<subseteq\>B\<wedge\>R<rprime|'>\<subseteq\>R>
        proving that <math|B=B<rprime|'>> and <math|R=R<rprime|'>> so that
        <math|<around*|(|B,R|)>=<around*|(|B<rprime|'>,R<rprime|'>|)>>

        <item*|transitivity>Let <math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>>
        and <math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B<rprime|''>,R<rprime|''>|)>>
        then we have\ 

        <\enumerate>
          <item><math|B\<subseteq\>B<rprime|'>\<wedge\>B<rprime|'>\<subseteq\>B<rprime|''>\<Rightarrow\>B\<subseteq\>B<rprime|''>>

          <item><math|R\<subseteq\>R<rprime|'>\<wedge\>R<rprime|'>\<subseteq\>R<rprime|''>\<Rightarrow\>R\<subseteq\>R<rprime|''>>

          <item>If <math|x\<in\>B\<wedge\>y\<in\>B<rprime|''>\\B> we have for
          <math|y> to consider the following possibilities

          <\description>
            <item*|<math|y\<in\>B<rprime|'>>>Then
            <math|y\<in\>B<rprime|'>\\B> so that
            <math|<around*|(|x,y|)>\<in\>R<rprime|'>\<Rightarrowlim\><rsub|R<rprime|'>\<subseteq\>R<rprime|''>><around*|(|x,y|)>\<in\>R<rprime|''>>

            <item*|<math|y\<nin\>B<rprime|'>>>Then
            <math|y\<in\>B<rprime|''>\\B<rprime|'>> so that
            <math|<around*|(|x,y|)>\<in\>R<rprime|''>>
          </description>

          so in all cases we have <math|<around*|(|x,y|)>\<in\>R<rprime|''>>.
        </enumerate>

        proving <math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|''>,R<rprime|''>|)>>.
      </description>
    </proof>

    We now have the following sub lemma:

    <\lemma>
      <label|choice lemma well ordering lemma (1)>If
      <math|\<cal-C\>\<subseteq\>\<cal-A\>> is a chain in
      <math|<around*|\<langle\>|\<cal-A\>,\<preccurlyeq\>|\<rangle\>>> then
      if\ 

      <\equation*>
        B<rsub|\<cal-C\>>=<big|cup><around*|{|B\|\<exists\>R<text| such that
        ><around*|(|B,R|)>\<in\>\<cal-C\>|}><text|>
      </equation*>

      <\equation*>
        R<rsub|\<cal-C\>>=<big|cup><around*|{|R\|\<exists\>B<text| such that
        ><around*|(|B,R|)>\<in\>\<cal-C\>|}>
      </equation*>

      then\ 

      <\equation*>
        <around*|(|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>><rsub|>|)>\<in\>\<cal-A\>
      </equation*>
    </lemma>

    <\proof>
      \ First note that if <math|<around*|(|B,R|)>\<in\>\<cal-C\>> then

      <\equation*>
        B\<in\><around*|{|B\|\<exists\>R<text| such that
        ><around*|(|B,R|)>\<in\>\<cal-C\>|}>
      </equation*>

      and

      <\equation*>
        R\<in\><around*|{|R\|\<exists\>B<text| such that
        ><around*|(|B,R|)>\<in\>\<cal-C\>|}>
      </equation*>

      or\ 

      <\equation>
        <label|eq 3.66.019>\<forall\><around*|(|B,R|)>\<in\>\<cal-C\><text|
        we have >B\<subseteq\>B<rsub|\<cal-C\>>\<wedge\>R\<subseteq\>R<rsub|\<cal-C\>>
      </equation>

      <\enumerate>
        <item>If <math|x\<in\>B<rsub|\<cal-C\>>> then
        <math|\<exists\><around*|(|B,R|)>\<in\>\<cal-C\>> such that
        <math|x\<in\>B>, as <math|\<cal-C\>\<subseteq\>\<cal-A\>> we have
        <math|<around*|(|B,R|)>\<in\>\<cal-C\>>, so that
        <math|B\<in\>\<cal-P\><around*|(|A|)>>, hence <math|B\<subseteq\>A>,
        proving that <math|x\<in\>A>. In other words
        <math|B<rsub|\<cal-C\>>\<subseteq\>A> or
        <math|B\<in\>\<cal-P\><around*|(|A|)>>.

        <item>We must prove that <math|R<rsub|\<cal-C\>>> is a a order
        relation on <math|B<rsub|\<cal-C\>>>:

        <\description>
          <item*|reflectivity>If <math|x\<in\>B<rsub|\<cal-C\>>> then
          <math|\<exists\><around*|(|B,R|)>\<in\>\<cal-C\>> such that
          <math|x\<in\>B>, as <math|R> is a order relation we have that
          <math|<around*|(|x,x|)>\<in\>R> so that by [eq: <reference|eq
          3.66.019>] <math|<around*|(|x,x|)>\<in\>R<rsub|\<cal-C\>>>

          <item*|anti-symmetry>If <math|<around*|(|x,y|)>\<in\>R<rsub|\<cal-C\>>\<wedge\><around*|(|y,x|)>\<in\>R<rsub|\<cal-C\>>>
          then <math|\<exists\><around*|(|B,R|)>,<around*|(|B<rprime|'>,R<rprime|'>|)>\<in\>\<cal-C\>>
          such that <math|<around*|(|x,y|)>\<in\>R> and
          <math|<around*|(|y,x|)>\<in\>R<rprime|'>>. As <math|\<cal-C\>> is a
          chain we have either:

          <\description>
            <item*|<math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>>>Then
            <math|R\<subseteq\>R<rprime|'>> so that
            <math|<around*|(|x,y|)>\<in\>R<rprime|'>\<wedge\><around*|(|y,x|)>\<in\>R<rprime|'>>,
            which as <math|R<rprime|'>> is a order relation proves that
            <math|x=y>.

            <item*|<math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>>Then
            <math|R<rprime|'>\<subseteq\>R> so that
            <math|<around*|(|x,y|)>\<in\>R\<wedge\><around*|(|y,x|)>\<in\>R>,
            which as <math|R> is a order relation proves that <math|x=y>.
          </description>

          <item*|transitivity>If <math|<around*|(|x,y|)>\<in\>R<rsub|\<cal-C\>>\<wedge\><around*|(|y,z|)>\<in\>R<rsub|\<cal-C\>>>
          then <math|\<exists\><around*|(|B,R|)>,<around*|(|B<rprime|'>,R<rprime|'>|)>\<in\>\<cal-C\>>
          such that <math|<around*|(|x,y|)>\<in\>R> and
          <math|<around*|(|y,x|)>\<in\>R<rprime|'>>. As <math|\<cal-C\>> is a
          chain we have either:

          <\description>
            <item*|<math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>>>Then
            <math|R\<subseteq\>R<rprime|'>> so that
            <math|<around*|(|x,y|)>\<in\>R<rprime|'>\<wedge\><around*|(|y,z|)>\<in\>R<rprime|'>>,
            which as <math|R<rprime|'>> is a order relation proves that
            <math|<around*|(|x,z|)>\<in\>R<rprime|'>>, hence
            <math|<around*|(|x,z|)>\<in\>R<rsub|\<cal-C\>>> [see eq:
            <reference|eq 3.66.019>].

            <item*|<math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>>Then
            <math|R<rprime|'>\<subseteq\>R> so that
            <math|<around*|(|x,y|)>\<in\>R\<wedge\><around*|(|y,z|)>\<in\>R>,
            which as <math|R> is a order relation proves that
            <math|<around*|(|x,z|)>\<in\>R>, hence
            <math|<around*|(|x,z|)>\<in\>R<rsub|\<cal-C\>>> [see eq:
            <reference|eq 3.66.019>].
          </description>
        </description>

        <item>Next we have to prove well ordering of
        <math|<around*|\<langle\>|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>>|\<rangle\>>>.
        Let <math|D\<subseteq\>B<rsub|\<cal-C\>>> and
        <math|D\<neq\>\<varnothing\>>. Then there exist a <math|x\<in\>D> so
        that <math|x\<in\>B<rsub|\<cal-C\>>>, hence there exist a
        <math|<around*|(|B,R|)>\<in\>\<cal-C\>> such that <math|x\<in\>B> or
        <math|x\<in\>D<big|cap>B> proving that
        <math|D<big|cap>B\<neq\>\<varnothing\>>. As
        <math|\<cal-C\>\<subseteq\>\<cal-A\>> we have by the definition of
        <math|\<cal-A\>> that <math|<around*|\<langle\>|B,R|\<rangle\>>> is
        well ordered, hence there exist a least element <math|b\<in\>B>. So\ 

        <\equation>
          <label|eq 3.66.018>\<forall\>y\<in\>B<text| we have
          ><around*|(|b,y|)>\<in\>R
        </equation>

        We prove now that\ 

        <\equation*>
          b<text| is a least element of >D
        </equation*>

        <\proof>
          If <math|x\<in\>D> then <math|\<exists\><around*|(|B<rprime|'>,R<rprime|'>|)>>
          such that <math|x\<in\>B<rprime|'>>. For <math|x> and <math|B> we
          the following possible cases:

          <\description>
            <item*|<math|x\<in\>B>>Then by [eq: <reference|eq 3.66.018>] we
            have that <math|<around*|(|b,x|)>\<in\>R> so that by [eq:
            <reference|eq 3.66.019>] \ <math|<around*|(|b,x|)>\<in\>R<rsub|\<cal-C\>>>.\ 

            <item*|<math|x\<nin\>B>>Then <math|x\<in\>B<rprime|'>\\B\<wedge\>b\<in\>B>.
            As <math|\<cal-C\>> is a chain we have the following cases:

            <\description>
              <item*|<math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>>>Then
              by definition of <math|\<preccurlyeq\>> we have
              <math|<around*|(|b,x|)>\<in\>R<rprime|'>> so that by [eq:
              <reference|eq 3.66.019>] \ <math|<around*|(|b,x|)>\<in\>R<rsub|\<cal-C\>>>

              <item*|<math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>>Then
              <math|B<rprime|'>\<subseteq\>B> and as
              <math|x\<in\>B<rprime|'>> we have <math|x\<in\>B> contradicting
              <math|x\<nin\>B>. So this case never occurs.
            </description>
          </description>

          So in all cases that apply we have
          <math|<around*|(|b,x|)>\<in\>R<rsub|\<cal-C\>>> proving that
          <math|b> is a least element of <math|D>.
        </proof>

        As we have proved that every non empty <math|D\<subseteq\>B<rsub|C>>
        has a least element [using the order <math|R<rsub|\<cal-C\>>> it
        follows that <math|<around*|\<langle\>|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>>|\<rangle\>>>
        is well ordered.
      </enumerate>

      From (1),(2) and (3) it follows that\ 

      <\equation*>
        <around*|(|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>>|)>\<in\>\<cal-A\>
      </equation*>
    </proof>

    <\lemma>
      <label|choice lemma upper bound of chain>If <math|\<cal-C\>> is a chain
      in <math|<around*|\<langle\>|\<cal-A\>,\<preccurlyeq\>|\<rangle\>>>
      then <math|<around*|(|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>>|)>> is a
      upper bound of <math|\<cal-C\>>
    </lemma>

    <\proof>
      Let <math|<around*|(|B,R|)>\<in\>\<cal-C\>> then

      <\enumerate>
        <item><math|B\<subseteq\>B<rsub|\<cal-C\>>> [see eq: <reference|eq
        3.66.019>]

        <item><math|R\<subseteq\>R<rsub|\<cal-C\>>> [see eq: <reference|eq
        3.66.019>]

        <item>Let <math|x\<in\>B> and <math|y\<in\>B<rsub|\<cal-C\>>\\B> then
        <math|\<exists\><around*|(|B<rprime|'>,R<rprime|'>|)>\<in\>\<cal-C\>>
        such that <math|y\<in\>B<rprime|'>> or as
        <math|y\<in\>B<rsub|\<cal-C\>>\\B> that

        <\equation*>
          y\<in\>B<rprime|'>\\B
        </equation*>

        As <math|\<cal-C\>> is a chain we have either
        <math|<around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>>
        or <math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>.
        If <math|<around*|(|B<rprime|'>,R<rprime|'>|)>\<preccurlyeq\><around*|(|B,R|)>>
        then <math|B<rprime|'>\<subseteq\>B>, as <math|y\<in\>B<rprime|'>> we
        would have <math|y\<in\>B> contradiction
        <math|y\<in\>B<rsub|\<cal-C\>>\\B>. So we have

        <\equation*>
          <around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rprime|'>,R<rprime|'>|)>
        </equation*>

        As <math|x\<in\>B> and <math|y\<in\>B<rprime|'>\\B> we have by
        definition of <math|\<preccurlyeq\>> and the above that
        <math|<around*|(|x,y|)>\<in\>R<rprime|'>> which as
        <math|R<rprime|'>\<subseteq\>R<rsub|C>> [see eq: <reference|eq
        3.66.019>] proves that <math|<around*|(|x,y|)>\<in\>R<rsub|\<cal-C\>>>
      </enumerate>

      So by the definition of <math|\<preccurlyeq\>> we have by (1),(2) and
      (3) that\ 

      <\equation*>
        <around*|(|B,R|)>\<preccurlyeq\><around*|(|B<rsub|\<cal-C\>>,R<rsub|\<cal-C\>>|)>
      </equation*>
    </proof>

    Using Zorn's [lemma: <reference|choice Zorn's lemma>] together with the
    above lemma [lemma: <reference|choice lemma upper bound of chain>] we
    have

    <\equation>
      <label|eq 3.68.019>\<exists\><around*|(|B<rsub|m>,R<rsub|m>|)>\<in\>\<cal-A\><text|
      such that ><around*|(|B<rsub|m>,R<rsub|m>|)><text| is a maximum element
      of <math|\<cal-A\>>>
    </equation>

    We prove now by contradiction that

    <\equation*>
      B<rsub|m>=X
    </equation*>

    <\proof>
      Assume that <math|X\<neq\>B<rsub|m>>. Then as
      <math|B<rsub|m>\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>B<rsub|m>\<subseteq\>X>
      there exist a

      <\equation*>
        x\<in\>X\\B<rsub|m>\<Rightarrow\>x\<nin\>B<rsub|m>.
      </equation*>

      Define

      <\equation>
        <label|eq 3.69.019>R<rsup|\<ast\>>=R<rsub|m><big|cup><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}><big|cup><around*|{|<around*|(|x,x|)>|}>
      </equation>

      Then if <math|<around*|(|r,s|)>\<in\>R<rsub|m><big|cap><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>>
      we have as <math|R<rsub|m>\<subseteq\>B<rsub|m>\<times\>B<rsub|m>> that
      <math|s\<in\>B<rsub|m>\<wedge\>s=x\<nin\>B<rsub|m>> a contradiction, if
      <math|<around*|(|r,s|)>\<in\>R<rsub|m><big|cap><around*|{|<around*|(|x,x|)>|}>>
      then <math|r\<in\>B<rsub|m>\<wedge\>r=x\<nin\>B<rsub|m>> a
      contradiction and finally if <math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}><big|cap><around*|{|<around*|(|x,x|)>|}>>
      then <math|r\<in\>B<rsub|m>\<wedge\>r=x\<nin\>B<rsub|m>> a
      contradiction. So we have\ 

      <\equation>
        <label|eq 3.70.019>R<rsub|m><big|cap><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>=\<varnothing\>\<wedge\>R<rsub|m><big|cap><around*|{|<around*|(|x,x|)>|}>=\<varnothing\>\<wedge\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}><big|cap><around*|{|<around*|(|x,x|)>|}>=\<varnothing\>
      </equation>

      Further if <math|*<around*|(|x,r|)>\<in\>R<rsup|\<star\>>> then we have
      either <math|<around*|(|x,r|)>\<in\>R<rsub|m>\<Rightarrow\>x\<in\>B<rsub|m>>
      contradicting <math|x\<nin\>B<rsub|m>>,,
      <math|<around*|(|x,r|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>\<Rightarrow\>x\<in\>B<rsub|m><text|
      contradicting >x\<nin\>B<rsub|m>> or
      <math|<around*|(|x,r|)>\<in\><around*|{|<around*|(|x,x|)>|}>\<Rightarrow\>r=x>.
      To summarize we have\ 

      <\equation>
        <label|eq 3.71.019><text|If ><around*|(|x,r|)>\<in\>R<rsup|\<ast\>><text|
        then >r=x
      </equation>

      We prove now that <math|<around*|\<langle\>|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|\<rangle\>><text|>>
      is well ordered.

      <\proof>
        First we have:\ 

        <\description>
          <item*|reflexivity>If <math|r\<in\>B<rsub|m><big|cup><around*|{|x|}>>
          then we have either:

          <\description>
            <item*|<math|r\<in\>B<rsub|m>>>Then as
            <math|<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>> is a
            partial order we have <math|<around*|(|r,r|)>\<in\>R<rsub|m>\<subseteq\>R<rsup|\<ast\>>>.

            <item*|<math|r\<nin\>B<rsub|m>>>Then
            <math|r\<in\><around*|{|x|}>> so that <math|r=x> hence
            <math|<around*|(|r,r|)>=<around*|(|x,x|)>\<in\><around*|{|<around*|(|x,x|)>|}>\<subseteq\>R<rsup|\<ast\>>>
          </description>

          proving that <math|<around*|(|r,r|)>\<in\>R<rsup|\<ast\>>>.

          <item*|anti-symmetry>If <math|<around*|(|r,s|)>\<in\>R<rsup|\<ast\>>>
          and <math|<around*|(|s,r|)>\<in\>R<rsup|\<ast\>>> then we have by
          [eq: <reference|eq 3.69.019>] for <math|<around*|(|r,s|)>> either:

          <\description>
            <item*|<math|<around*|(|r,s|)>\<in\>R<rsub|m>>>Then as
            <math|R<rsub|m>\<subseteq\>B<rsub|m>\<times\>B<rsub|m>> we have
            <math|r,s\<in\>B<rsub|m>> so that <math|r\<neq\>x\<neq\>s> so
            that <math|<around*|(|s,r|)>\<in\>R<rsub|m>> [if
            <math|<around*|(|s,r|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B|}><big|cup><around*|{|<around*|(|x,x|)>|}>>
            then <math|r=x> contradicting <math|r\<neq\>x>], which as
            <math|<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>> is a
            partial order gives that <math|r=s>.

            \ <item*|<math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>>>Then
            <math|s=x> so that <math|<around*|(|x,r|)>=<around*|(|s,r|)>\<in\>R<rsup|\<ast\>>\<Rightarrowlim\><rsub|<text|[eq:
            <reference|eq 3.71.019>]>>r=x=s> hence <math|s=r>.

            <item*|<math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|x,x|)>|}>>>Then
            <math|r=x=s\<Rightarrow\>r=s>.
          </description>

          proving <math|r=s>

          <item*|transitivity>If <math|<around*|(|r,s|)>\<in\>R<rsup|\<ast\>>\<wedge\><around*|(|s,t|)>\<in\>R<rsup|\<ast\>>>
          then we have by [eq: <reference|eq 3.69.019>] that:

          <\description>
            <item*|<math|<around*|(|r,s|)>\<in\>R<rsub|m><rsup|>>>We have the
            following case for <math|<around*|(|s,t|)>>:

            <\description>
              <item*|<math|<around*|(|s,t|)>\<in\>R<rsub|m>>>Then as
              <math|<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>> is a
              partial ordered we have <math|<around*|(|r,t|)>\<in\>R<rsub|m>\<subseteq\>R<rsup|\<ast\>>>.

              <item*|<math|<around*|(|s,t|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>>>Then
              <math|t=x> and <math|r\<in\>B<rsub|m>> so that
              <math|<around*|(|r,t|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>\<subseteq\>R<rsup|\<ast\>>>.

              <item*|<math|<around*|(|s,t|)>\<in\><around*|{|<around*|(|x,x|)>|}>>>Then
              <math|t=x> and <math|r\<in\>B<rsub|m>> so that
              <math|<around*|(|r,t|)>\<in\><around*|{|<around*|(|b,x|)>\|x\<in\>B<rsub|m>|}>\<subseteq\>R<rsup|\<ast\>>>.
            </description>

            <item*|<math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>>>Then
            <math|s=x> so that <math|<around*|(|s,t|)>=<around*|(|x,t|)>\<in\>R<rsup|\<ast\>>\<Rightarrowlim\><rsub|<text|[eq:
            <reference|eq 3.71.019>]>>t=x>. As <math|r\<in\>B<rsub|m>> we
            have <math|<around*|(|r,t|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>\<subseteq\>R<rsup|\<ast\>>>.

            <item*|<math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|x,x|)>|}>>>Then
            <math|r=x\<wedge\>t=x> so that
            <math|<around*|(|x,t|)>=<around*|(|s,t|)>\<in\>R<rsup|\<ast\>>\<Rightarrowlim\><rsub|<text|[eq:
            <reference|eq 3.71.019>]>>t=x> hence
            <math|<around*|(|r,t|)>=<around*|(|x,x|)>\<in\><around*|{|<around*|(|x,x|)>|}>\<subseteq\>R<rsup|\<star\>>.>
          </description>

          proving <math|*<around*|(|r,t|)>\<in\>R<rsup|\<ast\>>>.
        </description>

        Hence\ 

        <\equation*>
          <around*|\<langle\>|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|\<rangle\>><text|
          is partial ordered >
        </equation*>

        If <math|\<varnothing\>\<neq\>C\<subseteq\>B<rsub|m><big|cup><around*|{|x|}>>
        is non empty then we have for <math|C<big|cap>B<rsub|m>> the
        following possibilities:

        <\description>
          <item*|<math|C<big|cap>B<rsub|m>\<neq\>\<varnothing\>>>Then as
          <math|\<varnothing\>\<neq\>C<big|cap>B<rsub|m>\<subseteq\>B<rsub|m>>
          and <math|<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>> is
          well ordered [see definition of <math|\<cal-A\>>] there exist a
          least element <math|l\<in\>C<big|cap>B<rsub|m>> so

          <\equation>
            <label|eq 3.72.019>\<forall\>r\<in\>C<big|cap>B<rsub|m><text| we
            have ><around*|(|l,r|)>\<in\>R<rsub|m>
          </equation>

          Now if <math|r\<in\>C> we have either:

          <\description>
            <item*|<math|r\<in\>B<rsub|m>>>then
            <math|r\<in\>C<big|cap>B<rsub|m>> so that by the above [eq:
            <reference|eq 3.72.019>] <math|<around*|(|l,r|)>\<in\>R<rsub|m>\<subseteq\>R<rsup|\<ast\>>>

            <item*|<math|r\<nin\>B<rsub|m>>>then as
            <math|C\<subseteq\>B<rsub|m><big|cup><around*|{|x|}>> we have
            <math|r=x> so <math|<around*|(|l,r|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}><big|cup><around*|{|<around*|(|x,x|)>|}>\<subseteq\>R<rsup|\<ast\>>>
          </description>

          proving that <math|<around*|(|l,r|)>\<in\>R<rsup|\<ast\>>>. Hence\ 

          <\equation*>
            C<text| has a least element[>using
            <around*|\<langle\>|B<big|cup><around*|{|x|}>,R<rsup|\<ast\>>|]>
          </equation*>

          <item*|<math|C<big|cap>B<rsub|m>=\<varnothing\>>>Then
          <math|C=<around*|{|x|}>> so that <math|\<forall\>r\<in\>C> we have
          <math|r=x> so that <math|<around*|(|r,x|)>=<around*|(|x,x|)>\<in\><around*|{|<around*|(|x,x|)>|}>\<subseteq\>R<rsup|\<ast\>>>
          proving that <math|x> is a least element of <math|C>.
        </description>

        So in all cases we have that <math|C> has a least element, hence

        <\equation*>
          <around*|\<langle\>|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|\<rangle\>><text|
          is well ordered>
        </equation*>
      </proof>

      Now as <math|B<rsub|m><big|cup><around*|{|x|}>\<subseteq\>X>, we have
      by the definition of <math|\<cal-A\>> and the above that\ 

      <\equation*>
        <around*|(|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|)>\<in\>\<cal-A\>
      </equation*>

      Next we have:\ 

      <\enumerate>
        <item><math|B<rsub|m>\<subseteq\>B<rsub|m><big|cup><around*|{|x|}>>

        <item><math|R<rsub|m>\<subseteq\>R<rsup|\<ast\>>>

        <item>If <math|r\<in\>B<rsub|m>> and
        <math|s\<in\><around*|(|B<rsub|m><big|cup><around*|{|x|}>|)>\\B<rsub|m>>
        then <math|s=x> so that <math|<around*|(|r,s|)>=<around*|(|r,x|)>\<in\><around*|{|<around*|(|b,x|)>\|b\<in\>B<rsub|m>|}>\<subseteq\>R<rsup|\<ast\>>>
      </enumerate>

      proving that <math|<around*|(|B<rsub|m>,R<rsub|m>|)>\<preccurlyeq\><around*|(|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|)>>.
      As <math|<around*|(|B<rsub|m>,R<rsub|m>|)>> is a maximal element of
      <math|<around*|\<langle\>|\<cal-A\>,\<preccurlyeq\>|\<rangle\>>> we
      must have <math|<around*|(|B<rsub|m>,R<rsub|m>|)>=<around*|(|B<rsub|m><big|cup><around*|{|x|}>,R<rsup|\<ast\>>|)>>
      so that <math|B=B<big|cup><around*|{|x|}> which as x\<nin\>B<rsub|m>>
      leads to a contradiction. Hence the assumption that
      <math|X\<neq\>B<rsub|m>> is wrong and we must have that\ 

      <\equation*>
        X=B<rsub|m>
      </equation*>
    </proof>

    As <math|<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>> is a well
    ordered the above proves that there exists a partial order
    <math|R<rsub|m>> such that\ 

    <\equation*>
      <around*|\<langle\>|X,R<rsub|m>|\<rangle\>>=<around*|\<langle\>|B<rsub|m>,R<rsub|m>|\<rangle\>>
      <text| is well-ordered [by definition of <math|\<cal-A\>>
      >B<rsub|m><text| is well ordered]>
    </equation*>
  </proof>

  We show now that Well Ordering implies the Axiom of Choice.

  <\theorem>
    <label|choice well-order implies Axiom of Choice>Assume that for every
    <math|X> there exist a order relation such that
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is well ordered
    then there exists a function <math|c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X>
    such that <math|\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|X|)>> we
    have <math|c<around*|(|A|)>\<in\>A> (Axiom of Choice).
  </theorem>

  <\proof>
    Let <math|X> be a set then by the hypothesis there exist a order
    <math|\<leqslant\>> on <math|X> such that
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is well ordered.
    Define now <math|c=<around*|{|<around*|(|A,x|)>\|A\<in\>\<cal-P\><rprime|'><around*|(|X|)>\<wedge\>x<text|
    is a least element of <math|A>>|}>>. If <math|<around*|(|A,x|)>\<in\>c>
    then <math|A\<in\>\<cal-P\><rprime|'><around*|(|X|)>> and <math|x> is a
    least element of <math|A>, so that <math|x\<in\>A\<subseteq\>X> proving
    that <math|<around*|(|A,x|)>\<in\>\<cal-P\><rprime|'><around*|(|X|)>\<times\>X>.
    So <math|c\<subseteq\>\<cal-P\><rprime|'><around*|(|X|)>\<times\>X>. If
    <math|<around*|(|A,x|)>,<around*|(|A,x<rprime|'>|)>\<in\>c> then <math|x>
    and <math|x<rprime|'>> are least elements of <math|A>, which are unique
    by [theorem: <reference|order greatest and lowest element are unique>] so
    that <math|x=x<rprime|'>>. Hence we have that\ 

    <\equation*>
      c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X<text| is a partial
      function>
    </equation*>

    If <math|A\<in\>\<cal-P\><rprime|'><around*|(|X|)>> then
    <math|A\<neq\>\<varnothing\>> so by well ordering <math|A> has a least
    element <math|l> so that <math|<around*|(|A,l|)>\<in\>c>, so
    <math|\<cal-P\><rprime|'><around*|(|A|)>\<subseteq\>dom<around*|(|c|)>>.
    Hence by [proposition: <reference|function condition (1)>] we have that\ 

    <\equation*>
      c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X<text| is a
      function>
    </equation*>

    If <math|<around*|(|A,x|)>\<in\>c> then <math|x> is the least element of
    <math|A> so that <math|c<around*|(|A|)>=x\<in\>A> proving that

    <\equation*>
      c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X<text| is a choice
      function> for X
    </equation*>
  </proof>

  We are now ready to specify the different equivalent statements of the
  Axiom of Choice

  <\theorem>
    The following statements are equivalent\ 

    <\enumerate>
      <item>Axiom of Choice

      <item>Hausdorff's Maximal Principle

      <item>Zorn's Lemma

      <item>Every set can be well ordered
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This follows from [theorem:
      <reference|choice Hausdorff's Maximal Principle>]

      <item*|<math|2\<Rightarrow\>3>>This follows from [theorem:
      <reference|choice Hausdorff's implies Zorn's>]

      <item*|<math|3\<Rightarrow\>4>>This follows from [theorem:
      <reference|choice Zorn implies welll ordering>]

      <item*|<math|4\<Rightarrow\>1>>This follows from [theorem:
      <reference|choice well-order implies Axiom of Choice>]
    </description>
  </proof>

  As in most of works about mathematics we assume the Axiom of Choice. To
  summarize the consequences of the Axiom of Choice we have [taking in
  account [theorem: <reference|choice axiom of choice equivalences (1)>] that
  the following statements are true.

  <\theorem>
    <label|choice Axiom of choice consequences>

    <\description>
      <item*|Axiom of Choice>Let <math|X> be a set then there exist a
      function <math|c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X>
      such that <math|\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|X|)>> we
      have <math|c<around*|(|A|)>\<in\>A>.

      <item*|Existence of Choice set>Let <math|\<cal-A\>> be a set of sets
      such that\ 

      <\enumerate-alpha>
        <item><math|\<forall\>A\<in\>\<cal-A\><text| we have
        >A\<neq\>\<varnothing\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\><text| with >A\<neq\>B> we
        have <math|A<big|cap>B=\<varnothing\>>
      </enumerate-alpha>

      then there exist a set <math|C> [called the
      <with|font-series|bold|choice set of <math|\<cal-A\>>>] such that

      <\enumerate-alpha>
        <item><math|C\<subseteq\><big|cup>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|A<big|cap>C\<neq\>\<varnothing\>> and if
        <math|y,y<rprime|'>\<in\>A<big|cap>C> then <math|y=y<rprime|'>>
      </enumerate-alpha>

      <item*|Axiom of Choice alternative>If
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> is a
      family of non empty sets [<math|\<forall\>i\<in\>I> we have
      <math|A<rsub|i>\<neq\>\<varnothing\>>] where <math|I,\<cal-A\>> are
      sets then there exists a function <math|f:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      such that <math|\<forall\>i\<in\>I> we have
      <math|f<around*|(|i|)>\<in\>A<rsub|i>>

      <item*|Hausdorff's Maximal Theorem>If
      <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> is a partial
      ordered set then there exists a chain <math|C\<subseteq\>X> such that
      for every chain <math|D\<subseteq\>X> with <math|C\<subseteq\>D> we
      have <math|C=D>

      <item*|Zorn's Lemma>If <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
      is a partial ordered set such that every chain has a upper bound then
      <math|X> has a maximal element.

      <item*|Well-Ordering Theorem>For every set there exists a order
      relation making <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>
      well-ordered.

      \ \ 
    </description>
  </theorem>

  There is a kind of extension of Zorn's lemma to pre-ordered sets if change
  the definition of maximal element slightly.

  <\theorem>
    <label|choice Zorn's lemma for pre-order>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a pre-ordered
    set [see definitions: <reference|order preordered class>,
    <reference|order preorder>] such that every chain <math|>has a upper
    bound then there exists a <math|m\<in\>X> such that
    <math|\<forall\>x\<in\>X> with <math|m\<leqslant\>x> we have
    <math|x\<leqslant\>m>
  </theorem>

  <\proof>
    Using [theorem: <reference|order eq order preorder to order>] we have the
    following

    <\enumerate>
      <item><math|\<sim\>\<subseteq\>X\<times\>X> defined by
      <math|\<sim\>=<around*|{|<around*|(|x,y|)>\<in\>X\|x\<leqslant\>y\<wedge\>y\<leqslant\>x|}>>
      is a equivalence relation

      <item>Define <math|\<preccurlyeq\>\<subseteq\><around*|(|X/\<sim\>|)>\<times\><around*|(|X/\<sim\>|)>>
      by\ 

      <\equation*>
        \<preccurlyeq\>=<around*|{|<around*|(|x,y|)>\<in\><around*|(|X/\<sim\>|)>\<times\><around*|(|X/\<sim\>|)>\|\<exists\>x<rprime|'>\<in\>\<sim\><around*|[|x|]><text|
        and >\<exists\>y<rprime|'>\<in\>\<sim\><around*|[|y|]><text| such
        that <math|x<rprime|'>\<leqslant\>y<rprime|'>>>|}>
      </equation*>

      then <math|\<preccurlyeq\>> is a order relation in <math|X/\<sim\>>. So
      <math|<around*|\<langle\>|X/\<sim\>,\<preccurlyeq\>|\<rangle\>>> is a
      partial ordered set

      <item><math|\<forall\>x,y\<in\>A> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|y|]>>
    </enumerate>

    Let <math|C\<subseteq\>X/\<sim\>> be a chain [using the order
    <math|\<preccurlyeq\>>] and construct <math|C<rprime|'>=<big|cup>C>. If
    <math|x,y\<in\>C<rprime|'>> then <math|\<exists\>\<sim\><around*|[|x<rprime|'>|]>,\<sim\><around*|[|y<rprime|'>|]>>
    such that <math|x\<in\>\<sim\><around*|[|x<rprime|'>|]>> and
    <math|y\<in\>\<sim\><around*|[|y<rprime|'>|]>>, so
    <math|x\<sim\>x<rprime|'>> and <math|y\<sim\>y<rprime|'>> or
    <math|x\<leqslant\>x<rprime|'>\<wedge\>x<rprime|'>\<leqslant\>x><space|1em>and
    <math|y\<leqslant\>y<rprime|'>\<wedge\>y<rprime|'>\<leqslant\>y>. As
    <math|C> is a chain [using <math|\<preccurlyeq\>>] we have the following
    possibilities:

    <\description>
      <item*|<math|\<sim\><around*|[|x<rprime|'>|]>\<preccurlyeq\>\<sim\><around*|[|y<rprime|'>|]>>>then
      <math|x<rprime|'>\<leqslant\>y<rprime|'>> and as
      <math|x\<leqslant\>x<rprime|'>> and <math|y<rprime|'>\<leqslant\>y> we
      have <math|x\<leqslant\>y>

      <item*|<math|\<sim\><around*|[|y<rprime|'>|]>\<preccurlyeq\>\<sim\><around*|[|x<rprime|'>|]>>>then
      <math|y<rprime|'>\<leqslant\>x<rprime|'>> and as
      <math|y\<leqslant\>y<rprime|'>> and <math|x<rprime|'>\<leqslant\>x> we
      have <math|y\<leqslant\>x>
    </description>

    proving that <math|x,y> are comparable. Hence\ 

    <\equation*>
      C<rprime|'><text| is a chain [using >\<leqslant\><text|]>
    </equation*>

    By the hypothesis we have that there exist a upper bound <math|u> of
    <math|C<rprime|'>> [using <math|\<leqslant\>>], in other words

    <\equation*>
      \<exists\>u\<in\>X<text| such that >\<forall\>x\<in\>C<rprime|'><text|
      we have >x\<leqslant\>u
    </equation*>

    Take now <math|\<sim\><around*|[|z|]>\<in\>C> then
    <math|z\<in\>\<sim\><around*|[|z|]>\<subseteq\>C<rprime|'>> so that
    <math|z\<leqslant\>u> and thus by (3)
    <math|\<sim\><around*|[|z|]>\<preccurlyeq\>\<sim\><around*|[|u|]>>. So
    <math|\<sim\><around*|[|u|]>> is a upper bound of <math|C>. As we just
    have proved that every chain in <math|X/\<sim\>> has a upper bound and
    <math|<around*|\<langle\>|X/\<sim\>,\<preccurlyeq\>|\<rangle\>>> is a
    partial order, it follows from Zorn's lemma that there exist a maximal
    element <math|\<sim\><around*|[|m|]>> in <math|X/\<sim\>>. So by
    [definition: <reference|order maximal minimal element>] we have\ 

    <\equation*>
      \<forall\>\<sim\><around*|[|x|]>\<in\>X/\<sim\><text| with
      <math|\<sim\><around*|[|m|]>\<preccurlyeq\>\<sim\><around*|[|x|]><text|
      we have <math|\<sim\><around*|[|x|]>=\<sim\><around*|[|m|]>>>>>
    </equation*>

    If now <math|x\<in\>X> such that <math|x\<leqslant\>m> then by (3) we
    have <math|\<sim\><around*|[|x|]>\<preccurlyeq\>\<sim\><around*|[|m|]>>
    hence by the above we have <math|\<sim\><around*|[|x|]>=\<sim\><around*|[|m|]>>
    so that <math|x\<sim\>m> hence <math|x\<leqslant\>m>.
  </proof>

  From this point on we will gradually start to use the simpler notations for
  functions and families that are mentioned in the references [definition:
  <reference|function f(x)>], [theorem: <reference|function equality (2)>],
  [theorem: <reference|function alternative for composition>], [theorem:
  <reference|function injectivity, surjectivity>], [theorem:
  <reference|function simple definition>], [notation: <reference|function
  simple definition notation>], [theorem: <reference|family union (2)>] and
  [theorem: <reference|family intersection (2)>] without explicit referring
  to them. This to avoid excessive notation and difference of notation
  between this text and standard mathematical practice.

  \;

  As a interesting application of the Axiom of Choice we prove that every
  function can be restricted to a injection or bijection.

  <\theorem>
    <label|choice function to injection/bijection>Let <math|X,Y> be sets,
    <math|f:X\<rightarrow\>Y> a function then there exist a
    <math|Z\<subseteq\>X> such that:

    <\enumerate>
      <item><math|f<rsub|\|Z>:Z\<rightarrow\>Y<text| is a injection>>

      <item><math|f<rsub|\|Z><around*|(|Z|)>=f<around*|(|X|)>>

      <item><math|f<rsub|\|Z>:Z\<rightarrow\>f<around*|(|X|)>> is a bijection
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define

      <\equation*>
        \<cal-A\>=<around*|{|f<rsup|-1><around*|(|<around*|{|y|}>|)>\|y\<in\>f<around*|(|X|)>|}>.
      </equation*>

      If <math|A\<in\>\<cal-A\>> then <math|\<exists\>y\<in\>f<around*|(|X|)>>
      such that <math|A=f<rsup|-1><around*|(|<around*|{|y|}>|)>\<subseteq\>X>
      and as <math|y\<in\>f<around*|(|X|)>> there exists a <math|x\<in\>X>
      such that <math|f<around*|(|x|)>=y\<in\><around*|{|y|}>\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>=A>,
      proving that <math|A\<neq\>\<varnothing\>>. So we have proved that\ 

      <\equation*>
        \<cal-A\>\<subseteq\>\<cal-P\><rprime|'><around*|(|X|)>
      </equation*>

      By the Axiom of Choice [axiom: <reference|axiom of choice>] there exist
      a function

      <\equation*>
        c:\<cal-P\><rprime|'><around*|(|X|)>\<rightarrow\>X<text| such that
        >\<forall\>A\<in\>\<cal-P\><rprime|'><around*|(|X|)><text|
        ><around*|(|c|)><around*|(|A|)>\<in\>A
      </equation*>

      Take

      <\equation*>
        Z=c<around*|(|\<cal-A\>|)>\<subseteq\>X
      </equation*>

      and consider the restriction of <math|f> to <math|Z>

      <\equation*>
        f<rsub|\|Z>:Z\<rightarrow\>Y
      </equation*>

      Let <math|x,y\<in\>Z> such that <math|f<rsub|\|Z><around*|(|x|)>=f<rsub|\|Z><around*|(|y|)>\<Rightarrowlim\><rsub|x,y\<in\>Z>f<around*|(|x|)>=f<around*|(|y|)>>.
      As <math|x,y\<in\>Z=c<around*|(|\<cal-A\>|)>> there exists
      <math|A<rsub|x>\<in\>\<cal-A\>\<wedge\>A<rsub|y>\<in\>\<cal-A\>> such
      that <math|x=<around*|(|c|)><around*|(|A<rsub|x>|)>\<in\>A<rsub|x>> and
      <math|y=<around*|(|c|)><around*|(|A<rsub|y>|)>\<in\>A<rsub|x>>. As
      <math|A<rsub|x>,A<rsub|y>\<in\>\<cal-A\>> there exist
      <math|x<rprime|'>,y<rprime|'>\<in\>f<around*|(|X|)>> such that
      <math|A<rsub|x>=f<rsup|-1><around*|(|<around*|{|x<rprime|'>|}>|)>> and
      <math|A<rsub|y>=f<rsup|-1><around*|(|<around*|{|y<rprime|'>|}>|)>>.
      Then <math|f<around*|(|x|)>\<equallim\><rsub|x\<in\>A<rsub|x>>x<rprime|'>>
      and <math|f<around*|(|y|)>\<equallim\><rsub|y\<in\>A<rsub|y>>y<rprime|'>>.
      As <math|f<around*|(|x|)>=f<around*|(|y|)>> we have
      <math|x<rprime|'>=y<rprime|'>> so that
      <math|A<rsub|x>=f<rsup|-1><around*|(|<around*|{|x<rprime|'>|}>|)>=f<rsup|-1><around*|(|<around*|{|y<rprime|'>|}>|)>=A<rsub|y>>.
      So <math|x=<around*|(|c|)><around*|(|A<rsub|x>|)>=<around*|(|c|)><around*|(|A<rsub|y>|)>=y>,
      proving that <math|x=y>.\ 

      <item>If <math|y\<in\>f<around*|(|X|)>> then
      <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>> so to
      that x=<math|<around*|(|c|)><around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>\<in\>c<around*|(|\<cal-A\>|)>=Z>.
      Further as <math|<around*|(|c|)><around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>
      we have that <math|f<around*|(|x|)>=f<around*|(|<around*|(|c|)><around*|(|f<rsup|-1><around*|(|<around*|{|y|}>|)>|)>|)>\<in\><around*|{|y|}>>
      so that <math|y=f<around*|(|x|)>\<in\>f<around*|(|Z|)>>, proving that
      <math|f<around*|(|X|)>\<subseteq\>f<around*|(|Z|)>>. As
      <math|Z\<subseteq\>X> we have by [theorem: <reference|partial functions
      image/preimage properties>] that <math|f<around*|(|Z|)>\<subseteq\>f<around*|(|X|)>>
      so that\ 

      <\equation*>
        f<around*|(|X|)>=f<around*|(|Z|)>
      </equation*>

      <item>From (2) we have that <math|f<rsub|\|Z>:Z\<rightarrow\>f<around*|(|X|)>>
      is surjective which together with (1) proves bijectivity.
    </enumerate>
  </proof>

  Another application of the Axiom of Choice is the following.

  <\theorem>
    <label|choice family on preimage>Let <math|I,X,Y> be sets,
    <math|f:X\<rightarrow\>Y> a function and
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>f<around*|(|X|)>>
    then <math|\<exists\><around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>
    such that <math|\<forall\>i\<in\>I> we have
    <math|f<around*|(|x<rsub|i>|)>=y<rsub|i>>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      <around*|{|A<rsub|i>|}><rsub|i\<in\>I><text| by
      >A<rsub|i>=f<rsup|-1><around*|(|<around*|{|y<rsub|i>|}>|)>\<subseteq\>X
    </equation*>

    Let <math|i\<in\>I> then, as <math|y<rsub|i>\<in\>f<around*|(|X|)>>,
    there exist a <math|x\<in\>X> such that
    <math|f<around*|(|x|)>=y<rsub|i>>, hence
    <math|x\<in\>f<rsup|-1><around*|(|<around*|{|y<rsub|i>|}>|)>=A<rsub|i>>.
    This proves that\ 

    <\equation*>
      \<forall\>i\<in\>I<text| >A<rsub|i>\<neq\>\<varnothing\>
    </equation*>

    Using the Axiom of Choice [axiom: <reference|choice axiom of choice
    equivalences (1)>(3)] there exist a function\ 

    <\equation*>
      x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| such that
      >\<forall\>i\<in\>I<text| we have >x<around*|(|i|)>\<in\>A<rsub|i>
    </equation*>

    If <math|i\<in\>I> we have that that <math|x<around*|(|i|)>\<in\>A<rsub|i>>
    so that <math|f<around*|(|x<around*|(|i|)>|)>\<in\><around*|{|y<rsub|i>|}>\<Rightarrow\>f<around*|(|x<rsub|i>|)>=y<rsub|i>>,
    this together with the fact that we can extend the function
    <math|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> to
    <math|f:I\<rightarrow\>X> proves that we have found a function\ 

    <\equation*>
      x:I\<rightarrow\>X<text| such that >\<forall\>i\<in\>I<text| we have
      >f<around*|(|x<rsub|i>|)>=y<rsub|i>
    </equation*>

    This function defines then the family
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> satisfying
    <math|\<forall\>i\<in\>I> <math|f<around*|(|x<rsub|i>|)>=y<rsub|i>>.
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|0>
    <associate|page-first|9>
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
    <associate|Axiom of Replacement|<tuple|2.54|?>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|axiom of pairing|?>>
    <associate|auto-100|<tuple|transfinite induction|?>>
    <associate|auto-101|<tuple|3.4|?>>
    <associate|auto-102|<tuple|<with|mode|<quote|math>|\<cal-P\><rprime|'><around*|(|A|)>>|?>>
    <associate|auto-103|<tuple|choice function|?>>
    <associate|auto-104|<tuple|axiom of choice|?>>
    <associate|auto-105|<tuple|Hausdorff's maximality|?>>
    <associate|auto-106|<tuple|Zorn's Lemma|?>>
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
    <associate|auto-27|<tuple|<with|mode|<quote|math>|g\<circ\>f>|?>>
    <associate|auto-28|<tuple|2.2.2|?>>
    <associate|auto-29|<tuple|function|?>>
    <associate|auto-3|<tuple|axiom of extent|2>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|B<rsup|A>>|?>>
    <associate|auto-31|<tuple|identity function|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|Id<rsub|A>>|?>>
    <associate|auto-33|<tuple|2.2.3|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|i<rsub|B>>|?>>
    <associate|auto-35|<tuple|bijection|?>>
    <associate|auto-36|<tuple|bijective|?>>
    <associate|auto-37|<tuple|2.2.4|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|f<rsub|\|C>>|?>>
    <associate|auto-39|<tuple|2.2.5|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<cal-U\>>|3>>
    <associate|auto-40|<tuple|2.2.6|?>>
    <associate|auto-41|<tuple|2.3|?>>
    <associate|auto-42|<tuple|2.3.1|?>>
    <associate|auto-43|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>|?>>
    <associate|auto-44|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>\|i\<in\>I|}>>|?>>
    <associate|auto-45|<tuple|<with|mode|<quote|math>|<big|cap><rsub|i\<in\>I>A<rsub|i>>|?>>
    <associate|auto-46|<tuple|2.3.2|?>>
    <associate|auto-47|<tuple|2.4|?>>
    <associate|auto-48|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i\<in\>I>A<rsub|i>>|?>>
    <associate|auto-49|<tuple|<with|mode|<quote|math>|\<pi\><rsub|i>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|A<big|cup>B>|5>>
    <associate|auto-50|<tuple|3|?>>
    <associate|auto-51|<tuple|3.1|?>>
    <associate|auto-52|<tuple|relation|?>>
    <associate|auto-53|<tuple|3.2|?>>
    <associate|auto-54|<tuple|3.2.1|?>>
    <associate|auto-55|<tuple|equivalence relation|?>>
    <associate|auto-56|<tuple|partition of a set|?>>
    <associate|auto-57|<tuple|<with|mode|<quote|math>|R<around*|[|x|]>>|?>>
    <associate|auto-58|<tuple|<with|mode|<quote|math>|A/R>|?>>
    <associate|auto-59|<tuple|3.2.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|A<big|cap>B>|?>>
    <associate|auto-60|<tuple|canonical function|?>>
    <associate|auto-61|<tuple|3.3|?>>
    <associate|auto-62|<tuple|3.3.1|?>>
    <associate|auto-63|<tuple|preorder|?>>
    <associate|auto-64|<tuple|pre-ordered class|?>>
    <associate|auto-65|<tuple|order relation|?>>
    <associate|auto-66|<tuple|partial ordered class|?>>
    <associate|auto-67|<tuple|<with|mode|<quote|math>|\<leqslant\>>|?>>
    <associate|auto-68|<tuple|<with|mode|<quote|math>|\<less\>>|?>>
    <associate|auto-69|<tuple|comparable elements|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<emptyset\>>|?>>
    <associate|auto-70|<tuple|comparable elements|?>>
    <associate|auto-71|<tuple|totally ordered class|?>>
    <associate|auto-72|<tuple|fully ordered class|?>>
    <associate|auto-73|<tuple|linear ordered class|?>>
    <associate|auto-74|<tuple|chain|?>>
    <associate|auto-75|<tuple|initial segment|?>>
    <associate|auto-76|<tuple|<with|mode|<quote|math>|\<cal-S\><rsub|a>>|?>>
    <associate|auto-77|<tuple|3.3.2|?>>
    <associate|auto-78|<tuple|increasing function|?>>
    <associate|auto-79|<tuple|decreasing function|?>>
    <associate|auto-8|<tuple|1.2|?>>
    <associate|auto-80|<tuple|order homomorphism|?>>
    <associate|auto-81|<tuple|<with|mode|<quote|math>|A\<cong\>B>|?>>
    <associate|auto-82|<tuple|3.3.3|?>>
    <associate|auto-83|<tuple|maximal element|?>>
    <associate|auto-84|<tuple|minimal element|?>>
    <associate|auto-85|<tuple|greatest element|?>>
    <associate|auto-86|<tuple|lowest element|?>>
    <associate|auto-87|<tuple|<with|mode|<quote|math>|max<around*|(|A|)>>|?>>
    <associate|auto-88|<tuple|<with|mode|<quote|math>|min<around*|(|A|)>>|?>>
    <associate|auto-89|<tuple|upper bound|?>>
    <associate|auto-9|<tuple|1.3|?>>
    <associate|auto-90|<tuple|lower bound|?>>
    <associate|auto-91|<tuple|supremum|?>>
    <associate|auto-92|<tuple|infinum|?>>
    <associate|auto-93|<tuple|<with|mode|<quote|math>|inf<around*|(|A|)>>|?>>
    <associate|auto-94|<tuple|<with|mode|<quote|math>|sup<around*|(|A|)>>|?>>
    <associate|auto-95|<tuple|conditional completeness|?>>
    <associate|auto-96|<tuple|3.3.4|?>>
    <associate|auto-97|<tuple|well-ordered class|?>>
    <associate|auto-98|<tuple|immediate successor|?>>
    <associate|auto-99|<tuple|section|?>>
    <associate|axiom of choice|<tuple|3.98|?>>
    <associate|axiom of construction|<tuple|1.9|?>>
    <associate|axiom of extent|<tuple|1.5|2>>
    <associate|axiom of infinity|<tuple|1.52|?>>
    <associate|axiom of pairing|<tuple|1.36|?>>
    <associate|axiom of power|<tuple|1.64|?>>
    <associate|axiom of subsets|<tuple|1.54|?>>
    <associate|axiom of union|<tuple|1.61|?>>
    <associate|bijection|<tuple|2.61|?>>
    <associate|bijective classes|<tuple|2.62|?>>
    <associate|cartesian product|<tuple|1.44|?>>
    <associate|cartesian product and inclusion|<tuple|1.48|?>>
    <associate|cartesian product of the empty set|<tuple|1.46|?>>
    <associate|cartesian product properties (1)|<tuple|1.49|?>>
    <associate|cartesian product with enpty set|<tuple|1.47|?>>
    <associate|choice Axiom of choice consequences|<tuple|3.123|?>>
    <associate|choice Hausdorff maximal principle|<tuple|3.114|?>>
    <associate|choice Hausdorff's Maximal Principle|<tuple|3.115|?>>
    <associate|choice Hausdorff's implies Zorn's|<tuple|3.117|?>>
    <associate|choice P'(A)|<tuple|3.95|?>>
    <associate|choice P'(A) is a set|<tuple|3.96|?>>
    <associate|choice Zorn implies welll ordering|<tuple|3.118|?>>
    <associate|choice Zorn's lemma|<tuple|3.116|?>>
    <associate|choice Zorn's lemma for pre-order|<tuple|3.124|?>>
    <associate|choice axiom of choice equivalences (1)|<tuple|3.100|?>>
    <associate|choice choice function|<tuple|3.97|?>>
    <associate|choice existence of successor|<tuple|3.104|?>>
    <associate|choice family on preimage|<tuple|3.126|?>>
    <associate|choice function to injection/bijection|<tuple|3.125|?>>
    <associate|choice intersection of p-sewuences|<tuple|3.107|?>>
    <associate|choice lemma p-sequence|<tuple|3.105|?>>
    <associate|choice lemma p-sequence generation|<tuple|3.110|?>>
    <associate|choice lemma properties of select|<tuple|3.111|?>>
    <associate|choice lemma property of select elements|<tuple|3.109|?>>
    <associate|choice lemma select elements froms a
    p-sewuence|<tuple|3.112|?>>
    <associate|choice lemma upper bound of chain|<tuple|3.120|?>>
    <associate|choice lemma well ordering lemma (1)|<tuple|3.119|?>>
    <associate|choice well-order implies Axiom of Choice|<tuple|3.121|?>>
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
    <associate|eq 2.12.001|<tuple|2.17|?>>
    <associate|eq 2.12.002|<tuple|2.12|?>>
    <associate|eq 2.13.001|<tuple|2.18|?>>
    <associate|eq 2.13.002|<tuple|2.13|?>>
    <associate|eq 2.14.001|<tuple|2.24|?>>
    <associate|eq 2.14.009|<tuple|2.15|?>>
    <associate|eq 2.14.038|<tuple|2.14|?>>
    <associate|eq 2.15.013|<tuple|2.16|?>>
    <associate|eq 2.16.003|<tuple|2.27|?>>
    <associate|eq 2.16.005|<tuple|2.19|?>>
    <associate|eq 2.17.002|<tuple|2.28|?>>
    <associate|eq 2.17.003|<tuple|2.26|?>>
    <associate|eq 2.17.004|<tuple|2.25|?>>
    <associate|eq 2.17.006|<tuple|2.20|?>>
    <associate|eq 2.18.002|<tuple|2.29|?>>
    <associate|eq 2.18.006|<tuple|2.21|?>>
    <associate|eq 2.19.002|<tuple|2.30|?>>
    <associate|eq 2.2.001|<tuple|2.4|?>>
    <associate|eq 2.20.002|<tuple|2.31|?>>
    <associate|eq 2.21.002|<tuple|2.32|?>>
    <associate|eq 2.21.017|<tuple|2.22|?>>
    <associate|eq 2.22.017|<tuple|2.23|?>>
    <associate|eq 2.25.004|<tuple|2.34|?>>
    <associate|eq 2.26.004|<tuple|2.35|?>>
    <associate|eq 2.27.004|<tuple|2.36|?>>
    <associate|eq 2.28.004|<tuple|2.37|?>>
    <associate|eq 2.29.004|<tuple|2.39|?>>
    <associate|eq 2.29.012|<tuple|2.33|?>>
    <associate|eq 2.3.001.2|<tuple|2.3|?>>
    <associate|eq 2.30.004|<tuple|2.40|?>>
    <associate|eq 2.31.004|<tuple|2.41|?>>
    <associate|eq 2.31.010|<tuple|2.38|?>>
    <associate|eq 2.32.004|<tuple|2.42|?>>
    <associate|eq 2.34.005|<tuple|2.43|?>>
    <associate|eq 2.35.005|<tuple|2.44|?>>
    <associate|eq 2.38.006|<tuple|2.45|?>>
    <associate|eq 2.39.006|<tuple|2.46|?>>
    <associate|eq 2.40.006|<tuple|2.48|?>>
    <associate|eq 2.40.007|<tuple|2.47|?>>
    <associate|eq 2.41.006|<tuple|2.49|?>>
    <associate|eq 2.42.006|<tuple|2.50|?>>
    <associate|eq 2.43.006|<tuple|2.52|?>>
    <associate|eq 2.44.006|<tuple|2.53|?>>
    <associate|eq 2.44.007|<tuple|2.51|?>>
    <associate|eq 2.45.006|<tuple|2.54|?>>
    <associate|eq 2.48.007|<tuple|2.57|?>>
    <associate|eq 2.48.008|<tuple|2.55|?>>
    <associate|eq 2.49.007|<tuple|2.58|?>>
    <associate|eq 2.5.001.2|<tuple|2.5|?>>
    <associate|eq 2.50.007|<tuple|2.59|?>>
    <associate|eq 2.51.007|<tuple|2.64|?>>
    <associate|eq 2.51.010|<tuple|2.56|?>>
    <associate|eq 2.59.018|<tuple|2.62|?>>
    <associate|eq 2.59.022|<tuple|2.60|?>>
    <associate|eq 2.6.001|<tuple|2.6|?>>
    <associate|eq 2.60.018|<tuple|2.63|?>>
    <associate|eq 2.60.022|<tuple|2.61|?>>
    <associate|eq 2.7.001|<tuple|2.7|?>>
    <associate|eq 2.8.001|<tuple|2.8|?>>
    <associate|eq 2.9.001|<tuple|2.9|?>>
    <associate|eq 3.1.009|<tuple|3.1|?>>
    <associate|eq 3.10.012|<tuple|3.10|?>>
    <associate|eq 3.11.012|<tuple|3.11|?>>
    <associate|eq 3.12.012|<tuple|3.12|?>>
    <associate|eq 3.14.012|<tuple|3.13|?>>
    <associate|eq 3.14.013|<tuple|3.16|?>>
    <associate|eq 3.14.026|<tuple|3.14|?>>
    <associate|eq 3.15.013|<tuple|3.17|?>>
    <associate|eq 3.15.026|<tuple|3.15|?>>
    <associate|eq 3.16.014|<tuple|3.20|?>>
    <associate|eq 3.16.016|<tuple|3.18|?>>
    <associate|eq 3.17.014|<tuple|3.21|?>>
    <associate|eq 3.17.016|<tuple|3.19|?>>
    <associate|eq 3.18.014|<tuple|3.22|?>>
    <associate|eq 3.19.014|<tuple|3.23|?>>
    <associate|eq 3.2.009|<tuple|3.2|?>>
    <associate|eq 3.20.014|<tuple|3.24|?>>
    <associate|eq 3.21.014|<tuple|3.25|?>>
    <associate|eq 3.21.014.1|<tuple|3.28|?>>
    <associate|eq 3.22.014|<tuple|3.26|?>>
    <associate|eq 3.23.014|<tuple|3.27|?>>
    <associate|eq 3.25.014|<tuple|3.30|?>>
    <associate|eq 3.25.015|<tuple|3.29|?>>
    <associate|eq 3.26.014|<tuple|3.31|?>>
    <associate|eq 3.27.014|<tuple|3.32|?>>
    <associate|eq 3.28.014|<tuple|3.33|?>>
    <associate|eq 3.29.014|<tuple|3.34|?>>
    <associate|eq 3.3.009|<tuple|3.3|?>>
    <associate|eq 3.30.014|<tuple|3.35|?>>
    <associate|eq 3.31.014|<tuple|3.36|?>>
    <associate|eq 3.32.014|<tuple|3.37|?>>
    <associate|eq 3.33.014|<tuple|3.38|?>>
    <associate|eq 3.34.014|<tuple|3.39|?>>
    <associate|eq 3.35.014|<tuple|3.40|?>>
    <associate|eq 3.36.014|<tuple|3.41|?>>
    <associate|eq 3.37.014|<tuple|3.42|?>>
    <associate|eq 3.39.015|<tuple|3.43|?>>
    <associate|eq 3.4.009|<tuple|3.4|?>>
    <associate|eq 3.42.015|<tuple|3.44|?>>
    <associate|eq 3.43.015|<tuple|3.45|?>>
    <associate|eq 3.44.015|<tuple|3.46|?>>
    <associate|eq 3.46.016|<tuple|3.48|?>>
    <associate|eq 3.47.016|<tuple|3.49|?>>
    <associate|eq 3.48.016|<tuple|3.50|?>>
    <associate|eq 3.49.016|<tuple|3.51|?>>
    <associate|eq 3.5.009|<tuple|3.5|?>>
    <associate|eq 3.50.016|<tuple|3.52|?>>
    <associate|eq 3.51.016|<tuple|3.53|?>>
    <associate|eq 3.52.016|<tuple|3.54|?>>
    <associate|eq 3.53.016|<tuple|3.55|?>>
    <associate|eq 3.54.016|<tuple|3.56|?>>
    <associate|eq 3.55.016|<tuple|3.57|?>>
    <associate|eq 3.56.016|<tuple|3.58|?>>
    <associate|eq 3.57.018|<tuple|3.59|?>>
    <associate|eq 3.58.018|<tuple|3.60|?>>
    <associate|eq 3.59.018|<tuple|3.61|?>>
    <associate|eq 3.6.009|<tuple|3.6|?>>
    <associate|eq 3.61.018|<tuple|3.62|?>>
    <associate|eq 3.62.018|<tuple|3.63|?>>
    <associate|eq 3.63.018|<tuple|3.64|?>>
    <associate|eq 3.64.018|<tuple|3.65|?>>
    <associate|eq 3.65.018|<tuple|3.66|?>>
    <associate|eq 3.66.018|<tuple|3.68|?>>
    <associate|eq 3.66.019|<tuple|3.67|?>>
    <associate|eq 3.68.019|<tuple|3.69|?>>
    <associate|eq 3.69.019|<tuple|3.70|?>>
    <associate|eq 3.7.009|<tuple|3.7|?>>
    <associate|eq 3.70.019|<tuple|3.71|?>>
    <associate|eq 3.71.019|<tuple|3.72|?>>
    <associate|eq 3.72.019|<tuple|3.73|?>>
    <associate|eq 3.8.011|<tuple|3.8|?>>
    <associate|eq 3.9.011|<tuple|3.9|?>>
    <associate|equivalence relation|<tuple|3.5|?>>
    <associate|equivalence relation A/R|<tuple|3.16|?>>
    <associate|equivalence relation R[x]=R[y]|<tuple|3.11|?>>
    <associate|equivalence relation canical function|<tuple|3.21|?>>
    <associate|equivalence relation canonical decomposition of a
    function|<tuple|3.22|?>>
    <associate|equivalence relation class|<tuple|3.9|?>>
    <associate|equivalence relation defines a partition|<tuple|3.14|?>>
    <associate|equivalence relation determined by a function|<tuple|3.20|?>>
    <associate|equivalence relation function|<tuple|3.18|?>>
    <associate|equivalence relation partition|<tuple|3.6|?>>
    <associate|equivalence relation partition alternative|<tuple|3.8|?>>
    <associate|equivalence relation subsets|<tuple|3.19|?>>
    <associate|family|<tuple|2.97|?>>
    <associate|family and function composition|<tuple|2.105|?>>
    <associate|family de Morgan|<tuple|2.126|?>>
    <associate|family definition (2)|<tuple|2.102|?>>
    <associate|family definition (3)|<tuple|2.103|?>>
    <associate|family distributivity|<tuple|2.124|?>>
    <associate|family empty family|<tuple|2.99|?>>
    <associate|family empty family condition|<tuple|2.100|?>>
    <associate|family image and preimage|<tuple|2.130|?>>
    <associate|family index set is a product|<tuple|2.104|?>>
    <associate|family intersection (2)|<tuple|2.117|?>>
    <associate|family intersection is a set|<tuple|2.118|?>>
    <associate|family intersection(1)|<tuple|2.116|?>>
    <associate|family product and index transformation|<tuple|2.138|?>>
    <associate|family properties (1)|<tuple|2.121|?>>
    <associate|family properties (2)|<tuple|2.122|?>>
    <associate|family properties (3)|<tuple|2.127|?>>
    <associate|family range|<tuple|2.106|?>>
    <associate|family range (1)|<tuple|2.107|?>>
    <associate|family set|<tuple|2.108|?>>
    <associate|family trivial|<tuple|2.119|?>>
    <associate|family union (1)|<tuple|2.109|?>>
    <associate|family union (2)|<tuple|2.112|?>>
    <associate|family union condition set|<tuple|2.114|?>>
    <associate|family union intersection and empty set|<tuple|2.128|?>>
    <associate|family union intersection and inclusion|<tuple|2.123|?>>
    <associate|family union of a empty set|<tuple|2.115|?>>
    <associate|family union of family of families|<tuple|2.129|?>>
    <associate|family union of family set and surjections|<tuple|2.113|?>>
    <associate|family union of union of two families|<tuple|2.125|?>>
    <associate|family union{A,B}|<tuple|2.120|?>>
    <associate|family {x}xeA|<tuple|2.101|?>>
    <associate|function|<tuple|2.24|?>>
    <associate|function A^empty is empty|<tuple|2.32|?>>
    <associate|function B^A|<tuple|2.30|?>>
    <associate|function B^A and inclusion|<tuple|2.34|?>>
    <associate|function P(A)=2^A|<tuple|2.76|?>>
    <associate|function alternative for composition|<tuple|2.42|?>>
    <associate|function and power|<tuple|2.75|?>>
    <associate|function between {0,1} and {A,B}|<tuple|2.27|?>>
    <associate|function bijection and inverse|<tuple|2.71|?>>
    <associate|function bijection condition (2)|<tuple|2.70|?>>
    <associate|function bijection f,f-1|<tuple|2.68|?>>
    <associate|function bijection has a inverse|<tuple|2.67|?>>
    <associate|function characteristics function|<tuple|2.46|?>>
    <associate|function combining bijections|<tuple|2.80|?>>
    <associate|function combining functions (1)|<tuple|2.78|?>>
    <associate|function combining functions (2)|<tuple|2.79|?>>
    <associate|function composition and restriction|<tuple|2.86|?>>
    <associate|function composition injectivity, surjectivity and
    bijectivity|<tuple|2.73|?>>
    <associate|function composition injectivity, surjectivity and bijectivity
    (1)|<tuple|2.74|?>>
    <associate|function composition of Id function|<tuple|2.48|?>>
    <associate|function composition of functions is a
    fucntion|<tuple|2.28|?>>
    <associate|function condition (1)|<tuple|2.26|?>>
    <associate|function constant function|<tuple|2.45|?>>
    <associate|function empty function|<tuple|2.44|?>>
    <associate|function empty function bijection|<tuple|2.63|?>>
    <associate|function equality (1)|<tuple|2.38|?>>
    <associate|function equality (2)|<tuple|2.41|?>>
    <associate|function extend target|<tuple|2.33|?>>
    <associate|function extending funtion domain|<tuple|2.81|?>>
    <associate|function f(x)|<tuple|2.39|?>>
    <associate|function function and intersection and union|<tuple|2.90|?>>
    <associate|function identity function|<tuple|2.47|?>>
    <associate|function identity map is a bijection|<tuple|2.64|?>>
    <associate|function image preimage|<tuple|2.49|?>>
    <associate|function image preimage alternative|<tuple|2.43|?>>
    <associate|function inclusion function|<tuple|2.53|?>>
    <associate|function indexed set|<tuple|2.94|?>>
    <associate|function indexed set example|<tuple|2.96|?>>
    <associate|function indexed set unique|<tuple|2.95|?>>
    <associate|function injection condition|<tuple|2.60|?>>
    <associate|function injective inverse is a function|<tuple|2.59|?>>
    <associate|function injectivity to bijection|<tuple|2.66|?>>
    <associate|function injectivity, surjectivity|<tuple|2.52|?>>
    <associate|function inverse and restriction|<tuple|2.85|?>>
    <associate|function inverse function and f(x)|<tuple|2.69|?>>
    <associate|function inverse of a bijection is unique|<tuple|2.72|?>>
    <associate|function power of intersection|<tuple|2.36|?>>
    <associate|function preimage of image|<tuple|2.55|?>>
    <associate|function preimage of image (1)|<tuple|2.25|?>>
    <associate|function properties (1)|<tuple|2.89|?>>
    <associate|function range restriction|<tuple|2.37|?>>
    <associate|function restricted function properties|<tuple|2.83|?>>
    <associate|function restriction and domain|<tuple|2.84|?>>
    <associate|function restriction of a function|<tuple|2.87|?>>
    <associate|function restriction of a graph|<tuple|2.77|?>>
    <associate|function simple definition|<tuple|2.91|?>>
    <associate|function simple definition notation|<tuple|2.92|?>>
    <associate|function surjection and construction of inverse
    function|<tuple|3.99|?>>
    <associate|function surjection condition|<tuple|2.51|?>>
    <associate|function trivial bijection|<tuple|2.65|?>>
    <associate|function: A^B and sets|<tuple|2.35|?>>
    <associate|order A isomorphism B|<tuple|3.49|?>>
    <associate|order a\<less\>=b\<less\>=c|<tuple|3.29|?>>
    <associate|order chain|<tuple|3.40|?>>
    <associate|order chain is a totally ordered class|<tuple|3.42|?>>
    <associate|order comparable|<tuple|3.37|?>>
    <associate|order comparable property|<tuple|3.38|?>>
    <associate|order composition of functions|<tuple|3.51|?>>
    <associate|order condition for isomorphism|<tuple|3.53|?>>
    <associate|order condition for isomorphism in a totallu ordered
    set|<tuple|3.56|?>>
    <associate|order conditional complete alternatives|<tuple|3.75|?>>
    <associate|order conditional complete order|<tuple|3.74|?>>
    <associate|order empty set is a chain|<tuple|3.41|?>>
    <associate|order eq order preorder to order|<tuple|3.33|?>>
    <associate|order example inclusion order and sup, inf|<tuple|3.67|?>>
    <associate|order greatest and lowest element are unique|<tuple|3.61|?>>
    <associate|order greatest lowest element|<tuple|3.58|?>>
    <associate|order homeomorphism extending|<tuple|3.50|?>>
    <associate|order immediate successor|<tuple|3.82|?>>
    <associate|order inclusion and greatest and least element|<tuple|3.69|?>>
    <associate|order inclusion is a order|<tuple|3.32|?>>
    <associate|order increasing, decreasing|<tuple|3.48|?>>
    <associate|order initial segement|<tuple|3.45|?>>
    <associate|order initial segement a\<less\>b|<tuple|3.92|?>>
    <associate|order initial segement inclusion|<tuple|3.46|?>>
    <associate|order intial sergment property|<tuple|3.47|?>>
    <associate|order isomorphism and conditional complete|<tuple|3.77|?>>
    <associate|order isomorphism condition (2)|<tuple|3.54|?>>
    <associate|order isomorphism preservers sup and inf|<tuple|3.76|?>>
    <associate|order isomorphism strictly|<tuple|3.52|?>>
    <associate|order lexical order|<tuple|3.36|?>>
    <associate|order lower upper bound and inclusion|<tuple|3.70|?>>
    <associate|order lower upper bounds of empty set|<tuple|3.65|?>>
    <associate|order maximal minimal element|<tuple|3.57|?>>
    <associate|order maximum of class with bigger elements|<tuple|3.63|?>>
    <associate|order min(A)\<less\>=max(A)|<tuple|3.62|?>>
    <associate|order order relation|<tuple|3.26|?>>
    <associate|order partial order on sub class|<tuple|3.34|?>>
    <associate|order partial ordered class|<tuple|3.27|?>>
    <associate|order preorder|<tuple|3.24|?>>
    <associate|order preordered class|<tuple|3.25|?>>
    <associate|order properties of the isomorph relation|<tuple|3.55|?>>
    <associate|order section|<tuple|3.84|?>>
    <associate|order section and well ordering|<tuple|3.85|?>>
    <associate|order strict order|<tuple|3.31|?>>
    <associate|order sup and inf and bigger elements|<tuple|3.72|?>>
    <associate|order sup inf condition|<tuple|3.73|?>>
    <associate|order sup, inf property|<tuple|3.68|?>>
    <associate|order sup,inf and inclusion|<tuple|3.71|?>>
    <associate|order supremum infinum|<tuple|3.66|?>>
    <associate|order total/well-order inclusion|<tuple|3.80|?>>
    <associate|order totally lexicol ordering|<tuple|3.44|?>>
    <associate|order totally ordered subclass|<tuple|3.43|?>>
    <associate|order transfinite induction|<tuple|3.86|?>>
    <associate|order upport lower bound|<tuple|3.64|?>>
    <associate|order well order and immediate successor|<tuple|3.83|?>>
    <associate|order well order every subclass is isomorphic with A or a
    iitial segement|<tuple|3.94|?>>
    <associate|order well order implies conditional complete and totally
    ordering|<tuple|3.81|?>>
    <associate|order well ordered and order isomorphism|<tuple|3.87|?>>
    <associate|order well ordered class and isomorphism|<tuple|3.88|?>>
    <associate|order well ordered is not isomorph to a initial segment
    |<tuple|3.89|?>>
    <associate|order well ordered isomorphic property (3)|<tuple|3.91|?>>
    <associate|order well ordered isomorphism property|<tuple|3.90|?>>
    <associate|order well ordering and isomorphism (2)|<tuple|3.93|?>>
    <associate|order well ordering and order isomorphism|<tuple|3.79|?>>
    <associate|order well-rodered class|<tuple|3.78|?>>
    <associate|pair equality of pairs|<tuple|1.43|?>>
    <associate|pair of elements|<tuple|1.41|?>>
    <associate|partial function|<tuple|2.7|?>>
    <associate|partial function associativity|<tuple|2.21|?>>
    <associate|partial function composition of graphs|<tuple|2.18|?>>
    <associate|partial function composition of partial
    functions|<tuple|2.19|?>>
    <associate|partial function dom(f) range(f) as subclasses|<tuple|2.11|?>>
    <associate|partial function domain range composition|<tuple|2.22|?>>
    <associate|partial function image|<tuple|2.13|?>>
    <associate|partial function image preimage of
    compositions|<tuple|2.23|?>>
    <associate|partial function injectivity and surjectivity|<tuple|2.50|?>>
    <associate|partial function inverse graph|<tuple|2.56|?>>
    <associate|partial function inverse if injective|<tuple|2.57|?>>
    <associate|partial function preimage|<tuple|2.15|?>>
    <associate|partial function set domain range|<tuple|2.12|?>>
    <associate|partial functions image/preimage properties|<tuple|2.17|?>>
    <associate|parttial function graph|<tuple|2.6|?>>
    <associate|power set|<tuple|1.63|?>>
    <associate|product|<tuple|2.131|?>>
    <associate|product and intersection|<tuple|2.136|?>>
    <associate|product and power|<tuple|2.137|?>>
    <associate|product extension|<tuple|2.140|?>>
    <associate|product inclusion|<tuple|2.135|?>>
    <associate|product of a empty set is empty|<tuple|2.132|?>>
    <associate|product of family with one element|<tuple|2.133|?>>
    <associate|product of family with two classes|<tuple|2.134|?>>
    <associate|product product is empty|<tuple|3.103|?>>
    <associate|product product is not empty|<tuple|3.102|?>>
    <associate|product projection function|<tuple|2.141|?>>
    <associate|product projection is surjective|<tuple|3.101|?>>
    <associate|product sub-product|<tuple|2.139|?>>
    <associate|relation|<tuple|3.1|?>>
    <associate|relation properties|<tuple|3.4|?>>
    <associate|relation trivial|<tuple|3.3|?>>
    <associate|set A*B|<tuple|1.67|?>>
    <associate|set A*B is subset of P(P(AUB))|<tuple|1.66|?>>
    <associate|set element proper class|<tuple|1.50|?>>
    <associate|set emptyset is not set of empty set|<tuple|2.2|?>>
    <associate|set intersection of two sets is aset|<tuple|1.55|?>>
    <associate|set restriction of a set of sets|<tuple|1.65|?>>
    <associate|set successor set|<tuple|1.51|?>>
    <associate|set union of two sets is a set|<tuple|1.62|?>>
    <associate|totally ordered class|<tuple|3.39|?>>
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

      <tuple|<tuple|<with|mode|<quote|math>|g\<circ\>f>>|<pageref|auto-27>>

      <tuple|<tuple|function>|<pageref|auto-29>>

      <tuple|<tuple|<with|mode|<quote|math>|B<rsup|A>>>|<pageref|auto-30>>

      <tuple|<tuple|identity function>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|Id<rsub|A>>>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|i<rsub|B>>>|<pageref|auto-34>>

      <tuple|<tuple|bijection>|<pageref|auto-35>>

      <tuple|<tuple|bijective>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rsub|\|C>>>|<pageref|auto-38>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>>|<pageref|auto-43>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|{|A<rsub|i>\|i\<in\>I|}>>>|<pageref|auto-44>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|cap><rsub|i\<in\>I>A<rsub|i>>>|<pageref|auto-45>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i\<in\>I>A<rsub|i>>>|<pageref|auto-48>>

      <tuple|<tuple|<with|mode|<quote|math>|\<pi\><rsub|i>>>|<pageref|auto-49>>

      <tuple|<tuple|relation>|<pageref|auto-52>>

      <tuple|<tuple|equivalence relation>|<pageref|auto-55>>

      <tuple|<tuple|partition of a set>|<pageref|auto-56>>

      <tuple|<tuple|<with|mode|<quote|math>|R<around*|[|x|]>>>|<pageref|auto-57>>

      <tuple|<tuple|<with|mode|<quote|math>|A/R>>|<pageref|auto-58>>

      <tuple|<tuple|canonical function>|<pageref|auto-60>>

      <tuple|<tuple|preorder>|<pageref|auto-63>>

      <tuple|<tuple|pre-ordered class>|<pageref|auto-64>>

      <tuple|<tuple|order relation>|<pageref|auto-65>>

      <tuple|<tuple|partial ordered class>|<pageref|auto-66>>

      <tuple|<tuple|<with|mode|<quote|math>|\<leqslant\>>>|<pageref|auto-67>>

      <tuple|<tuple|<with|mode|<quote|math>|\<less\>>>|<pageref|auto-68>>

      <tuple|<tuple|comparable elements>|<pageref|auto-69>>

      <tuple|<tuple|comparable elements>|<pageref|auto-70>>

      <tuple|<tuple|totally ordered class>|<pageref|auto-71>>

      <tuple|<tuple|fully ordered class>|<pageref|auto-72>>

      <tuple|<tuple|linear ordered class>|<pageref|auto-73>>

      <tuple|<tuple|chain>|<pageref|auto-74>>

      <tuple|<tuple|initial segment>|<pageref|auto-75>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-S\><rsub|a>>>|<pageref|auto-76>>

      <tuple|<tuple|increasing function>|<pageref|auto-78>>

      <tuple|<tuple|decreasing function>|<pageref|auto-79>>

      <tuple|<tuple|order homomorphism>|<pageref|auto-80>>

      <tuple|<tuple|<with|mode|<quote|math>|A\<cong\>B>>|<pageref|auto-81>>

      <tuple|<tuple|maximal element>|<pageref|auto-83>>

      <tuple|<tuple|minimal element>|<pageref|auto-84>>

      <tuple|<tuple|greatest element>|<pageref|auto-85>>

      <tuple|<tuple|lowest element>|<pageref|auto-86>>

      <tuple|<tuple|<with|mode|<quote|math>|max<around*|(|A|)>>>|<pageref|auto-87>>

      <tuple|<tuple|<with|mode|<quote|math>|min<around*|(|A|)>>>|<pageref|auto-88>>

      <tuple|<tuple|upper bound>|<pageref|auto-89>>

      <tuple|<tuple|lower bound>|<pageref|auto-90>>

      <tuple|<tuple|supremum>|<pageref|auto-91>>

      <tuple|<tuple|infinum>|<pageref|auto-92>>

      <tuple|<tuple|<with|mode|<quote|math>|inf<around*|(|A|)>>>|<pageref|auto-93>>

      <tuple|<tuple|<with|mode|<quote|math>|sup<around*|(|A|)>>>|<pageref|auto-94>>

      <tuple|<tuple|conditional completeness>|<pageref|auto-95>>

      <tuple|<tuple|well-ordered class>|<pageref|auto-97>>

      <tuple|<tuple|immediate successor>|<pageref|auto-98>>

      <tuple|<tuple|section>|<pageref|auto-99>>

      <tuple|<tuple|transfinite induction>|<pageref|auto-100>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-P\><rprime|'><around*|(|A|)>>>|<pageref|auto-102>>

      <tuple|<tuple|choice function>|<pageref|auto-103>>

      <tuple|<tuple|axiom of choice>|<pageref|auto-104>>

      <tuple|<tuple|Hausdorff's maximality>|<pageref|auto-105>>

      <tuple|<tuple|Zorn's Lemma>|<pageref|auto-106>>
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
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|2.2.3<space|2spc>Injectivity, Surjectivity
      and bijectivity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|2.2.4<space|2spc>Restriction of a
      Function/Partial Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|2.2.5<space|2spc>Set operations and
      (Partial) Functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|2.2.6<space|2spc>Indexed sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      2.3<space|2spc>Families <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      <with|par-left|<quote|1tab>|2.3.1<space|2spc>Family
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|2.3.2<space|2spc>Properties of the union
      and intersection of families <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      2.4<space|2spc>Product of a family of sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Relations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50><vspace|0.5fn>

      3.1<space|2spc>Relation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      3.2<space|2spc>Equivalence relations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <with|par-left|<quote|1tab>|3.2.1<space|2spc>Equivalence relations and
      equivalence classes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|3.2.2<space|2spc>Functions and equivalence
      relations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      3.3<space|2spc>Partial ordered classes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      <with|par-left|<quote|1tab>|3.3.1<space|2spc>Order relation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|3.3.2<space|2spc>Order relations and
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <with|par-left|<quote|1tab>|3.3.3<space|2spc>Min, max, supremum and
      infinum <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <with|par-left|<quote|1tab>|3.3.4<space|2spc>Well ordering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      3.4<space|2spc>Axiom of choice <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>
    </associate>
  </collection>
</auxiliary>