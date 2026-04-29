(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.726530295887135135757262105471454560756683349609375p615 {+ 3272001569830678 615 (2.34759e+185)}
; Y = 1.635289302619935991600641500554047524929046630859375p-881 {+ 2861088666551606 -881 (1.0143e-265)}
; 1.726530295887135135757262105471454560756683349609375p615 = 1.635289302619935991600641500554047524929046630859375p-881 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100110 #b1011100111111101111000111011010001100011011100010110)))
(assert (= y (fp #b0 #b00010001110 #b1010001010100010010100011101101001000000010100110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
