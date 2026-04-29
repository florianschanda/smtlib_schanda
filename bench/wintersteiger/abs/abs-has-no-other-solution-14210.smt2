(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.38660862704574316950356660527177155017852783203125p-52 {+ 1741130468701428 -52 (3.07889e-016)}
; 1.38660862704574316950356660527177155017852783203125p-52 | == 1.38660862704574316950356660527177155017852783203125p-52
; [HW: 1.38660862704574316950356660527177155017852783203125p-52] 

; mpf : + 1741130468701428 -52
; mpfd: + 1741130468701428 -52 (3.07889e-016) class: Pos. norm. non-zero
; hwf : + 1741130468701428 -52 (3.07889e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001011 #b0110001011111000110010000111000110000011010011110100)))
(assert (= r (fp #b0 #b01111001011 #b0110001011111000110010000111000110000011010011110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
