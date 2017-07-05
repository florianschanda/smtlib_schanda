(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.4076161637483781685631356594967655837535858154296875p347 {+ 1835740003167387 347 (4.03546e+104)}
; -zero M 1.4076161637483781685631356594967655837535858154296875p347 == 1.4076161637483781685631356594967655837535858154296875p347
; [HW: 1.4076161637483781685631356594967655837535858154296875p347] 

; mpf : + 1835740003167387 347
; mpfd: + 1835740003167387 347 (4.03546e+104) class: Pos. norm. non-zero
; hwf : + 1835740003167387 347 (4.03546e+104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10101011010 #b0110100001011001100010000110110010011110110010011011)))
(assert (= r (fp #b0 #b10101011010 #b0110100001011001100010000110110010011110110010011011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
