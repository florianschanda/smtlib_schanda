(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.743711253104392344681627946556545794010162353515625p-548 {- 3349377722352186 -548 (-1.8925e-165)}
; -1.743711253104392344681627946556545794010162353515625p-548 | == 1.743711253104392344681627946556545794010162353515625p-548
; [HW: 1.743711253104392344681627946556545794010162353515625p-548] 

; mpf : + 3349377722352186 -548
; mpfd: + 3349377722352186 -548 (1.8925e-165) class: Pos. norm. non-zero
; hwf : + 3349377722352186 -548 (1.8925e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b1011111001100011110111000101010111000000001000111010)))
(assert (= r (fp #b0 #b00111011011 #b1011111001100011110111000101010111000000001000111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
