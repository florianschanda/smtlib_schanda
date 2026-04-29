(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.26361108299608826399662575568072497844696044921875p-640 {+ 1187198775151916 -640 (2.76959e-193)}
; Y = -1.2111932906891615946420870386646129190921783447265625p-103 {- 951130025250857 -103 (-1.19433e-031)}
; 1.26361108299608826399662575568072497844696044921875p-640 < -1.2111932906891615946420870386646129190921783447265625p-103 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111111 #b0100001101111100000001000001010001010100110100101100)))
(assert (= y (fp #b1 #b01110011000 #b0011011000010000110000110111010010100101000000101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
