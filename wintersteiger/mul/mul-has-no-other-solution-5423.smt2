(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.39249988072146013706742451176978647708892822265625p-312 {+ 1767662316560132 -312 (1.66892e-094)}
; Y = -1.071295209018811700474316239706240594387054443359375p-126 {- 321085076770422 -126 (-1.2593e-038)}
; 1.39249988072146013706742451176978647708892822265625p-312 * -1.071295209018811700474316239706240594387054443359375p-126 == -1.4917784507761668866265836186357773840427398681640625p-438
; [HW: -1.4917784507761668866265836186357773840427398681640625p-438] 

; mpf : - 2214773247664385 -438
; mpfd: - 2214773247664385 -438 (-2.10168e-132) class: Neg. norm. non-zero
; hwf : - 2214773247664385 -438 (-2.10168e-132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000111 #b0110010001111010110111110100011101100001111100000100)))
(assert (= y (fp #b1 #b01110000001 #b0001001001000000011001110001111100011000111001110110)))
(assert (= r (fp #b1 #b01001001001 #b0111110111100101001100010100101011110110000100000001)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
