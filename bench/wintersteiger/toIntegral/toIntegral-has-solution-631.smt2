(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3192272022162558897662165691144764423370361328125 688 {- 1437671508947656 688 (-1.69417e+207)}
; -1.3192272022162558897662165691144764423370361328125 688 I == -1.3192272022162558897662165691144764423370361328125 688
; [HW: -1.3192272022162558897662165691144764423370361328125 688] 

; mpf : - 1437671508947656 688
; mpfd: - 1437671508947656 688 (-1.69417e+207) class: Neg. norm. non-zero
; hwf : - 1437671508947656 688 (-1.69417e+207) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010101111 #b0101000110111000110111111011100110000011001011001000)))
(assert (= r (fp #b1 #b11010101111 #b0101000110111000110111111011100110000011001011001000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
