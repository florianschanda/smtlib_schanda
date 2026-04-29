(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0078072393106676241103514257702045142650604248046875p-420 {+ 35160680050315 -420 (3.72203e-127)}
; Y = 1.037910317636381751782437277142889797687530517578125p-44 {+ 170732892380706 -44 (5.89984e-014)}
; 1.0078072393106676241103514257702045142650604248046875p-420 < 1.037910317636381751782437277142889797687530517578125p-44 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001011011 #b0000000111111111101001111011110110000010111010001011)))
(assert (= y (fp #b0 #b01111010011 #b0000100110110100011111011001011001101101111000100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
