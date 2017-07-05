(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.457977952212458294667385416687466204166412353515625 803 {- 2062549334927930 803 (-7.77745e+241)}
; -1.457977952212458294667385416687466204166412353515625 803 I == -1.457977952212458294667385416687466204166412353515625 803
; [HW: -1.457977952212458294667385416687466204166412353515625 803] 

; mpf : - 2062549334927930 803
; mpfd: - 2062549334927930 803 (-7.77745e+241) class: Neg. norm. non-zero
; hwf : - 2062549334927930 803 (-7.77745e+241) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100010 #b0111010100111110000010110000011100001010101000111010)))
(assert (= r (fp #b1 #b11100100010 #b0111010100111110000010110000011100001010101000111010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
