(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3923343067413807006005299626849591732025146484375p539 {+ 1766916637645144 539 (2.5056e+162)}
; Y = 1.7367449562253967076941307823290117084980010986328125p518 {+ 3318004310323789 518 (1.4903e+156)}
; 1.3923343067413807006005299626849591732025146484375p539 = 1.7367449562253967076941307823290117084980010986328125p518 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011010 #b0110010001110000000001010110100010001101100101011000)))
(assert (= y (fp #b0 #b11000000101 #b1011110010011011010100010100010001111011001001001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
