(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.502399802304634324201515482855029404163360595703125p879 {- 2262607562450162 879 (-6.05552e+264)}
; Y = -1.0993289349516255359873184715979732573032379150390625p338 {- 447337754435249 338 (-6.15554e+101)}
; -1.502399802304634324201515482855029404163360595703125p879 < -1.0993289349516255359873184715979732573032379150390625p338 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101110 #b1000000010011101010001100000000001101010010011110010)))
(assert (= y (fp #b1 #b10101010001 #b0001100101101101100111101111111100101001111010110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
