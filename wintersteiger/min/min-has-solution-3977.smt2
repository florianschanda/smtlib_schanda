(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6710627216440754327919648858369328081607818603515625p667 {- 3022197823138489 667 (-1.02329e+201)}
; Y = -1.65702598591719318932291571400128304958343505859375p-894 {- 2958981985349404 -894 (-1.25462e-269)}
; -1.6710627216440754327919648858369328081607818603515625p667 m -1.65702598591719318932291571400128304958343505859375p-894 == -1.6710627216440754327919648858369328081607818603515625p667
; [HW: -1.6710627216440754327919648858369328081607818603515625p667] 

; mpf : - 3022197823138489 667
; mpfd: - 3022197823138489 667 (-1.02329e+201) class: Neg. norm. non-zero
; hwf : - 3022197823138489 667 (-1.02329e+201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011010 #b1010101111001010110001000011101100000110101010111001)))
(assert (= y (fp #b1 #b00010000001 #b1010100000110010110110101110001000100010111100011100)))
(assert (= r (fp #b1 #b11010011010 #b1010101111001010110001000011101100000110101010111001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
