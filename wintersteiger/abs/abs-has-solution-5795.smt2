(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.059556216065662415104497995343990623950958251953125p101 {- 268217352480914 101 (-2.68629e+030)}
; -1.059556216065662415104497995343990623950958251953125p101 | == 1.059556216065662415104497995343990623950958251953125p101
; [HW: 1.059556216065662415104497995343990623950958251953125p101] 

; mpf : + 268217352480914 101
; mpfd: + 268217352480914 101 (2.68629e+030) class: Pos. norm. non-zero
; hwf : + 268217352480914 101 (2.68629e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100100 #b0000111100111111000100111000000001000110100010010010)))
(assert (= r (fp #b0 #b10001100100 #b0000111100111111000100111000000001000110100010010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
