(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.210309874723300982424234462087042629718780517578125p145 {- 947151473436194 145 (-5.39816e+043)}
; Y = -1.1644971376040647026428587196278385818004608154296875p-265 {- 740829247617179 -265 (-1.96422e-080)}
; -1.210309874723300982424234462087042629718780517578125p145 > -1.1644971376040647026428587196278385818004608154296875p-265 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010000 #b0011010111010110110111100011000111110110011000100010)))
(assert (= y (fp #b1 #b01011110110 #b0010101000011100011111000000001001001011100010011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
