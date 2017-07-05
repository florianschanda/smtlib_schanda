(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5462161943218359905216630068025551736354827880859375p60 {+ 2459939049211551 60 (1.78267e+018)}
; 1.5462161943218359905216630068025551736354827880859375p60 | == 1.5462161943218359905216630068025551736354827880859375p60
; [HW: 1.5462161943218359905216630068025551736354827880859375p60] 

; mpf : + 2459939049211551 60
; mpfd: + 2459939049211551 60 (1.78267e+018) class: Pos. norm. non-zero
; hwf : + 2459939049211551 60 (1.78267e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111011 #b1000101111010100110100110001001100101000011010011111)))
(assert (= r (fp #b0 #b10000111011 #b1000101111010100110100110001001100101000011010011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
