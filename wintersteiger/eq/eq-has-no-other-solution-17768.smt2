(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1211806155330819034787737109581939876079559326171875p953 {+ 545748974959315 953 (8.53614e+286)}
; Y = -1.4039271097055381343210456179804168641567230224609375p-908 {- 1819125980754703 -908 (-6.48796e-274)}
; 1.1211806155330819034787737109581939876079559326171875p953 = -1.4039271097055381343210456179804168641567230224609375p-908 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111000 #b0001111100000101101100010101110010011111101011010011)))
(assert (= y (fp #b1 #b00001110011 #b0110011101100111110001000101111000100111001100001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
