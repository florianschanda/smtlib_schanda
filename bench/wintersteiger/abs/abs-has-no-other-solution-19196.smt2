(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3538897491576189491269133213791064918041229248046875p296 {- 1593777742436491 296 (-1.7237e+089)}
; -1.3538897491576189491269133213791064918041229248046875p296 | == 1.3538897491576189491269133213791064918041229248046875p296
; [HW: 1.3538897491576189491269133213791064918041229248046875p296] 

; mpf : + 1593777742436491 296
; mpfd: + 1593777742436491 296 (1.7237e+089) class: Pos. norm. non-zero
; hwf : + 1593777742436491 296 (1.7237e+089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100111 #b0101101010011000100001001100001100000101100010001011)))
(assert (= r (fp #b0 #b10100100111 #b0101101010011000100001001100001100000101100010001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
