(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.069298236387106637579336165799759328365325927734375p-523 {+ 312091511570406 -523 (3.89414e-158)}
; Y = -1.108343436692365902018764245440252125263214111328125p91 {- 487935461115778 91 (-2.74413e+027)}
; 1.069298236387106637579336165799759328365325927734375p-523 = -1.108343436692365902018764245440252125263214111328125p91 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110100 #b0001000110111101100001110111101011110011111111100110)))
(assert (= y (fp #b1 #b10001011010 #b0001101110111100011001010011110101010100011110000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
