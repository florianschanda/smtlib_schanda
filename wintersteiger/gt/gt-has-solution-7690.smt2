(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.41869088262956122292735017254017293453216552734375p-589 {+ 1885616102993916 -589 (7.00197e-178)}
; Y = 1.0436162812099538665933096126536838710308074951171875p-278 {+ 196430267804435 -278 (2.14883e-084)}
; 1.41869088262956122292735017254017293453216552734375p-589 > 1.0436162812099538665933096126536838710308074951171875p-278 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110010 #b0110101100101111010100110110000000000110111111111100)))
(assert (= y (fp #b0 #b01011101001 #b0000101100101010011011111100010101011110101100010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
