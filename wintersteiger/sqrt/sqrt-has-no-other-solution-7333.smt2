(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.000661277757054268278125164215452969074249267578125p604 {+ 2978130260258 604 (6.64362e+181)}
; 1.000661277757054268278125164215452969074249267578125p604 S == 1.0003305842355587618186518739094026386737823486328125p302
; [HW: 1.0003305842355587618186518739094026386737823486328125p302] 

; mpf : + 1488819040077 302
; mpfd: + 1488819040077 302 (8.15084e+090) class: Pos. norm. non-zero
; hwf : + 1488819040077 302 (8.15084e+090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011011 #b0000000000101011010101100110011001010111000100100010)))
(assert (= r (fp #b0 #b10100101101 #b0000000000010101101010100100100001111010111101001101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
