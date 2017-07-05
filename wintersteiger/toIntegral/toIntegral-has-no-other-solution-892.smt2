(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5918218601084628271991050496581010520458221435546875 620 {+ 2665328708654187 620 (6.92615e+186)}
; 1.5918218601084628271991050496581010520458221435546875 620 I == 1.5918218601084628271991050496581010520458221435546875 620
; [HW: 1.5918218601084628271991050496581010520458221435546875 620] 

; mpf : + 2665328708654187 620
; mpfd: + 2665328708654187 620 (6.92615e+186) class: Pos. norm. non-zero
; hwf : + 2665328708654187 620 (6.92615e+186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101011 #b1001011110000001101000110010111000111001010001101011)))
(assert (= r (fp #b0 #b11001101011 #b1001011110000001101000110010111000111001010001101011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
