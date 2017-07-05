(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2199272943285581760619606939144432544708251953125p-963 {+ 990464480786696 -963 (1.56476e-290)}
; 1.2199272943285581760619606939144432544708251953125p-963 | == 1.2199272943285581760619606939144432544708251953125p-963
; [HW: 1.2199272943285581760619606939144432544708251953125p-963] 

; mpf : + 990464480786696 -963
; mpfd: + 990464480786696 -963 (1.56476e-290) class: Pos. norm. non-zero
; hwf : + 990464480786696 -963 (1.56476e-290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111100 #b0011100001001101001001111011100010100011100100001000)))
(assert (= r (fp #b0 #b00000111100 #b0011100001001101001001111011100010100011100100001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
