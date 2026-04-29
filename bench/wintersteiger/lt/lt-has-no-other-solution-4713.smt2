(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.091095687300514871509449221775867044925689697265625p-86 {- 410258503381658 -86 (-1.41021e-026)}
; Y = 1.2805406875611600181485982830054126679897308349609375p533 {+ 1263442935962703 533 (3.60065e+160)}
; -1.091095687300514871509449221775867044925689697265625p-86 < 1.2805406875611600181485982830054126679897308349609375p533 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101001 #b0001011101010010000011000000010111000011001010011010)))
(assert (= y (fp #b0 #b11000010100 #b0100011111010001100000111011011001000101110001001111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
