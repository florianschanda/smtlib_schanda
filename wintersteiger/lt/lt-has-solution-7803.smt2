(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9459726832250641148647218869882635772228240966796875p-502 {+ 4260282223675067 -502 (1.48621e-151)}
; Y = -1.48040489273153763605250787804834544658660888671875p296 {- 2163551295892716 296 (-1.88477e+089)}
; 1.9459726832250641148647218869882635772228240966796875p-502 < -1.48040489273153763605250787804834544658660888671875p296 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001001 #b1111001000101011010001000000100101011100011010111011)))
(assert (= y (fp #b1 #b10100100111 #b0111101011111011110100001010011100011110110011101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
