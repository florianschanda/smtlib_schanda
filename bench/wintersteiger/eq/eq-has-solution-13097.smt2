(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0824935454203823415042506894678808748722076416015625p-534 {+ 371517900415705 -534 (1.9249e-161)}
; Y = -1.9790824422199653209730740854865871369838714599609375p-155 {- 4409395321946831 -155 (-4.33326e-047)}
; 1.0824935454203823415042506894678808748722076416015625p-534 = -1.9790824422199653209730740854865871369838714599609375p-155 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101001 #b0001010100011110010011000000011110110110001011011001)))
(assert (= y (fp #b1 #b01101100100 #b1111101010100101001001011001110101101100001011001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
