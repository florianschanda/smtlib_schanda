(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7075601364331254305994889364228583872318267822265625p-106 {+ 3186567566782441 -106 (2.10473e-032)}
; Y = -1.6890103829932259227319946148782037198543548583984375p-984 {- 3103026904102695 -984 (-1.03304e-296)}
; 1.7075601364331254305994889364228583872318267822265625p-106 > -1.6890103829932259227319946148782037198543548583984375p-984 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010101 #b1011010100100010101010010011110111101110111111101001)))
(assert (= y (fp #b1 #b00000100111 #b1011000001100010111111000000010110001111011100100111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
