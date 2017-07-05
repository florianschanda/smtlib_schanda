(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.122628032197086955790155116119422018527984619140625p1 {+ 552267560107978 1 (2.24526)}
; Y = -1.67992713087165146390589143265970051288604736328125p183 {- 3062119573232660 183 (-2.05958e+055)}
; 1.122628032197086955790155116119422018527984619140625p1 m -1.67992713087165146390589143265970051288604736328125p183 == -1.67992713087165146390589143265970051288604736328125p183
; [HW: -1.67992713087165146390589143265970051288604736328125p183] 

; mpf : - 3062119573232660 183
; mpfd: - 3062119573232660 183 (-2.05958e+055) class: Neg. norm. non-zero
; hwf : - 3062119573232660 183 (-2.05958e+055) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000000 #b0001111101100100100011001111101111011011111111001010)))
(assert (= y (fp #b1 #b10010110110 #b1010111000001111101101000101011011000001110000010100)))
(assert (= r (fp #b1 #b10010110110 #b1010111000001111101101000101011011000001110000010100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
