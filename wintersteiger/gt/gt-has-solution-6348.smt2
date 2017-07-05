(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.198507266649129210378532661707140505313873291015625p-868 {- 893997252111354 -868 (-6.08982e-262)}
; Y = +zero {+ 0 -1023 (0)}
; -1.198507266649129210378532661707140505313873291015625p-868 > +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010011011 #b0011001011010001010111110100101001000110101111111010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
