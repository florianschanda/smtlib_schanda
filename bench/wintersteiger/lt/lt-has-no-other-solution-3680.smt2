(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.71059573135665399234994765720330178737640380859375p-4 {+ 3200238670948892 -4 (0.106912)}
; Y = -1.599557061804233626389759592711925506591796875p-763 {- 2700164960128896 -763 (-3.29696e-230)}
; 1.71059573135665399234994765720330178737640380859375p-4 < -1.599557061804233626389759592711925506591796875p-763 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111011 #b1011010111101001100110100001001011011010101000011100)))
(assert (= y (fp #b1 #b00100000100 #b1001100101111100100100100101010010001000111110000000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
