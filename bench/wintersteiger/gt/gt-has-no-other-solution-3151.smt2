(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.89745673214794141614447653410024940967559814453125p-971 {- 4041785804482612 -971 (-9.50706e-293)}
; Y = -1.0037926542378066141480985606904141604900360107421875p-447 {- 17080596212131 -447 (-2.76208e-135)}
; -1.89745673214794141614447653410024940967559814453125p-971 > -1.0037926542378066141480985606904141604900360107421875p-447 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110100 #b1110010110111111101110010111001000100110100000110100)))
(assert (= y (fp #b1 #b01001000000 #b0000000011111000100011100010110111101010100110100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
