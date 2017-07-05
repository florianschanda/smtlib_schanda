(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2950367724687372739111879127449356019496917724609375p-168 {+ 1328727498550799 -168 (3.46133e-051)}
; Y = -1.993515462583892894343762236530892550945281982421875p266 {- 4474395867079646 266 (-2.36373e+080)}
; 1.2950367724687372739111879127449356019496917724609375p-168 > -1.993515462583892894343762236530892550945281982421875p266 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010111 #b0100101110000111100001111010100011011110111000001111)))
(assert (= y (fp #b1 #b10100001001 #b1111111001010111000001111000001111011110001111011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
