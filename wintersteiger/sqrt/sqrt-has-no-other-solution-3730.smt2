(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8259039292208056881605671151191927492618560791015625p506 {+ 3719540627882649 506 (3.82521e+152)}
; 1.8259039292208056881605671151191927492618560791015625p506 S == 1.3512601264082373386798963110777549445629119873046875p253
; [HW: 1.3512601264082373386798963110777549445629119873046875p253] 

; mpf : + 1581934974402251 253
; mpfd: + 1581934974402251 253 (1.95582e+076) class: Pos. norm. non-zero
; hwf : + 1581934974402251 253 (1.95582e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111001 #b1101001101101110011100001001110110100100001010011001)))
(assert (= r (fp #b0 #b10011111100 #b0101100111101100001011110000001101001111111011001011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
