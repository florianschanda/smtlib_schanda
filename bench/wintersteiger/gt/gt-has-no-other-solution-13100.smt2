(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.006316183062350599897172287455759942531585693359375p599 {- 28445559686006 599 (-2.08786e+180)}
; Y = 1.7469459276723142693299450911581516265869140625p-126 {+ 3363945401530944 -126 (2.05353e-038)}
; -1.006316183062350599897172287455759942531585693359375p599 > 1.7469459276723142693299450911581516265869140625p-126 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010110 #b0000000110011101111011111111011110110000001101110110)))
(assert (= y (fp #b0 #b01110000001 #b1011111100110111110110010010101100111011101001000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
