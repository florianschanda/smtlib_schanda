(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.615125126789678677852180044283159077167510986328125p240 {- 2770277291796226 240 (-2.85368e+072)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.615125126789678677852180044283159077167510986328125p240 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101111 #b1001110101111000110101110001111010000010011100000010)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
