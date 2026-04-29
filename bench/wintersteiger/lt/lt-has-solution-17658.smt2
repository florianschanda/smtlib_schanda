(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.77922936626165739681937338900752365589141845703125p-151 {- 3509337083532148 -151 (-6.23308e-046)}
; Y = 1.718455574302276911424769423319958150386810302734375p-376 {+ 3235636256709990 -376 (1.1165e-113)}
; -1.77922936626165739681937338900752365589141845703125p-151 < 1.718455574302276911424769423319958150386810302734375p-376 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101000 #b1100011101111011100100110110010000101101001101110100)))
(assert (= y (fp #b0 #b01010000111 #b1011011111101100101101000101101101000001110101100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
