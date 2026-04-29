(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.26583306799558048538756338530220091342926025390625p830 {+ 1197205705967652 830 (9.06302e+249)}
; 1.26583306799558048538756338530220091342926025390625p830 S == 1.125092470864319960099919626372866332530975341796875p415
; [HW: 1.125092470864319960099919626372866332530975341796875p415] 

; mpf : + 563366405171406 415
; mpfd: + 563366405171406 415 (9.51999e+124) class: Pos. norm. non-zero
; hwf : + 563366405171406 415 (9.51999e+124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111101 #b0100010000001101101000101100110100111100100000100100)))
(assert (= r (fp #b0 #b10110011110 #b0010000000000110000011110110011101010110100011001110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
