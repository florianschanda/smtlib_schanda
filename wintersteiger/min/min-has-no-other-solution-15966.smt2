(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3947281326356926189902196711045689880847930908203125p-768 {- 1777697471050757 -768 (-8.98365e-232)}
; Y = -1.87706550186717979755712804035283625125885009765625p-795 {- 3949951867388548 -795 (-9.00809e-240)}
; -1.3947281326356926189902196711045689880847930908203125p-768 m -1.87706550186717979755712804035283625125885009765625p-795 == -1.3947281326356926189902196711045689880847930908203125p-768
; [HW: -1.3947281326356926189902196711045689880847930908203125p-768] 

; mpf : - 1777697471050757 -768
; mpfd: - 1777697471050757 -768 (-8.98365e-232) class: Neg. norm. non-zero
; hwf : - 1777697471050757 -768 (-8.98365e-232) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011111111 #b0110010100001100111001110010010001111011010000000101)))
(assert (= y (fp #b1 #b00011100100 #b1110000010000111010111010101111011111000001010000100)))
(assert (= r (fp #b1 #b00011111111 #b0110010100001100111001110010010001111011010000000101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
