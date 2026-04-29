(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1912475676482696673730288239312358200550079345703125p321 {- 861302474396261 321 (-5.08898e+096)}
; Y = 1.3205213305117207145400470835738815367221832275390625p809 {+ 1443499744656881 809 (4.50829e+243)}
; -1.1912475676482696673730288239312358200550079345703125p321 > 1.3205213305117207145400470835738815367221832275390625p809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000000 #b0011000011110101100110011100000001111101001001100101)))
(assert (= y (fp #b0 #b11100101000 #b0101001000001101101011111001100000110111110111110001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
