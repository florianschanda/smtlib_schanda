(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5959274277722743651253267671563662588596343994140625p-781 {+ 2683818541655073 -781 (1.25483e-235)}
; Y = 1.3245150940160719255089816215331666171550750732421875p977 {+ 1461486056486883 977 (1.69185e+294)}
; 1.5959274277722743651253267671563662588596343994140625p-781 = 1.3245150940160719255089816215331666171550750732421875p977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110010 #b1001100010001110101100110010110100010010010000100001)))
(assert (= y (fp #b0 #b11111010000 #b0101001100010011011010111101001111011011011111100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
