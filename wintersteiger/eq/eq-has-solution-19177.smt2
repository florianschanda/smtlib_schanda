(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2766175695280714830204260579193942248821258544921875p196 {+ 1245774783050755 196 (1.28215e+059)}
; Y = -1.9124099252891670897014364527422003448009490966796875p-251 {- 4109128999541435 -251 (-5.28509e-076)}
; 1.2766175695280714830204260579193942248821258544921875p196 = -1.9124099252891670897014364527422003448009490966796875p-251 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000011 #b0100011011010000011010001011011010011111010000000011)))
(assert (= y (fp #b1 #b01100000100 #b1110100110010011101100100110010110101001101010111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
