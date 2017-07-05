(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5417447609835910338205167136038653552532196044921875p-909 {+ 2439801503695619 -909 (3.56243e-274)}
; Y = 1.0715739266468229384798860337468795478343963623046875p-749 {+ 322340309376075 -749 (3.61872e-226)}
; 1.5417447609835910338205167136038653552532196044921875p-909 < 1.0715739266468229384798860337468795478343963623046875p-749 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110010 #b1000101010101111110010001101111100110100001100000011)))
(assert (= y (fp #b0 #b00100010010 #b0001001001010010101010110011101000110001110001001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
