(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4091654799328170444283614415326155722141265869140625p-479 {- 1842717502958305 -479 (-9.02805e-145)}
; Y = 1.446542734883262681933047133497893810272216796875p-358 {+ 2011049694425264 -358 (2.46373e-108)}
; -1.4091654799328170444283614415326155722141265869140625p-479 = 1.446542734883262681933047133497893810272216796875p-358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100000 #b0110100010111111000100011010001011110110101011100001)))
(assert (= y (fp #b0 #b01010011001 #b0111001001010000100111111110101010010111000010110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
