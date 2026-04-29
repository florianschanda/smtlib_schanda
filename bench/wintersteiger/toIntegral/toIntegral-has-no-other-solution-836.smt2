(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5387879272924624984852925990708172321319580078125 239 {- 2426485108586056 239 (-1.3594e+072)}
; -1.5387879272924624984852925990708172321319580078125 239 I == -1.5387879272924624984852925990708172321319580078125 239
; [HW: -1.5387879272924624984852925990708172321319580078125 239] 

; mpf : - 2426485108586056 239
; mpfd: - 2426485108586056 239 (-1.3594e+072) class: Neg. norm. non-zero
; hwf : - 2426485108586056 239 (-1.3594e+072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101110 #b1000100111101110000000010110111100110011011001001000)))
(assert (= r (fp #b1 #b10011101110 #b1000100111101110000000010110111100110011011001001000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
