(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9402115038635419086432420954224653542041778564453125p671 {+ 4234336178449301 671 (1.90097e+202)}
; 1.9402115038635419086432420954224653542041778564453125p671 S == 1.96987893225118870788037384045310318470001220703125p335
; [HW: 1.96987893225118870788037384045310318470001220703125p335] 

; mpf : + 4367946397880948 335
; mpfd: + 4367946397880948 335 (1.37876e+101) class: Pos. norm. non-zero
; hwf : + 4367946397880948 335 (1.37876e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011110 #b1111000010110001101100110111110001101010101110010101)))
(assert (= r (fp #b0 #b10101001110 #b1111100001001001111111000101011100011001001001110100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
