(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.906407469452195524439730434096418321132659912109375p-911 {+ 4082096341670742 -911 (1.10126e-274)}
; 1.906407469452195524439730434096418321132659912109375p-911 | == 1.906407469452195524439730434096418321132659912109375p-911
; [HW: 1.906407469452195524439730434096418321132659912109375p-911] 

; mpf : + 4082096341670742 -911
; mpfd: + 4082096341670742 -911 (1.10126e-274) class: Pos. norm. non-zero
; hwf : + 4082096341670742 -911 (1.10126e-274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110000 #b1110100000001010010100011110011000100101101101010110)))
(assert (= r (fp #b0 #b00001110000 #b1110100000001010010100011110011000100101101101010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
