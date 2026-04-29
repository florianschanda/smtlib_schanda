(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.048022905277993910289069390273652970790863037109375p-49 {- 216275938315222 -49 (-1.86166e-015)}
; Y = -1.5250963102046555253110682315309531986713409423828125p278 {- 2364823546971309 278 (-7.40689e+083)}
; -1.048022905277993910289069390273652970790863037109375p-49 > -1.5250963102046555253110682315309531986713409423828125p278 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001110 #b0000110001001011001110101010011110100000101111010110)))
(assert (= y (fp #b1 #b10100010101 #b1000011001101100101101100011011110010100010010101101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
