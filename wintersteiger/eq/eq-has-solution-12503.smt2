(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.51443341476986059745968304923735558986663818359375p306 {+ 2316802135064476 306 (1.97437e+092)}
; Y = -1.988827331255341501758948652422986924648284912109375p-862 {- 4453282400575318 -862 (-6.46757e-260)}
; 1.51443341476986059745968304923735558986663818359375p306 = -1.988827331255341501758948652422986924648284912109375p-862 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110001 #b1000001110110001111010001000010001100111111110011100)))
(assert (= y (fp #b1 #b00010100001 #b1111110100100011110010011011100100100001111101010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
