(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6731156079170836914471465206588618457317352294921875p556 {+ 3031443200992643 556 (3.94642e+167)}
; Y = -1.1634708970141274253506935565383173525333404541015625p-768 {- 736207470878745 -768 (-7.49409e-232)}
; 1.6731156079170836914471465206588618457317352294921875p556 < -1.1634708970141274253506935565383173525333404541015625p-768 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101011 #b1010110001010001010011011111001001101110010110000011)))
(assert (= y (fp #b1 #b00011111111 #b0010100111011001001110101000110010000110000000011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
