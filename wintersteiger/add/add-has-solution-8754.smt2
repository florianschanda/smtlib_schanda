(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5792385007946514452470410105888731777667999267578125p-906 {- 2608658296337437 -906 (-2.91925e-273)}
; Y = -zero {- 0 -1023 (-0)}
; -1.5792385007946514452470410105888731777667999267578125p-906 + -zero == -1.5792385007946514452470410105888731777667999267578125p-906
; [HW: -1.5792385007946514452470410105888731777667999267578125p-906] 

; mpf : - 2608658296337437 -906
; mpfd: - 2608658296337437 -906 (-2.91925e-273) class: Neg. norm. non-zero
; hwf : - 2608658296337437 -906 (-2.91925e-273) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110101 #b1001010001001000111110010111000101111111010000011101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00001110101 #b1001010001001000111110010111000101111111010000011101)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
