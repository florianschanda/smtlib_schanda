(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2000579601015655129003789625130593776702880859375p-135 {+ 900980954565912 -135 (2.7552e-041)}
; Y = 1.0909790354686308422316187716205604374408721923828125p-777 {+ 409733150235053 -777 (1.37249e-234)}
; 1.2000579601015655129003789625130593776702880859375p-135 - 1.0909790354686308422316187716205604374408721923828125p-777 == 1.2000579601015652908557740374817512929439544677734375p-135
; [HW: 1.2000579601015652908557740374817512929439544677734375p-135] 

; mpf : + 900980954565911 -135
; mpfd: + 900980954565911 -135 (2.7552e-041) class: Pos. norm. non-zero
; hwf : + 900980954565911 -135 (2.7552e-041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111000 #b0011001100110110111111111001101111110000110100011000)))
(assert (= y (fp #b0 #b00011110110 #b0001011101001010011001101110110111110101100110101101)))
(assert (= r (fp #b0 #b01101111000 #b0011001100110110111111111001101111110000110100010111)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
