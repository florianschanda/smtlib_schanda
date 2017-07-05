(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.51094542418205879386050582979805767536163330078125p-743 {- 2301093621952980 -743 (-3.26559e-224)}
; Y = 1.3951457864799119423793172245495952665805816650390625p-840 {+ 1779578416747953 -840 (1.90293e-253)}
; -1.51094542418205879386050582979805767536163330078125p-743 < 1.3951457864799119423793172245495952665805816650390625p-840 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011000 #b1000001011001101010100011011111011100111000111010100)))
(assert (= y (fp #b0 #b00010110111 #b0110010100101000010001100011011000010101010110110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
