(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.266533538427314642405008271452970802783966064453125p-841 {+ 1200360344342994 -841 (8.63755e-254)}
; 1.266533538427314642405008271452970802783966064453125p-841 | == 1.266533538427314642405008271452970802783966064453125p-841
; [HW: 1.266533538427314642405008271452970802783966064453125p-841] 

; mpf : + 1200360344342994 -841
; mpfd: + 1200360344342994 -841 (8.63755e-254) class: Pos. norm. non-zero
; hwf : + 1200360344342994 -841 (8.63755e-254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110110 #b0100010000111011100010101011111011010101000111010010)))
(assert (= r (fp #b0 #b00010110110 #b0100010000111011100010101011111011010101000111010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
