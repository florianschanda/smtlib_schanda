(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5147286679947258303258195155649445950984954833984375 151 {+ 2318131837377959 151 (4.32379e+045)}
; 1.5147286679947258303258195155649445950984954833984375 151 I == 1.5147286679947258303258195155649445950984954833984375 151
; [HW: 1.5147286679947258303258195155649445950984954833984375 151] 

; mpf : + 2318131837377959 151
; mpfd: + 2318131837377959 151 (4.32379e+045) class: Pos. norm. non-zero
; hwf : + 2318131837377959 151 (4.32379e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010110 #b1000001111000101010000100000101101011001110110100111)))
(assert (= r (fp #b0 #b10010010110 #b1000001111000101010000100000101101011001110110100111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
