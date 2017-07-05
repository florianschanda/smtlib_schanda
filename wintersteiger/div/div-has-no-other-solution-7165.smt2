(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8428569330307780216315904908697120845317840576171875p-530 {- 3795890169524051 -530 (-5.24317e-160)}
; Y = 1.4298547355376263201520714574144221842288970947265625p843 {+ 1935893626790697 843 (8.38645e+253)}
; -1.8428569330307780216315904908697120845317840576171875p-530 / 1.4298547355376263201520714574144221842288970947265625p843 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111101101 #b1101011111000101011110001101001010010010111101010011)))
(assert (= y (fp #b0 #b11101001010 #b0110111000001010111101011011111100101010001100101001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
