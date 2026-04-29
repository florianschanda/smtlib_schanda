(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8061174457209279164970894271391443908214569091796875p714 {+ 3630430228165627 714 (1.55655e+215)}
; Y = +zero {+ 0 -1023 (0)}
; 1.8061174457209279164970894271391443908214569091796875p714 + +zero == 1.8061174457209279164970894271391443908214569091796875p714
; [HW: 1.8061174457209279164970894271391443908214569091796875p714] 

; mpf : + 3630430228165627 714
; mpfd: + 3630430228165627 714 (1.55655e+215) class: Pos. norm. non-zero
; hwf : + 3630430228165627 714 (1.55655e+215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001001 #b1100111001011101101101101000001000011011001111111011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11011001001 #b1100111001011101101101101000001000011011001111111011)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
