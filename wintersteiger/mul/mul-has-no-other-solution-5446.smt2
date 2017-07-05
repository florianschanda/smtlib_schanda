(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.133282399460402434243633251753635704517364501953125p-433 {+ 600250564544914 -433 (5.10917e-131)}
; Y = -1.9261861353212503811249689533724449574947357177734375p-815 {- 4171171533908503 -815 (-8.8156e-246)}
; 1.133282399460402434243633251753635704517364501953125p-433 * -1.9261861353212503811249689533724449574947357177734375p-815 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001110 #b0010001000011110110010111001101011010000100110010010)))
(assert (= y (fp #b1 #b00011010000 #b1110110100011010100010001101100100110110101000010111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
