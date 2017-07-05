(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7854316343738323435985648757196031510829925537109375 715 {+ 3537269615890991 715 (3.07744e+215)}
; 1.7854316343738323435985648757196031510829925537109375 715 I == 1.7854316343738323435985648757196031510829925537109375 715
; [HW: 1.7854316343738323435985648757196031510829925537109375 715] 

; mpf : + 3537269615890991 715
; mpfd: + 3537269615890991 715 (3.07744e+215) class: Pos. norm. non-zero
; hwf : + 3537269615890991 715 (3.07744e+215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001010 #b1100100100010010000011000010111011100001001000101111)))
(assert (= r (fp #b0 #b11011001010 #b1100100100010010000011000010111011100001001000101111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
