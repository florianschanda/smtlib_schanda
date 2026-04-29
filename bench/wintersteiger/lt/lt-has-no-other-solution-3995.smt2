(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0661304289735069605882245014072395861148834228515625p148 {- 297824975282937 148 (-3.80408e+044)}
; Y = 1.6474915809050336701346850531990639865398406982421875p915 {+ 2916042842489443 915 (4.5632e+275)}
; -1.0661304289735069605882245014072395861148834228515625p148 < 1.6474915809050336701346850531990639865398406982421875p915 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010011 #b0001000011101101111011000111110110110110001011111001)))
(assert (= y (fp #b0 #b11110010010 #b1010010111000010000000100001110001101100001001100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
