(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.64227768287827213811169713153503835201263427734375p-862 {+ 2892561533278972 -862 (5.3406e-260)}
; 1.64227768287827213811169713153503835201263427734375p-862 | == 1.64227768287827213811169713153503835201263427734375p-862
; [HW: 1.64227768287827213811169713153503835201263427734375p-862] 

; mpf : + 2892561533278972 -862
; mpfd: + 2892561533278972 -862 (5.3406e-260) class: Pos. norm. non-zero
; hwf : + 2892561533278972 -862 (5.3406e-260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100001 #b1010010001101100010011110110101011101001101011111100)))
(assert (= r (fp #b0 #b00010100001 #b1010010001101100010011110110101011101001101011111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
