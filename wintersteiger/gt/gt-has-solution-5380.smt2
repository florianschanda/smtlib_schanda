(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2395597829965281366781937322230078279972076416015625p675 {- 1078881349436121 675 (-1.94319e+203)}
; Y = 1.1064106527917558775442330443183891475200653076171875p-196 {+ 479230976261203 -196 (1.10163e-059)}
; -1.2395597829965281366781937322230078279972076416015625p675 > 1.1064106527917558775442330443183891475200653076171875p-196 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100010 #b0011110101010011110010100011100101101000001011011001)))
(assert (= y (fp #b0 #b01100111011 #b0001101100111101101110101000000110101111110001010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
