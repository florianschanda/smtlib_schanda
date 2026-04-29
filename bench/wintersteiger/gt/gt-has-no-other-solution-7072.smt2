(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.95147934837210446090693949372507631778717041015625p759 {- 4285082038779332 759 (-5.9174e+228)}
; Y = 1.3496342344347744823807033753837458789348602294921875p97 {+ 1574612607916419 97 (2.13858e+029)}
; -1.95147934837210446090693949372507631778717041015625p759 > 1.3496342344347744823807033753837458789348602294921875p97 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110110 #b1111001110010100001001101000110000010011110111000100)))
(assert (= y (fp #b0 #b10001100000 #b0101100110000001101000010001001001110101100110000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
