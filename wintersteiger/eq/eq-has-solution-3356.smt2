(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1067784708376724456257989004370756447315216064453125p376 {- 480887481475733 376 (-1.70349e+113)}
; Y = 1.5449022192169514777759786738897673785686492919921875p346 {+ 2454021431418819 346 (2.21452e+104)}
; -1.1067784708376724456257989004370756447315216064453125p376 = 1.5449022192169514777759786738897673785686492919921875p346 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110111 #b0001101101010101110101010111100000101010001010010101)))
(assert (= y (fp #b0 #b10101011001 #b1000101101111110101101100011101100001101111111000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
