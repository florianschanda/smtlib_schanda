(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.387496464688208419602233334444463253021240234375p676 {+ 1745128933977200 676 (4.3502e+203)}
; 1.387496464688208419602233334444463253021240234375p676 | == 1.387496464688208419602233334444463253021240234375p676
; [HW: 1.387496464688208419602233334444463253021240234375p676] 

; mpf : + 1745128933977200 676
; mpfd: + 1745128933977200 676 (4.3502e+203) class: Pos. norm. non-zero
; hwf : + 1745128933977200 676 (4.3502e+203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100011 #b0110001100110010111101111110001100100110110001110000)))
(assert (= r (fp #b0 #b11010100011 #b0110001100110010111101111110001100100110110001110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
