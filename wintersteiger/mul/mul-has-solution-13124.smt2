(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.65297093191957689128912534215487539768218994140625p-60 {+ 2940719645676772 -60 (1.43372e-018)}
; Y = -1.037244897852764413670456633553840219974517822265625p685 {- 167736108091162 685 (-1.66505e+206)}
; 1.65297093191957689128912534215487539768218994140625p-60 * -1.037244897852764413670456633553840219974517822265625p685 == -1.7145356654325103473723856950527988374233245849609375p625
; [HW: -1.7145356654325103473723856950527988374233245849609375p625] 

; mpf : - 3217982556584783 625
; mpfd: - 3217982556584783 625 (-2.38723e+188) class: Neg. norm. non-zero
; hwf : - 3217982556584783 625 (-2.38723e+188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000011 #b1010011100101001000110100101110111010101010011100100)))
(assert (= y (fp #b1 #b11010101100 #b0000100110001000111000011011001000111000011100011010)))
(assert (= r (fp #b1 #b11001110000 #b1011011011101011110011110011001011011011101101001111)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
