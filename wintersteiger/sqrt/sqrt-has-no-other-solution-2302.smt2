(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.871928269133836142401605684426613152027130126953125p-1002 {+ 3926815827964946 -1002 (4.36751e-302)}
; 1.871928269133836142401605684426613152027130126953125p-1002 S == 1.36818429647976724794489200576208531856536865234375p-501
; [HW: 1.36818429647976724794489200576208531856536865234375p-501] 

; mpf : + 1658154660429948 -501
; mpfd: + 1658154660429948 -501 (2.08986e-151) class: Pos. norm. non-zero
; hwf : + 1658154660429948 -501 (2.08986e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010101 #b1101111100110110101100001110100001100011010000010010)))
(assert (= r (fp #b0 #b01000001010 #b0101111001000001010100110111100001001000000001111100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
