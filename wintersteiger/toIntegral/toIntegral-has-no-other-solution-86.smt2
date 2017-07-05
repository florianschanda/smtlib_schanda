(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.543663773013161488734112936072051525115966796875 53 {+ 2448443965556912 53 (1.39041e+016)}
; 1.543663773013161488734112936072051525115966796875 53 I == 1.543663773013161488734112936072051525115966796875 53
; [HW: 1.543663773013161488734112936072051525115966796875 53] 

; mpf : + 2448443965556912 53
; mpfd: + 2448443965556912 53 (1.39041e+016) class: Pos. norm. non-zero
; hwf : + 2448443965556912 53 (1.39041e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110100 #b1000101100101101100011001000110100011100100010110000)))
(assert (= r (fp #b0 #b10000110100 #b1000101100101101100011001000110100011100100010110000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
