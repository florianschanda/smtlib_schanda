(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6707713185180612658342624854412861168384552001953125p644 {+ 3020885460128757 644 (1.21965e+194)}
; Y = -1.3746090524625420581372736705816350877285003662109375p-16 {- 1687089189079919 -16 (-2.09749e-005)}
; 1.6707713185180612658342624854412861168384552001953125p644 - -1.3746090524625420581372736705816350877285003662109375p-16 == 1.6707713185180612658342624854412861168384552001953125p644
; [HW: 1.6707713185180612658342624854412861168384552001953125p644] 

; mpf : + 3020885460128757 644
; mpfd: + 3020885460128757 644 (1.21965e+194) class: Pos. norm. non-zero
; hwf : + 3020885460128757 644 (1.21965e+194) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000011 #b1010101110110111101010110100110000100001001111110101)))
(assert (= y (fp #b1 #b01111101111 #b0101111111100110011000001111110100011100101101101111)))
(assert (= r (fp #b0 #b11010000011 #b1010101110110111101010110100110000100001001111110101)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
