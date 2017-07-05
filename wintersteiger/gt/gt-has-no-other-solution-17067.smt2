(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.6635267740549919412984536393196322023868560791015625p-1022 {- 2988258932384409 -1023 (-1.4764e-308)}
; Y = -1.0950906638067821052828776373644359409809112548828125p-398 {- 428250278086637 -398 (-1.69634e-120)}
; -0.6635267740549919412984536393196322023868560791015625p-1022 > -1.0950906638067821052828776373644359409809112548828125p-398 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1010100111011100111001000000001010010110001010011001)))
(assert (= y (fp #b1 #b01001110001 #b0001100001010111110111001001101100110100011111101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
