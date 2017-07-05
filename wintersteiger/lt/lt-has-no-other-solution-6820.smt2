(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7970101600286898513303412983077578246593475341796875p33 {- 3589414659715707 33 (-1.54362e+010)}
; Y = -1.7549442327547366549111984568298794329166412353515625p597 {- 3399966565319737 597 (-9.10271e+179)}
; -1.7970101600286898513303412983077578246593475341796875p33 < -1.7549442327547366549111984568298794329166412353515625p597 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100000 #b1100110000001000110110111001101111100111001001111011)))
(assert (= y (fp #b1 #b11001010100 #b1100000101000100000001100111010111111100010000111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
