(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.372288487245679089454597487929277122020721435546875p-749 {- 1676638292433966 -749 (-4.63424e-226)}
; Y = -1.2440037703616846354037761557265184819698333740234375p-457 {- 1098895289277879 -457 (-3.34283e-138)}
; -1.372288487245679089454597487929277122020721435546875p-749 * -1.2440037703616846354037761557265184819698333740234375p-457 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010010 #b0101111101001110010011000101110101100101110000101110)))
(assert (= y (fp #b1 #b01000110110 #b0011111001110111000001111111010111001101110110110111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
