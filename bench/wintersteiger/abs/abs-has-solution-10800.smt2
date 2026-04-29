(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.638975181620539789406620911904610693454742431640625p90 {- 2877688389845258 90 (-2.02895e+027)}
; -1.638975181620539789406620911904610693454742431640625p90 | == 1.638975181620539789406620911904610693454742431640625p90
; [HW: 1.638975181620539789406620911904610693454742431640625p90] 

; mpf : + 2877688389845258 90
; mpfd: + 2877688389845258 90 (2.02895e+027) class: Pos. norm. non-zero
; hwf : + 2877688389845258 90 (2.02895e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011001 #b1010001110010011111000001010010000000100000100001010)))
(assert (= r (fp #b0 #b10001011001 #b1010001110010011111000001010010000000100000100001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
