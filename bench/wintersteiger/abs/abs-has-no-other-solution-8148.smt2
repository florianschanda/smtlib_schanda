(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5691769103568378174173858496942557394504547119140625p931 {+ 2563344921390945 931 (2.84838e+280)}
; 1.5691769103568378174173858496942557394504547119140625p931 | == 1.5691769103568378174173858496942557394504547119140625p931
; [HW: 1.5691769103568378174173858496942557394504547119140625p931] 

; mpf : + 2563344921390945 931
; mpfd: + 2563344921390945 931 (2.84838e+280) class: Pos. norm. non-zero
; hwf : + 2563344921390945 931 (2.84838e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100010 #b1001000110110101100100111111011110011110111101100001)))
(assert (= r (fp #b0 #b11110100010 #b1001000110110101100100111111011110011110111101100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
