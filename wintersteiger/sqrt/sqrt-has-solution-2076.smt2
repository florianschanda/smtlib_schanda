(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1884886628384581097606087496387772262096405029296875p-793 {+ 848877471722843 -793 (2.28144e-239)}
; 1.1884886628384581097606087496387772262096405029296875p-793 S == 1.5417448964329072413903531924006529152393341064453125p-397
; [HW: 1.5417448964329072413903531924006529152393341064453125p-397] 

; mpf : + 2439802113705109 -397
; mpfd: + 2439802113705109 -397 (4.77644e-120) class: Pos. norm. non-zero
; hwf : + 2439802113705109 -397 (4.77644e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100110 #b0011000001000000110010110000001010001110110101011011)))
(assert (= r (fp #b0 #b01001110010 #b1000101010101111110010110010010011110100010010010101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
