(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.032745031140425595594933838583528995513916015625p-168 {+ 147470510042256 -168 (2.76028e-051)}
; Y = -1.5789623368716181328608172407257370650768280029296875p-192 {- 2607414564596571 -192 (-2.51543e-058)}
; 1.032745031140425595594933838583528995513916015625p-168 < -1.5789623368716181328608172407257370650768280029296875p-192 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010111 #b0000100001100001111110100111010111011010110010010000)))
(assert (= y (fp #b1 #b01100111111 #b1001010000110110111000000010111001111010101101011011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
