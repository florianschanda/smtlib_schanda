(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0755064132997562698079718757071532309055328369140625p-93 {+ 340050654800865 -93 (1.08598e-028)}
; 1.0755064132997562698079718757071532309055328369140625p-93 | == 1.0755064132997562698079718757071532309055328369140625p-93
; [HW: 1.0755064132997562698079718757071532309055328369140625p-93] 

; mpf : + 340050654800865 -93
; mpfd: + 340050654800865 -93 (1.08598e-028) class: Pos. norm. non-zero
; hwf : + 340050654800865 -93 (1.08598e-028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100010 #b0001001101010100011000110110011111000010101111100001)))
(assert (= r (fp #b0 #b01110100010 #b0001001101010100011000110110011111000010101111100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
