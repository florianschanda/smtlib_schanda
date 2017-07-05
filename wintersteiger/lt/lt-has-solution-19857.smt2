(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1637823230758239656523755911621265113353729248046875p495 {+ 737610009174155 495 (1.19047e+149)}
; Y = 1.777538422572135790034053570707328617572784423828125p-190 {+ 3501721750162114 -190 (1.13271e-057)}
; 1.1637823230758239656523755911621265113353729248046875p495 < 1.777538422572135790034053570707328617572784423828125p-190 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101110 #b0010100111101101101000110110100101000110000010001011)))
(assert (= y (fp #b0 #b01101000001 #b1100011100001100110000100001000001010100101011000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
