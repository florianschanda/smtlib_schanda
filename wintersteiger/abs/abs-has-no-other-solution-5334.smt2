(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3354362300181439326962617997196502983570098876953125p747 {- 1510670480516277 747 (-9.88621e+224)}
; -1.3354362300181439326962617997196502983570098876953125p747 | == 1.3354362300181439326962617997196502983570098876953125p747
; [HW: 1.3354362300181439326962617997196502983570098876953125p747] 

; mpf : + 1510670480516277 747
; mpfd: + 1510670480516277 747 (9.88621e+224) class: Pos. norm. non-zero
; hwf : + 1510670480516277 747 (9.88621e+224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101010 #b0101010111011111001001100001010111010010010010110101)))
(assert (= r (fp #b0 #b11011101010 #b0101010111011111001001100001010111010010010010110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
