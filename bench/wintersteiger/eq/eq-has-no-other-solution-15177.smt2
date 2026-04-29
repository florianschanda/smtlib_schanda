(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0074664618101569768526815096265636384487152099609375p-54 {- 33625954625999 -54 (-5.59256e-017)}
; Y = 1.04052993992201603390412856242619454860687255859375p188 {+ 182530622330140 188 (4.0822e+056)}
; -1.0074664618101569768526815096265636384487152099609375p-54 = 1.04052993992201603390412856242619454860687255859375p188 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001001 #b0000000111101001010100100111000101001010100111001111)))
(assert (= y (fp #b0 #b10010111011 #b0000101001100000001010111000111001111001010100011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
