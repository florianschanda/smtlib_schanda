(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8100770107027155386703043404850177466869354248046875 22 {+ 3648262523542155 22 (7.59201e+006)}
; 1.8100770107027155386703043404850177466869354248046875 22 I == 1.8100769519805908203125 22
; [HW: 1.8100769519805908203125 22] 

; mpf : + 3648262259081216 22
; mpfd: + 3648262259081216 22 (7.59201e+006) class: Pos. norm. non-zero
; hwf : + 3648262259081216 22 (7.59201e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010101 #b1100111101100001001101001111110000110101101010001011)))
(assert (= r (fp #b0 #b10000010101 #b1100111101100001001101000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
