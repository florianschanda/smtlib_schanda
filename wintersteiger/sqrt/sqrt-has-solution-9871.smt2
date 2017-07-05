(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9959148485096138703198676012107171118259429931640625p470 {+ 4485201740640641 470 (6.08471e+141)}
; 1.9959148485096138703198676012107171118259429931640625p470 S == 1.4127685049255640503673703278764151036739349365234375p235
; [HW: 1.4127685049255640503673703278764151036739349365234375p235] 

; mpf : + 1858944084973047 235
; mpfd: + 1858944084973047 235 (7.80046e+070) class: Pos. norm. non-zero
; hwf : + 1858944084973047 235 (7.80046e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010101 #b1111111011110100010001101000011111110011000110000001)))
(assert (= r (fp #b0 #b10011101010 #b0110100110101011001100100101110101111001010111110111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
