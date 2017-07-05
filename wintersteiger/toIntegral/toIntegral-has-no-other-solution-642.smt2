(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.93472304963952534961890705744735896587371826171875 448 {- 4209618378051180 448 (-1.40623e+135)}
; -1.93472304963952534961890705744735896587371826171875 448 I == -1.93472304963952534961890705744735896587371826171875 448
; [HW: -1.93472304963952534961890705744735896587371826171875 448] 

; mpf : - 4209618378051180 448
; mpfd: - 4209618378051180 448 (-1.40623e+135) class: Neg. norm. non-zero
; hwf : - 4209618378051180 448 (-1.40623e+135) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111111 #b1110111101001010000000101000000100000100111001101100)))
(assert (= r (fp #b1 #b10110111111 #b1110111101001010000000101000000100000100111001101100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
