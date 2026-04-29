(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5907508495466247122607228448032401502132415771484375p-559 {+ 2660505305886983 -559 (8.43014e-169)}
; 1.5907508495466247122607228448032401502132415771484375p-559 | == 1.5907508495466247122607228448032401502132415771484375p-559
; [HW: 1.5907508495466247122607228448032401502132415771484375p-559] 

; mpf : + 2660505305886983 -559
; mpfd: + 2660505305886983 -559 (8.43014e-169) class: Pos. norm. non-zero
; hwf : + 2660505305886983 -559 (8.43014e-169) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111010000 #b1001011100111011011100101001101011100011000100000111)))
(assert (= r (fp #b0 #b00111010000 #b1001011100111011011100101001101011100011000100000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
