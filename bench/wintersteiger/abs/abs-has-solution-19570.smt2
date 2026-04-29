(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3367497116872286699873484394629485905170440673828125p-170 {+ 1516585876071725 -170 (8.93204e-052)}
; 1.3367497116872286699873484394629485905170440673828125p-170 | == 1.3367497116872286699873484394629485905170440673828125p-170
; [HW: 1.3367497116872286699873484394629485905170440673828125p-170] 

; mpf : + 1516585876071725 -170
; mpfd: + 1516585876071725 -170 (8.93204e-052) class: Pos. norm. non-zero
; hwf : + 1516585876071725 -170 (8.93204e-052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010101 #b0101011000110101001110101010011010100010010100101101)))
(assert (= r (fp #b0 #b01101010101 #b0101011000110101001110101010011010100010010100101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
