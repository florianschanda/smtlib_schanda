(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0194733897791523613562958416878245770931243896484375p-58 {+ 87700350953031 -58 (3.53701e-018)}
; 1.0194733897791523613562958416878245770931243896484375p-58 | == 1.0194733897791523613562958416878245770931243896484375p-58
; [HW: 1.0194733897791523613562958416878245770931243896484375p-58] 

; mpf : + 87700350953031 -58
; mpfd: + 87700350953031 -58 (3.53701e-018) class: Pos. norm. non-zero
; hwf : + 87700350953031 -58 (3.53701e-018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000101 #b0000010011111100001101010100010000111110011001000111)))
(assert (= r (fp #b0 #b01111000101 #b0000010011111100001101010100010000111110011001000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
