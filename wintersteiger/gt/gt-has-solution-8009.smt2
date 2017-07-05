(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.10284810819447987029207070008851587772369384765625p-732 {+ 463186701740420 -732 (4.88156e-221)}
; Y = 1.52945619942617927478067940683104097843170166015625p-314 {+ 2384458742444740 -314 (4.58267e-095)}
; 1.10284810819447987029207070008851587772369384765625p-732 > 1.52945619942617927478067940683104097843170166015625p-314 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100011 #b0001101001010100010000001110110100100110100110000100)))
(assert (= y (fp #b0 #b01011000101 #b1000011110001010011100010000010100110011001011000100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
