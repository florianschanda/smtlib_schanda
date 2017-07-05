(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0029854322927402865417434441042132675647735595703125p579 {- 13445191761125 579 (-1.98455e+174)}
; Y = -1.8189636245968656691474052422563545405864715576171875p493 {- 3688284274564435 493 (-4.6517e+148)}
; -1.0029854322927402865417434441042132675647735595703125p579 > -1.8189636245968656691474052422563545405864715576171875p493 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000010 #b0000000011000011101001110011111000001111110011100101)))
(assert (= y (fp #b1 #b10111101100 #b1101000110100111100110011010000001000001110101010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
