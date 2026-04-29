(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4545490368157223404210753869847394526004791259765625p-853 {+ 2047106872824905 -853 (2.42182e-257)}
; 1.4545490368157223404210753869847394526004791259765625p-853 S == 1.705607831135705243497113769990392029285430908203125p-427
; [HW: 1.705607831135705243497113769990392029285430908203125p-427] 

; mpf : + 3177775165372466 -427
; mpfd: + 3177775165372466 -427 (4.9212e-129) class: Pos. norm. non-zero
; hwf : + 3177775165372466 -427 (4.9212e-129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101010 #b0111010001011101010100110101111110001101010001001001)))
(assert (= r (fp #b0 #b01001010100 #b1011010010100010101101101111111010000111100000110010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
