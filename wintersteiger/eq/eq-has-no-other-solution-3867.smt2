(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8649670117141965430818117965827696025371551513671875p-970 {+ 3895465111643827 -970 (1.86885e-292)}
; Y = 1.4883842869917900397780385901569388806819915771484375p-834 {+ 2199487292909831 -834 (1.29927e-251)}
; 1.8649670117141965430818117965827696025371551513671875p-970 = 1.4883842869917900397780385901569388806819915771484375p-834 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110101 #b1101110101101110011110100110001101101110011010110011)))
(assert (= y (fp #b0 #b00010111101 #b0111110100000110110000001010110010000010100100000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
