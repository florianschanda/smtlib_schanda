(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6233831452219489310806466164649464190006256103515625p-341 {+ 2807468100530617 -341 (3.62404e-103)}
; Y = 1.16833498800565482866886668489314615726470947265625p495 {+ 758113389255684 495 (1.19513e+149)}
; 1.6233831452219489310806466164649464190006256103515625p-341 > 1.16833498800565482866886668489314615726470947265625p495 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101010 #b1001111110010110000010011010110110011011000110111001)))
(assert (= y (fp #b0 #b10111101110 #b0010101100011000000000000111010001000001110000000100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
