(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2595759008578124582555801680427975952625274658203125 830 {+ 1169025930377605 830 (9.01822e+249)}
; 1.2595759008578124582555801680427975952625274658203125 830 I == 1.2595759008578124582555801680427975952625274658203125 830
; [HW: 1.2595759008578124582555801680427975952625274658203125 830] 

; mpf : + 1169025930377605 830
; mpfd: + 1169025930377605 830 (9.01822e+249) class: Pos. norm. non-zero
; hwf : + 1169025930377605 830 (9.01822e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111101 #b0100001001110011100100001111010100000011100110000101)))
(assert (= r (fp #b0 #b11100111101 #b0100001001110011100100001111010100000011100110000101)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
