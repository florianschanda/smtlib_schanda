(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2140578365510801273075003336998634040355682373046875p602 {- 964030792927179 602 (-2.0151e+181)}
; Y = -1.5147677506081940190796331080491654574871063232421875p318 {- 2318307849821411 318 (-8.08881e+095)}
; -1.2140578365510801273075003336998634040355682373046875p602 + -1.5147677506081940190796331080491654574871063232421875p318 == -1.2140578365510801273075003336998634040355682373046875p602
; [HW: -1.2140578365510801273075003336998634040355682373046875p602] 

; mpf : - 964030792927179 602
; mpfd: - 964030792927179 602 (-2.0151e+181) class: Neg. norm. non-zero
; hwf : - 964030792927179 602 (-2.0151e+181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011001 #b0011011011001100011111101000111101110000011111001011)))
(assert (= y (fp #b1 #b10100111101 #b1000001111000111110100011011110111100101110011100011)))
(assert (= r (fp #b1 #b11001011001 #b0011011011001100011111101000111101110000011111001011)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
