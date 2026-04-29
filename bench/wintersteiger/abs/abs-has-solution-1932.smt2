(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.73223711657482493109228016692213714122772216796875p826 {- 3297702805353228 826 (-7.75146e+248)}
; -1.73223711657482493109228016692213714122772216796875p826 | == 1.73223711657482493109228016692213714122772216796875p826
; [HW: 1.73223711657482493109228016692213714122772216796875p826] 

; mpf : + 3297702805353228 826
; mpfd: + 3297702805353228 826 (7.75146e+248) class: Pos. norm. non-zero
; hwf : + 3297702805353228 826 (7.75146e+248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111001 #b1011101101110011111001000100010010011011001100001100)))
(assert (= r (fp #b0 #b11100111001 #b1011101101110011111001000100010010011011001100001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
