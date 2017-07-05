(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.217425979476188135919301203102804720401763916015625p-544 {+ 979199560149626 -544 (2.1141e-164)}
; 1.217425979476188135919301203102804720401763916015625p-544 S == 1.1033702821248123626673987018875777721405029296875p-272
; [HW: 1.1033702821248123626673987018875777721405029296875p-272] 

; mpf : + 465538364058488 -272
; mpfd: + 465538364058488 -272 (1.45399e-082) class: Pos. norm. non-zero
; hwf : + 465538364058488 -272 (1.45399e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011111 #b0011011110101001001110101001111100100110101001111010)))
(assert (= r (fp #b0 #b01011101111 #b0001101001110110011110011000110100011010101101111000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
