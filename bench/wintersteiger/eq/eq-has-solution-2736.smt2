(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.727173932362749741997731689480133354663848876953125p245 {- 3274900250822418 245 (-9.76529e+073)}
; Y = 1.0828179333440772769137083741952665150165557861328125p594 {+ 372978813747981 594 (7.02058e+178)}
; -1.727173932362749741997731689480133354663848876953125p245 = 1.0828179333440772769137083741952665150165557861328125p594 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110100 #b1011101000101000000100100010001000000000011100010010)))
(assert (= y (fp #b0 #b11001010001 #b0001010100110011100011100101101100111100001100001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
