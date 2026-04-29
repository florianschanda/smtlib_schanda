(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0276249503949765884414091487997211515903472900390625p799 {- 124411716304945 799 (-3.42611e+240)}
; Y = -1.9219802612361724936107520989025942981243133544921875p-181 {- 4152229960946179 -181 (-6.27075e-055)}
; -1.0276249503949765884414091487997211515903472900390625p799 = -1.9219802612361724936107520989025942981243133544921875p-181 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100011110 #b0000011100010010011011011100001010000000000000110001)))
(assert (= y (fp #b1 #b01101001010 #b1110110000000110111001011111110110010001001000000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
