(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6829620447834801044706409811624325811862945556640625p772 {+ 3075787610395073 772 (4.18053e+232)}
; Y = 1.19319723661743370968224553507752716541290283203125p843 {+ 870083002839284 843 (6.9984e+253)}
; 1.6829620447834801044706409811624325811862945556640625p772 < 1.19319723661743370968224553507752716541290283203125p843 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000011 #b1010111011010110100110011011111011000001000111000001)))
(assert (= y (fp #b0 #b11101001010 #b0011000101110101010111111100010011110011000011110100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
