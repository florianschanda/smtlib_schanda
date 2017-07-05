(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.56922199310460275256673412513919174671173095703125p-50 {- 2563547956036980 -50 (-1.39375e-015)}
; Y = 0.759930132030582239366367502952925860881805419921875p-1022 {+ 3422421059440542 -1023 (1.6909e-308)}
; -1.56922199310460275256673412513919174671173095703125p-50 > 0.759930132030582239366367502952925860881805419921875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001101 #b1001000110111000100010000101010010001100010101110100)))
(assert (= y (fp #b0 #b00000000000 #b1100001010001010110001111111100001010000111110011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
