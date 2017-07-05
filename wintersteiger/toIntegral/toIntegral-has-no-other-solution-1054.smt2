(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0992681924736926735164388446719385683536529541015625 653 {+ 447064194634265 653 (4.10857e+196)}
; 1.0992681924736926735164388446719385683536529541015625 653 I == 1.0992681924736926735164388446719385683536529541015625 653
; [HW: 1.0992681924736926735164388446719385683536529541015625 653] 

; mpf : + 447064194634265 653
; mpfd: + 447064194634265 653 (4.10857e+196) class: Pos. norm. non-zero
; hwf : + 447064194634265 653 (4.10857e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001100 #b0001100101101001101000111110100000110101001000011001)))
(assert (= r (fp #b0 #b11010001100 #b0001100101101001101000111110100000110101001000011001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
