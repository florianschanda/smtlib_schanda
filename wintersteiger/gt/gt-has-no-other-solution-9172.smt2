(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1906434866118080773134124683565460145473480224609375p651 {- 858581935265551 651 (-1.11252e+196)}
; Y = -1.7259005551488020291373004511115141212940216064453125p384 {- 3269165469676181 384 (-6.80039e+115)}
; -1.1906434866118080773134124683565460145473480224609375p651 > -1.7259005551488020291373004511115141212940216064453125p384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001010 #b0011000011001110000000101111010000110001011100001111)))
(assert (= y (fp #b1 #b10101111111 #b1011100111010100100111100110100010000011001010010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
