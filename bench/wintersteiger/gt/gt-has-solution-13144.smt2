(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2638679097148564078878507643821649253368377685546875p168 {- 1188355419866859 168 (-4.72869e+050)}
; Y = 1.2281599471737336681798069548676721751689910888671875p698 {+ 1027541053072499 698 (1.61507e+210)}
; -1.2638679097148564078878507643821649253368377685546875p168 > 1.2281599471737336681798069548676721751689910888671875p698 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100111 #b0100001110001100110110001110101010110000011011101011)))
(assert (= y (fp #b0 #b11010111001 #b0011101001101000101100001011011101011110010001110011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
