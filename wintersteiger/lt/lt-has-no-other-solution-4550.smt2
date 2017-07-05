(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.356441284189398910342561066499911248683929443359375p-394 {+ 1605268834654838 -394 (3.36188e-119)}
; Y = -1.626636063697375345071804986218921840190887451171875p-809 {- 2822117942964414 -809 (-4.76457e-244)}
; 1.356441284189398910342561066499911248683929443359375p-394 < -1.626636063697375345071804986218921840190887451171875p-809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110101 #b0101101100111111101111000110101010001001101001110110)))
(assert (= y (fp #b1 #b00011010110 #b1010000001101011001110001001100000010011000010111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
