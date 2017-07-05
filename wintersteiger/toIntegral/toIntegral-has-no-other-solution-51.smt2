(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1773145885043125868918423293507657945156097412109375 877 {+ 798553914715375 877 (1.18631e+264)}
; 1.1773145885043125868918423293507657945156097412109375 877 I == 1.1773145885043125868918423293507657945156097412109375 877
; [HW: 1.1773145885043125868918423293507657945156097412109375 877] 

; mpf : + 798553914715375 877
; mpfd: + 798553914715375 877 (1.18631e+264) class: Pos. norm. non-zero
; hwf : + 798553914715375 877 (1.18631e+264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101100 #b0010110101100100011111010010011010111010110011101111)))
(assert (= r (fp #b0 #b11101101100 #b0010110101100100011111010010011010111010110011101111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
