(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5986998094065445474853959240135736763477325439453125p237 {+ 2696304238550101 237 (3.53082e+071)}
; 1.5986998094065445474853959240135736763477325439453125p237 | == 1.5986998094065445474853959240135736763477325439453125p237
; [HW: 1.5986998094065445474853959240135736763477325439453125p237] 

; mpf : + 2696304238550101 237
; mpfd: + 2696304238550101 237 (3.53082e+071) class: Pos. norm. non-zero
; hwf : + 2696304238550101 237 (3.53082e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101100 #b1001100101000100011001000000010110000101110001010101)))
(assert (= r (fp #b0 #b10011101100 #b1001100101000100011001000000010110000101110001010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
