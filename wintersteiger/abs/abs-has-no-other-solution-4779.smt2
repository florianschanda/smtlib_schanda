(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4014771591302619402341633758624084293842315673828125p133 {+ 1808092384256813 133 (1.52607e+040)}
; 1.4014771591302619402341633758624084293842315673828125p133 | == 1.4014771591302619402341633758624084293842315673828125p133
; [HW: 1.4014771591302619402341633758624084293842315673828125p133] 

; mpf : + 1808092384256813 133
; mpfd: + 1808092384256813 133 (1.52607e+040) class: Pos. norm. non-zero
; hwf : + 1808092384256813 133 (1.52607e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000100 #b0110011011000111001101010000010010001110001100101101)))
(assert (= r (fp #b0 #b10010000100 #b0110011011000111001101010000010010001110001100101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
