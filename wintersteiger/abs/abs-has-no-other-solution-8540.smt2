(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.61959193860418526611510969814844429492950439453125p-796 {- 2790394023819572 -796 (-3.88623e-240)}
; -1.61959193860418526611510969814844429492950439453125p-796 | == 1.61959193860418526611510969814844429492950439453125p-796
; [HW: 1.61959193860418526611510969814844429492950439453125p-796] 

; mpf : + 2790394023819572 -796
; mpfd: + 2790394023819572 -796 (3.88623e-240) class: Pos. norm. non-zero
; hwf : + 2790394023819572 -796 (3.88623e-240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100011 #b1001111010011101100100111100100100101011100100110100)))
(assert (= r (fp #b0 #b00011100011 #b1001111010011101100100111100100100101011100100110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
