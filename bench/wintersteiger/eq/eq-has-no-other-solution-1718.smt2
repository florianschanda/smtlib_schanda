(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.23642904919612117708993537235073745250701904296875p-566 {+ 1064781777859212 -566 (5.11908e-171)}
; Y = 1.9641215453552167691242402725038118660449981689453125p-723 {+ 4342017432401621 -723 (4.45124e-218)}
; 1.23642904919612117708993537235073745250701904296875p-566 = 1.9641215453552167691242402725038118660449981689453125p-723 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001001 #b0011110010000110100111010011101000011111001010001100)))
(assert (= y (fp #b0 #b00100101100 #b1111011011010000101010110110101010101011011011010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
