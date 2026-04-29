(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7783742991626099172464137154747731983661651611328125p-617 {- 3505486203663501 -617 (-3.26976e-186)}
; -1.7783742991626099172464137154747731983661651611328125p-617 | == 1.7783742991626099172464137154747731983661651611328125p-617
; [HW: 1.7783742991626099172464137154747731983661651611328125p-617] 

; mpf : + 3505486203663501 -617
; mpfd: + 3505486203663501 -617 (3.26976e-186) class: Pos. norm. non-zero
; hwf : + 3505486203663501 -617 (3.26976e-186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010110 #b1100011101000011100010011011111011110011010010001101)))
(assert (= r (fp #b0 #b00110010110 #b1100011101000011100010011011111011110011010010001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
