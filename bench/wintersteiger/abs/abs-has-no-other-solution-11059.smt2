(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.77090625833618364737276351661421358585357666015625p-679 {+ 3471853137780420 -679 (7.06039e-205)}
; 1.77090625833618364737276351661421358585357666015625p-679 | == 1.77090625833618364737276351661421358585357666015625p-679
; [HW: 1.77090625833618364737276351661421358585357666015625p-679] 

; mpf : + 3471853137780420 -679
; mpfd: + 3471853137780420 -679 (7.06039e-205) class: Pos. norm. non-zero
; hwf : + 3471853137780420 -679 (7.06039e-205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011000 #b1100010101011010000111001100111111010101111011000100)))
(assert (= r (fp #b0 #b00101011000 #b1100010101011010000111001100111111010101111011000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
