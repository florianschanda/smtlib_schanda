(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0177930988807830647857599615235812962055206298828125 340 {+ 80132993489261 340 (2.2796e+102)}
; 1.0177930988807830647857599615235812962055206298828125 340 I == 1.0177930988807830647857599615235812962055206298828125 340
; [HW: 1.0177930988807830647857599615235812962055206298828125 340] 

; mpf : + 80132993489261 340
; mpfd: + 80132993489261 340 (2.2796e+102) class: Pos. norm. non-zero
; hwf : + 80132993489261 340 (2.2796e+102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010011 #b0000010010001110000101101010100111001001100101101101)))
(assert (= r (fp #b0 #b10101010011 #b0000010010001110000101101010100111001001100101101101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
