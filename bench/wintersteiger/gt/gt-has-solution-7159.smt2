(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2606909821251981451695201030815951526165008544921875p337 {+ 1174047809957891 337 (3.52953e+101)}
; Y = 1.58999134148497933693988670711405575275421142578125p-902 {+ 2657084785663572 -902 (4.70261e-272)}
; 1.2606909821251981451695201030815951526165008544921875p337 > 1.58999134148497933693988670711405575275421142578125p-902 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010000 #b0100001010111100101001001110101010010111000000000011)))
(assert (= y (fp #b0 #b00001111001 #b1001011100001001101011000010110010011001111001010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
