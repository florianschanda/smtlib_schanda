(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.440282374719339397728390395059250295162200927734375p-611 {- 1982855538723814 -611 (-1.69481e-184)}
; Y = -1.4653433820460721737077847137697972357273101806640625p-509 {- 2095720281982017 -509 (-8.74322e-154)}
; -1.440282374719339397728390395059250295162200927734375p-611 % -1.4653433820460721737077847137697972357273101806640625p-509 == -1.440282374719339397728390395059250295162200927734375p-611
; [HW: -1.440282374719339397728390395059250295162200927734375p-611] 

; mpf : - 1982855538723814 -611
; mpfd: - 1982855538723814 -611 (-1.69481e-184) class: Neg. norm. non-zero
; hwf : - 1982855538723814 -611 (-1.69481e-184) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011100 #b0111000010110110010110001000000001101100101111100110)))
(assert (= y (fp #b1 #b01000000010 #b0111011100100000101111100110111101001100010001000001)))
(assert (= r (fp #b1 #b00110011100 #x70b658806cbe6)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
