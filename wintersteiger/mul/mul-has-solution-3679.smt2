(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.260500776488752361359502174309454858303070068359375p-628 {+ 1173191199924470 -628 (1.13163e-189)}
; Y = -1.1494564566629767998762190472916699945926666259765625p245 {- 673092042535497 245 (-6.49892e+073)}
; 1.260500776488752361359502174309454858303070068359375p-628 * -1.1494564566629767998762190472916699945926666259765625p245 == -1.4488907561636921172976144589483737945556640625p-383
; [HW: -1.4488907561636921172976144589483737945556640625p-383] 

; mpf : - 2021624242188864 -383
; mpfd: - 2021624242188864 -383 (-7.3544e-116) class: Neg. norm. non-zero
; hwf : - 2021624242188864 -383 (-7.3544e-116) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110001011 #b0100001010110000001011011100101110011010000011110110)))
(assert (= y (fp #b1 #b10011110100 #b0010011001000010110001110100000110001011001001001001)))
(assert (= r (fp #b1 #b01010000000 #b0111001011101010100000010010110100110011001001000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
