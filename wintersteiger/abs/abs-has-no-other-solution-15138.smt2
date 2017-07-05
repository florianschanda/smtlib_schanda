(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.293071414920060835385129394126124680042266845703125p-43 {+ 1319876315026930 -43 (1.47005e-013)}
; 1.293071414920060835385129394126124680042266845703125p-43 | == 1.293071414920060835385129394126124680042266845703125p-43
; [HW: 1.293071414920060835385129394126124680042266845703125p-43] 

; mpf : + 1319876315026930 -43
; mpfd: + 1319876315026930 -43 (1.47005e-013) class: Pos. norm. non-zero
; hwf : + 1319876315026930 -43 (1.47005e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010100 #b0100101100000110101110100110111001111001010111110010)))
(assert (= r (fp #b0 #b01111010100 #b0100101100000110101110100110111001111001010111110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
