(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.85722087673339775193426248733885586261749267578125p38 {+ 3860579621030740 38 (5.10509e+011)}
; Y = -1.382735404479686014411754513275809586048126220703125p335 {- 1723687024996210 335 (-9.67804e+100)}
; 1.85722087673339775193426248733885586261749267578125p38 - -1.382735404479686014411754513275809586048126220703125p335 == 1.382735404479686014411754513275809586048126220703125p335
; [HW: 1.382735404479686014411754513275809586048126220703125p335] 

; mpf : + 1723687024996210 335
; mpfd: + 1723687024996210 335 (9.67804e+100) class: Pos. norm. non-zero
; hwf : + 1723687024996210 335 (9.67804e+100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100101 #b1101101101110010110100111100111100000100101101010100)))
(assert (= y (fp #b1 #b10101001110 #b0110000111111010111100101000110101000010111101110010)))
(assert (= r (fp #b0 #b10101001110 #b0110000111111010111100101000110101000010111101110010)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
