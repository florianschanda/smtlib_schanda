(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9187711719298314871906541156931780278682708740234375p-514 {+ 4137777507541943 -514 (3.57771e-155)}
; Y = -1.9407313155462466713885305580333806574344635009765625p821 {- 4236677202149833 821 (-2.71389e+247)}
; 1.9187711719298314871906541156931780278682708740234375p-514 < -1.9407313155462466713885305580333806574344635009765625p821 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111101 #b1110101100110100100101100110011111110010001110110111)))
(assert (= y (fp #b1 #b11100110100 #b1111000011010011110001000111101010011000000111001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
