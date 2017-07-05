(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.640665229703154093243711031391285359859466552734375p256 {- 2885299689760358 256 (-1.89976e+077)}
; +zero % -1.640665229703154093243711031391285359859466552734375p256 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10011111111 #b1010010000000010101000101111000101000010011001100110)))
(assert (= r (_ +zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
