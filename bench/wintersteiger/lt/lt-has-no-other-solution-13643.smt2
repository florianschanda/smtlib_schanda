(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.90760462189233681584710211609490215778350830078125p251 {+ 4087487836954068 251 (6.90267e+075)}
; Y = 1.9712994422857195164766608286299742758274078369140625p-377 {+ 4374343806343137 -377 (6.4039e-114)}
; 1.90760462189233681584710211609490215778350830078125p251 < 1.9712994422857195164766608286299742758274078369140625p-377 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011111010 #b1110100001011000110001101100100010111001110111010100)))
(assert (= y (fp #b0 #b01010000110 #b1111100010100111000101001000101100111101011111100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
