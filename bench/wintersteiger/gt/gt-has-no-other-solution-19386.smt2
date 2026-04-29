(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.289777247318089070660107609000988304615020751953125p-253 {+ 1305040703042194 -253 (8.91099e-077)}
; Y = 1.16985395594287755471896161907352507114410400390625p524 {+ 764954212691748 524 (6.42465e+157)}
; 1.289777247318089070660107609000988304615020751953125p-253 > 1.16985395594287755471896161907352507114410400390625p524 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000010 #b0100101000101110110101110111100001011011001010010010)))
(assert (= y (fp #b0 #b11000001011 #b0010101101111011100011001000000111011110111100100100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
