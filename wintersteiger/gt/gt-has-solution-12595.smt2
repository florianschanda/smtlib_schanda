(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.457554628606884339347971035749651491641998291015625p721 {+ 2060642854895610 721 (1.60787e+217)}
; Y = -1.2267047117400220468397264994564466178417205810546875p854 {- 1020987255315499 854 (-1.47352e+257)}
; 1.457554628606884339347971035749651491641998291015625p721 > -1.2267047117400220468397264994564466178417205810546875p854 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010000 #b0111010100100010010011001101010111111111111111111010)))
(assert (= y (fp #b1 #b11101010101 #b0011101000001001010100011110101011000101110000101011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
