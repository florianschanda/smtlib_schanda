(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.599700002533106069080304223462007939815521240234375p36 {- 2700808707942182 36 (-1.09931e+011)}
; Y = 1.7566929720635215961266339945723302662372589111328125p-832 {+ 3407842187019149 -832 (6.13394e-251)}
; -1.599700002533106069080304223462007939815521240234375p36 - 1.7566929720635215961266339945723302662372589111328125p-832 == -1.599700002533106069080304223462007939815521240234375p36
; [HW: -1.599700002533106069080304223462007939815521240234375p36] 

; mpf : - 2700808707942182 36
; mpfd: - 2700808707942182 36 (-1.09931e+011) class: Neg. norm. non-zero
; hwf : - 2700808707942182 36 (-1.09931e+011) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100011 #b1001100110000101111100000111101001001010011100100110)))
(assert (= y (fp #b0 #b00010111111 #b1100000110110110101000010111000000100000001110001101)))
(assert (= r (fp #b1 #b10000100011 #b1001100110000101111100000111101001001010011100100110)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
