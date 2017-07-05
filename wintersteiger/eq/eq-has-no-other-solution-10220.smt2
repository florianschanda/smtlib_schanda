(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9542415121175105152673268094076775014400482177734375p-347 {+ 4297521718393879 -347 (6.81663e-105)}
; Y = 1.33973698218503756152131245471537113189697265625p672 {+ 1530039346372512 672 (2.62529e+202)}
; 1.9542415121175105152673268094076775014400482177734375p-347 = 1.33973698218503756152131245471537113189697265625p672 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100100 #b1111010001001001001010111111011100000111110000010111)))
(assert (= y (fp #b0 #b11010011111 #b0101011011111001000000001011101110111001111110100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
