(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.911610595029098913499865375342778861522674560546875p224 {- 4105529136080046 224 (-5.15369e+067)}
; Y = -1.8571166234223170921069367977906949818134307861328125p801 {- 3860110105857805 801 (-2.47666e+241)}
; -1.911610595029098913499865375342778861522674560546875p224 < -1.8571166234223170921069367977906949818134307861328125p801 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011111 #b1110100101011111010011111101110001010110010010101110)))
(assert (= y (fp #b1 #b11100100000 #b1101101101101011111111101011101001110100111100001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
