(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2567793060280803008055272584897466003894805908203125p208 {- 1156431186944517 208 (-5.17009e+062)}
; Y = 1.0009356029368150498015666016726754605770111083984375p-794 {+ 4213581037607 -794 (9.60704e-240)}
; -1.2567793060280803008055272584897466003894805908203125p208 > 1.0009356029368150498015666016726754605770111083984375p-794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001111 #b0100000110111100010010011110000110101110001000000101)))
(assert (= y (fp #b0 #b00011100101 #b0000000000111101010100001101000000000100000000100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
