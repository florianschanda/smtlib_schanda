(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.541033915986152802446440546191297471523284912109375p877 {+ 2436600142430038 877 (1.55281e+264)}
; Y = -1.57939884821330789321791598922573029994964599609375p-987 {- 2609380436912348 -987 (-1.2075e-297)}
; 1.541033915986152802446440546191297471523284912109375p877 = -1.57939884821330789321791598922573029994964599609375p-987 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101100 #b1000101010000001001100101101111100101111111101010110)))
(assert (= y (fp #b1 #b00000100100 #b1001010001010011011110111010000001101010100011011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
