(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9801524285272795733447992461151443421840667724609375p-613 {+ 4414214111881743 -613 (5.82521e-185)}
; 1.9801524285272795733447992461151443421840667724609375p-613 S == 1.9900514709561054615960529190488159656524658203125p-307
; [HW: 1.9900514709561054615960529190488159656524658203125p-307] 

; mpf : + 4458795435675528 -307
; mpfd: + 4458795435675528 -307 (7.6323e-093) class: Pos. norm. non-zero
; hwf : + 4458795435675528 -307 (7.6323e-093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011010 #b1111101011101011010001010000000110011110101000001111)))
(assert (= r (fp #b0 #b01011001100 #b1111110101110100000000110110000100011100111110001000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
