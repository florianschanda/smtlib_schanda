(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2694669091892352152939338338910602033138275146484375p78 {- 1213571071813319 78 (-3.83673e+023)}
; Y = 1.095501902900623658609902122407220304012298583984375p-558 {+ 430102334316422 -558 (1.16112e-168)}
; -1.2694669091892352152939338338910602033138275146484375p78 = 1.095501902900623658609902122407220304012298583984375p-558 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001101 #b0100010011111011110010001000101001010010011011000111)))
(assert (= y (fp #b0 #b00111010001 #b0001100001110010110100000000110110101001111110000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
