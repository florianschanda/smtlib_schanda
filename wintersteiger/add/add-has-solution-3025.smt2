(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8319302919555837672049847242305986583232879638671875p-363 {+ 3746680952849395 -363 (9.75036e-110)}
; Y = -1.533219078464612916690157362609170377254486083984375p643 {- 2401405243080070 643 (-5.59618e+193)}
; 1.8319302919555837672049847242305986583232879638671875p-363 + -1.533219078464612916690157362609170377254486083984375p643 == -1.5332190784646126946455524375778622925281524658203125p643
; [HW: -1.5332190784646126946455524375778622925281524658203125p643] 

; mpf : - 2401405243080069 643
; mpfd: - 2401405243080069 643 (-5.59618e+193) class: Neg. norm. non-zero
; hwf : - 2401405243080069 643 (-5.59618e+193) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010100 #b1101010011111001011000100011010010000000001111110011)))
(assert (= y (fp #b1 #b11010000010 #b1000100010000001000010111010011110011011110110000110)))
(assert (= r (fp #b1 #b11010000010 #b1000100010000001000010111010011110011011110110000101)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
