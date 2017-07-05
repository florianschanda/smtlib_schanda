(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2334664749744568279510303909773938357830047607421875p-785 {- 1051439529698467 -785 (-6.06151e-237)}
; Y = -1.68278617682340669858831461169756948947906494140625p-638 {- 3074995571515620 -638 (-1.47534e-192)}
; -1.2334664749744568279510303909773938357830047607421875p-785 < -1.68278617682340669858831461169756948947906494140625p-638 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101110 #b0011101111000100011101010111101010111010010010100011)))
(assert (= y (fp #b1 #b00110000001 #b1010111011001011000100110010101110011110000011100100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
