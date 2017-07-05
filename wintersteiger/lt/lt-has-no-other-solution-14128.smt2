(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0926197395048387051019744831137359142303466796875p510 {- 417122224321144 510 (-3.66241e+153)}
; Y = 1.8878980382782779567918396423920057713985443115234375p480 {+ 3998737274333047 480 (5.89354e+144)}
; -1.0926197395048387051019744831137359142303466796875p510 < 1.8878980382782779567918396423920057713985443115234375p480 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111101 #b0001011110110101111011010110000000100011001001111000)))
(assert (= y (fp #b0 #b10111011111 #b1110001101001101010010010010110010010110011101110111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
