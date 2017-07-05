(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0725766471764395237897815604810602962970733642578125p-623 {+ 326856161179613 -623 (3.08135e-188)}
; 1.0725766471764395237897815604810602962970733642578125p-623 | == 1.0725766471764395237897815604810602962970733642578125p-623
; [HW: 1.0725766471764395237897815604810602962970733642578125p-623] 

; mpf : + 326856161179613 -623
; mpfd: + 326856161179613 -623 (3.08135e-188) class: Pos. norm. non-zero
; hwf : + 326856161179613 -623 (3.08135e-188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010000 #b0001001010010100011000100001011000010011011111011101)))
(assert (= r (fp #b0 #b00110010000 #b0001001010010100011000100001011000010011011111011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
