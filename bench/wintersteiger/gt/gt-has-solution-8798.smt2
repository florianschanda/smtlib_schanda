(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9280611579301509816986026635277085006237030029296875p445 {+ 4179615885031259 445 (1.75174e+134)}
; Y = -1.072500952811083596571961606969125568866729736328125p966 {- 326515264064002 966 (-6.68919e+290)}
; 1.9280611579301509816986026635277085006237030029296875p445 > -1.072500952811083596571961606969125568866729736328125p966 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110111100 #b1110110110010101011010101000000111111111011101011011)))
(assert (= y (fp #b1 #b11111000101 #b0001001010001111011011000010010101000000101000000010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
