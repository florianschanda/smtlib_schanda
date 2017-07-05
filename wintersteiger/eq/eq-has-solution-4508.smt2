(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2710232626468151995169364454341121017932891845703125p-927 {- 1220580264664933 -927 (-1.12033e-279)}
; Y = -1.1262323610782949412367770491982810199260711669921875p-851 {- 568500014314307 -851 (-7.5007e-257)}
; -1.2710232626468151995169364454341121017932891845703125p-927 = -1.1262323610782949412367770491982810199260711669921875p-851 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100000 #b0100010101100001110001111101000110000101111101100101)))
(assert (= y (fp #b1 #b00010101100 #b0010000001010000110000111001011010000111001101000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
