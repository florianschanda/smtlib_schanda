(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.591131007740414826656660807202570140361785888671875p-466 {+ 2662217386186878 -466 (8.3508e-141)}
; Y = -1.107277210526672828194705289206467568874359130859375p-299 {- 483133605353270 -299 (-1.08715e-090)}
; 1.591131007740414826656660807202570140361785888671875p-466 > -1.107277210526672828194705289206467568874359130859375p-299 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101101 #b1001011101010100010111001001100111100101100001111110)))
(assert (= y (fp #b1 #b01011010100 #b0001101101110110100001001110111011010001011100110110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
