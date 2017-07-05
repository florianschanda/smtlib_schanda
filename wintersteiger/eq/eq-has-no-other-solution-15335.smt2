(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7286507551589191944430012881639413535594940185546875p338 {+ 3281551269416939 338 (9.67934e+101)}
; Y = -1.5074648729711095374028673177235759794712066650390625p-630 {- 2285418612816305 -630 (-3.38337e-190)}
; 1.7286507551589191944430012881639413535594940185546875p338 = -1.5074648729711095374028673177235759794712066650390625p-630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010001 #b1011101010001000110110110001101110011100111111101011)))
(assert (= y (fp #b1 #b00110001001 #b1000000111101001001101111100100101000111100110110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
