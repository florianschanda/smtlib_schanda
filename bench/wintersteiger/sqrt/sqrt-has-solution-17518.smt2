(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.456551277772368369056721348897553980350494384765625p122 {+ 2056124164451162 122 (7.74435e+036)}
; 1.456551277772368369056721348897553980350494384765625p122 S == 1.2068766622038757940771347421105019748210906982421875p61
; [HW: 1.2068766622038757940771347421105019748210906982421875p61] 

; mpf : + 931689658813027 61
; mpfd: + 931689658813027 61 (2.78287e+018) class: Pos. norm. non-zero
; hwf : + 931689658813027 61 (2.78287e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111001 #b0111010011100000100010110110011011111010101101011010)))
(assert (= r (fp #b0 #b10000111100 #b0011010011110101110111100111001001111000101001100011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
