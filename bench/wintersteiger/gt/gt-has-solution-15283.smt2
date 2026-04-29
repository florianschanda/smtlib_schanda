(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5985443761626030312328339277883060276508331298828125p-125 {+ 2695604229450605 -125 (3.75816e-038)}
; Y = 1.4018377866061679792863969851168803870677947998046875p844 {+ 1809716506022923 844 (1.64443e+254)}
; 1.5985443761626030312328339277883060276508331298828125p-125 > 1.4018377866061679792863969851168803870677947998046875p844 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000010 #b1001100100111010001101000100100011010010101101101101)))
(assert (= y (fp #b0 #b11101001011 #b0110011011011110110101110101011111000101010000001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
