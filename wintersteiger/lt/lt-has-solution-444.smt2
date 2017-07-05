(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8799164239464858372485878135194070637226104736328125p90 {- 3962791279002573 90 (-2.32722e+027)}
; Y = 1.2766612487384960683556300864438526332378387451171875p-111 {+ 1245971496726547 -111 (4.91752e-034)}
; -1.8799164239464858372485878135194070637226104736328125p90 < 1.2766612487384960683556300864438526332378387451171875p-111 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011001 #b1110000101000010001100111110100000010000001111001101)))
(assert (= y (fp #b0 #b01110010000 #b0100011011010011010001011000011101100111000000010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
