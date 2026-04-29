(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1812262893421650034042613697238266468048095703125p-997 {+ 816170649151112 -997 (8.81916e-301)}
; 1.1812262893421650034042613697238266468048095703125p-997 S == 1.53702718866138798858855807338841259479522705078125p-499
; [HW: 1.53702718866138798858855807338841259479522705078125p-499] 

; mpf : + 2418555446743252 -499
; mpfd: + 2418555446743252 -499 (9.39104e-151) class: Pos. norm. non-zero
; hwf : + 2418555446743252 -499 (9.39104e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011010 #b0010111001100100110110001001100111100110011010001000)))
(assert (= r (fp #b0 #b01000001100 #b1000100101111010100111010010010001011101000011010100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
