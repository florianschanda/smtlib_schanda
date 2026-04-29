(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9082235990591998042731347595690749585628509521484375p965 {+ 4090275462292103 965 (5.9508e+290)}
; Y = -1.4912992251128811549421016025007702410221099853515625p-288 {- 2212615007145785 -288 (-2.99865e-087)}
; 1.9082235990591998042731347595690749585628509521484375p965 > -1.4912992251128811549421016025007702410221099853515625p-288 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000100 #b1110100010000001010101110111111101101010001010000111)))
(assert (= y (fp #b1 #b01011011111 #b0111110111000101110010010011100001101000111100111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
