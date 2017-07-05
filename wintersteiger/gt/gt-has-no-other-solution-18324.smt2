(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3903715447380313730008083439315669238567352294921875p718 {+ 1758077143418243 718 (1.9172e+216)}
; Y = 1.114309656177275176247576382593251764774322509765625p-161 {+ 514804924964826 -161 (3.81221e-049)}
; 1.3903715447380313730008083439315669238567352294921875p718 > 1.114309656177275176247576382593251764774322509765625p-161 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001101 #b0110001111101111011000111011100111110000010110000011)))
(assert (= y (fp #b0 #b01101011110 #b0001110101000011011001011100101011100101111111011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
