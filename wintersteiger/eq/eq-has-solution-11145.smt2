(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.960915738722961432216607136069796979427337646484375p918 {+ 4327579762847174 918 (4.34505e+276)}
; Y = -1.4871438672025110161456495916354469954967498779296875p-503 {- 2193900938809051 -503 (-5.67891e-152)}
; 1.960915738722961432216607136069796979427337646484375p918 = -1.4871438672025110161456495916354469954967498779296875p-503 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010101 #b1111010111111110100100101110100000000110110111000110)))
(assert (= y (fp #b1 #b01000001000 #b0111110010110101011101011110001000010100111011011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
