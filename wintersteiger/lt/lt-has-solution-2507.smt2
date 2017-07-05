(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.939680709825295945591960844467394053936004638671875p772 {+ 4231945694616446 772 (4.81822e+232)}
; Y = 1.57366554996102347985242886352352797985076904296875p935 {+ 2583559957039756 935 (4.57044e+281)}
; 1.939680709825295945591960844467394053936004638671875p772 < 1.57366554996102347985242886352352797985076904296875p935 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000011 #b1111000010001110111010100011110101100001101101111110)))
(assert (= y (fp #b0 #b11110100110 #b1001001011011011101111101101011111101100101010001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
