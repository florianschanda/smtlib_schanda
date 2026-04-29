(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7398697441959980469761148924590088427066802978515625p-174 {+ 3332077104263801 -174 (7.26604e-053)}
; 1.7398697441959980469761148924590088427066802978515625p-174 S == 1.3190412215681501795216945538413710892200469970703125p-87
; [HW: 1.3190412215681501795216945538413710892200469970703125p-87] 

; mpf : + 1436833926570149 -87
; mpfd: + 1436833926570149 -87 (8.5241e-027) class: Pos. norm. non-zero
; hwf : + 1436833926570149 -87 (8.5241e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010001 #b1011110101101000000110101000001010011111001001111001)))
(assert (= r (fp #b0 #b01110101000 #b0101000110101100101011110111110010110110000010100101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
