(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.437986356758871320238313273875974118709564208984375p-227 {- 1972515193092614 -227 (-6.66723e-069)}
; +zero m -1.437986356758871320238313273875974118709564208984375p-227 == -1.437986356758871320238313273875974118709564208984375p-227
; [HW: -1.437986356758871320238313273875974118709564208984375p-227] 

; mpf : - 1972515193092614 -227
; mpfd: - 1972515193092614 -227 (-6.66723e-069) class: Neg. norm. non-zero
; hwf : - 1972515193092614 -227 (-6.66723e-069) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01100011100 #b0111000000011111110111111011011001011111101000000110)))
(assert (= r (fp #b1 #b01100011100 #b0111000000011111110111111011011001011111101000000110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
