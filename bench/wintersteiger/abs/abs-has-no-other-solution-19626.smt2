(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.182431665207559934316350336303003132343292236328125p-79 {+ 821599179449346 -79 (1.95617e-024)}
; 1.182431665207559934316350336303003132343292236328125p-79 | == 1.182431665207559934316350336303003132343292236328125p-79
; [HW: 1.182431665207559934316350336303003132343292236328125p-79] 

; mpf : + 821599179449346 -79
; mpfd: + 821599179449346 -79 (1.95617e-024) class: Pos. norm. non-zero
; hwf : + 821599179449346 -79 (1.95617e-024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110000 #b0010111010110011110101110111001111010010010000000010)))
(assert (= r (fp #b0 #b01110110000 #b0010111010110011110101110111001111010010010000000010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
