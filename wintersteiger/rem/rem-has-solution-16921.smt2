(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0406834864730931666798596779699437320232391357421875p-458 {- 183222134520355 -458 (-1.39824e-138)}
; Y = -1.26141385953577245260248673730529844760894775390625p420 {- 1177303360394788 420 (-3.41551e+126)}
; -1.0406834864730931666798596779699437320232391357421875p-458 % -1.26141385953577245260248673730529844760894775390625p420 == -1.0406834864730931666798596779699437320232391357421875p-458
; [HW: -1.0406834864730931666798596779699437320232391357421875p-458] 

; mpf : - 183222134520355 -458
; mpfd: - 183222134520355 -458 (-1.39824e-138) class: Neg. norm. non-zero
; hwf : - 183222134520355 -458 (-1.39824e-138) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110101 #b0000101001101010001110111010001111100011101000100011)))
(assert (= y (fp #b1 #b10110100011 #b0100001011101100000001001100100101101101011000100100)))
(assert (= r (fp #b1 #b01000110101 #x0a6a3ba3e3a23)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
