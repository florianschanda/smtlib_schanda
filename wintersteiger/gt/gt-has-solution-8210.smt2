(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0531267457659299058292390327551402151584625244140625p268 {+ 239261592434849 268 (4.99482e+080)}
; Y = -1.67600423573081780403981611016206443309783935546875p768 {- 3044452424138188 768 (-2.60203e+231)}
; 1.0531267457659299058292390327551402151584625244140625p268 > -1.67600423573081780403981611016206443309783935546875p768 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001011 #b0000110110011001101101101110001110011011100010100001)))
(assert (= y (fp #b1 #b11011111111 #b1010110100001110100111010001010001101011110111001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
