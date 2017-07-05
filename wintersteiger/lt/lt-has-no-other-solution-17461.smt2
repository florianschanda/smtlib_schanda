(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5914027369282151003204717198968864977359771728515625p-536 {- 2663441145655801 -536 (-7.07461e-162)}
; Y = 1.2043138939939723730532250556279905140399932861328125p608 {+ 920147976857869 608 (1.27931e+183)}
; -1.5914027369282151003204717198968864977359771728515625p-536 < 1.2043138939939723730532250556279905140399932861328125p608 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100111 #b1001011101100110001010110111010111011111000111111001)))
(assert (= y (fp #b0 #b11001011111 #b0011010001001101111010100101010011010010100100001101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
