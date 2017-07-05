(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.237829833906470167192992448690347373485565185546875p-342 {- 1071090351358766 -342 (-1.38166e-103)}
; Y = 1.470043683809962420383499193121679127216339111328125p-719 {+ 2116888559254402 -719 (5.33044e-217)}
; -1.237829833906470167192992448690347373485565185546875p-342 = 1.470043683809962420383499193121679127216339111328125p-719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101001 #b0011110011100010011010100111111010100100001100101110)))
(assert (= y (fp #b0 #b00100110000 #b0111100001010100110010000110100110100111101110000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
