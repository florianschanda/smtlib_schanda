(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.870328498078797085923952181474305689334869384765625p993 {- 3919611099637594 993 (-1.56568e+299)}
; Y = -1.7076303742761294035545915903639979660511016845703125p-158 {- 3186883889906021 -158 (-4.67363e-048)}
; -1.870328498078797085923952181474305689334869384765625p993 + -1.7076303742761294035545915903639979660511016845703125p-158 == -1.870328498078797085923952181474305689334869384765625p993
; [HW: -1.870328498078797085923952181474305689334869384765625p993] 

; mpf : - 3919611099637594 993
; mpfd: - 3919611099637594 993 (-1.56568e+299) class: Neg. norm. non-zero
; hwf : - 3919611099637594 993 (-1.56568e+299) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100000 #b1101111011001101110110010011010000000110011101011010)))
(assert (= y (fp #b1 #b01101100001 #b1011010100100111010000111010001100101100000101100101)))
(assert (= r (fp #b1 #b11111100000 #b1101111011001101110110010011010000000110011101011010)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
