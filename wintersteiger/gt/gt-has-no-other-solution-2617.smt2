(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8531379356593526974705810062005184590816497802734375p-567 {- 3842191689131095 -567 (-3.83619e-171)}
; Y = 1.0303413770585152509084991834242828190326690673828125p361 {+ 136645414414637 361 (4.8396e+108)}
; -1.8531379356593526974705810062005184590816497802734375p-567 > 1.0303413770585152509084991834242828190326690673828125p361 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001000 #b1101101001100111001111110110110010100010010001010111)))
(assert (= y (fp #b0 #b10101101000 #b0000011111000100011100111101011000101110100100101101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
