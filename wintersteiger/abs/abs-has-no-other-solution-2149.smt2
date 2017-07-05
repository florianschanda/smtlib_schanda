(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9179351755126237133453059868770651519298553466796875p-676 {+ 4134012514388923 -676 (6.11726e-204)}
; 1.9179351755126237133453059868770651519298553466796875p-676 | == 1.9179351755126237133453059868770651519298553466796875p-676
; [HW: 1.9179351755126237133453059868770651519298553466796875p-676] 

; mpf : + 4134012514388923 -676
; mpfd: + 4134012514388923 -676 (6.11726e-204) class: Pos. norm. non-zero
; hwf : + 4134012514388923 -676 (6.11726e-204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011011 #b1110101011111101110011001011011010101100101110111011)))
(assert (= r (fp #b0 #b00101011011 #b1110101011111101110011001011011010101100101110111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
