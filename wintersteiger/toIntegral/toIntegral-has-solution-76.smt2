(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5272927904879394223058852730900980532169342041015625 668 {- 2374715614756633 668 (-1.87051e+201)}
; -1.5272927904879394223058852730900980532169342041015625 668 I == -1.5272927904879394223058852730900980532169342041015625 668
; [HW: -1.5272927904879394223058852730900980532169342041015625 668] 

; mpf : - 2374715614756633 668
; mpfd: - 2374715614756633 668 (-1.87051e+201) class: Neg. norm. non-zero
; hwf : - 2374715614756633 668 (-1.87051e+201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011011 #b1000011011111100101010010000101010001111111100011001)))
(assert (= r (fp #b1 #b11010011011 #b1000011011111100101010010000101010001111111100011001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
