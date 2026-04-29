(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4146329362145475538881100874277763068675994873046875p719 {- 1867340737031371 719 (-3.90131e+216)}
; Y = 1.0471068536973133777934208410442806780338287353515625p-708 {+ 212150408757817 -708 (7.77596e-214)}
; -1.4146329362145475538881100874277763068675994873046875p719 = 1.0471068536973133777934208410442806780338287353515625p-708 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001110 #b0110101000100101011000100101010011100010110011001011)))
(assert (= y (fp #b0 #b00100111011 #b0000110000001111001100011101110000001100001000111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
