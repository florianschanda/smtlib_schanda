(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5002213980909042678746345700346864759922027587890625p73 {+ 2252796902044945 73 (1.41692e+022)}
; 1.5002213980909042678746345700346864759922027587890625p73 | == 1.5002213980909042678746345700346864759922027587890625p73
; [HW: 1.5002213980909042678746345700346864759922027587890625p73] 

; mpf : + 2252796902044945 73
; mpfd: + 2252796902044945 73 (1.41692e+022) class: Pos. norm. non-zero
; hwf : + 2252796902044945 73 (1.41692e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001000 #b1000000000001110100000100111000110001111010100010001)))
(assert (= r (fp #b0 #b10001001000 #b1000000000001110100000100111000110001111010100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
