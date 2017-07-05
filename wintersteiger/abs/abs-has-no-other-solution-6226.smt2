(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0186196981999000588103854170185513794422149658203125p932 {- 83855665874821 932 (-3.69801e+280)}
; -1.0186196981999000588103854170185513794422149658203125p932 | == 1.0186196981999000588103854170185513794422149658203125p932
; [HW: 1.0186196981999000588103854170185513794422149658203125p932] 

; mpf : + 83855665874821 932
; mpfd: + 83855665874821 932 (3.69801e+280) class: Pos. norm. non-zero
; hwf : + 83855665874821 932 (3.69801e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100011 #b0000010011000100010000101011001011010100011110000101)))
(assert (= r (fp #b0 #b11110100011 #b0000010011000100010000101011001011010100011110000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
