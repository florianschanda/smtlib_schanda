(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3057628778384062773199048024252988398075103759765625p928 {+ 1377033582696777 928 (2.96279e+279)}
; 1.3057628778384062773199048024252988398075103759765625p928 | == 1.3057628778384062773199048024252988398075103759765625p928
; [HW: 1.3057628778384062773199048024252988398075103759765625p928] 

; mpf : + 1377033582696777 928
; mpfd: + 1377033582696777 928 (2.96279e+279) class: Pos. norm. non-zero
; hwf : + 1377033582696777 928 (2.96279e+279) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011111 #b0100111001000110011110011101100010100101100101001001)))
(assert (= r (fp #b0 #b11110011111 #b0100111001000110011110011101100010100101100101001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
