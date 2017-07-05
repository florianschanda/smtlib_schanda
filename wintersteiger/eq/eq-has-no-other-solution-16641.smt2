(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0817832877248088063737441189005039632320404052734375p-444 {+ 368319184122583 -444 (2.38134e-134)}
; Y = 1.9544478172972648000182971372851170599460601806640625p390 {+ 4298450834324545 390 (4.92859e+117)}
; 1.0817832877248088063737441189005039632320404052734375p-444 = 1.9544478172972648000182971372851170599460601806640625p390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000011 #b0001010011101111101111111110001000100011001011010111)))
(assert (= y (fp #b0 #b10110000101 #b1111010001010110101100010011000100000111110001000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
