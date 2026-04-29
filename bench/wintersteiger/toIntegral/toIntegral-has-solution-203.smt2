(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.253574322702812882113221348845399916172027587890625 24 {+ 1141997225235114 24 (2.10315e+007)}
; 1.253574322702812882113221348845399916172027587890625 24 I == 1.253574311733245849609375 24
; [HW: 1.253574311733245849609375 24] 

; mpf : + 1141997175832576 24
; mpfd: + 1141997175832576 24 (2.10315e+007) class: Pos. norm. non-zero
; hwf : + 1141997175832576 24 (2.10315e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010111 #b0100000011101010001111110010111100011101001010101010)))
(assert (= r (fp #b0 #b10000010111 #b0100000011101010001111110000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
