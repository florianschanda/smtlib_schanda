(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1432829535319795066783399306586943566799163818359375 1005 {- 645289056135167 1005 (-3.92012e+302)}
; -1.1432829535319795066783399306586943566799163818359375 1005 I == -1.1432829535319795066783399306586943566799163818359375 1005
; [HW: -1.1432829535319795066783399306586943566799163818359375 1005] 

; mpf : - 645289056135167 1005
; mpfd: - 645289056135167 1005 (-3.92012e+302) class: Neg. norm. non-zero
; hwf : - 645289056135167 1005 (-3.92012e+302) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101100 #b0010010010101110001100010000111101111110011111111111)))
(assert (= r (fp #b1 #b11111101100 #b0010010010101110001100010000111101111110011111111111)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
