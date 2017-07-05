(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.547441147333374455996590768336318433284759521484375 914 {+ 2465455747137862 914 (2.14304e+275)}
; 1.547441147333374455996590768336318433284759521484375 914 I == 1.547441147333374455996590768336318433284759521484375 914
; [HW: 1.547441147333374455996590768336318433284759521484375 914] 

; mpf : + 2465455747137862 914
; mpfd: + 2465455747137862 914 (2.14304e+275) class: Pos. norm. non-zero
; hwf : + 2465455747137862 914 (2.14304e+275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010001 #b1000110000100101000110100110000001001000000101000110)))
(assert (= r (fp #b0 #b11110010001 #b1000110000100101000110100110000001001000000101000110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
