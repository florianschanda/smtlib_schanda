(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8633306957416932991833391497493721544742584228515625 309 {+ 3888095799639801 309 (1.94338e+093)}
; 1.8633306957416932991833391497493721544742584228515625 309 I == 1.8633306957416932991833391497493721544742584228515625 309
; [HW: 1.8633306957416932991833391497493721544742584228515625 309] 

; mpf : + 3888095799639801 309
; mpfd: + 3888095799639801 309 (1.94338e+093) class: Pos. norm. non-zero
; hwf : + 3888095799639801 309 (1.94338e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100110100 #b1101110100000011001111011000111111010111111011111001)))
(assert (= r (fp #b0 #b10100110100 #b1101110100000011001111011000111111010111111011111001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
