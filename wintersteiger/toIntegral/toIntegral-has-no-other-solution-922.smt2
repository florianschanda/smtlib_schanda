(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5212790999248129164556075920700095593929290771484375 853 {- 2347632360177415 853 (-9.13682e+256)}
; -1.5212790999248129164556075920700095593929290771484375 853 I == -1.5212790999248129164556075920700095593929290771484375 853
; [HW: -1.5212790999248129164556075920700095593929290771484375 853] 

; mpf : - 2347632360177415 853
; mpfd: - 2347632360177415 853 (-9.13682e+256) class: Neg. norm. non-zero
; hwf : - 2347632360177415 853 (-9.13682e+256) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010100 #b1000010101110010100011000000111001000011111100000111)))
(assert (= r (fp #b1 #b11101010100 #b1000010101110010100011000000111001000011111100000111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
