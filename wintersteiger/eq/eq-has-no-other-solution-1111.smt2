(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6130555466473965875451312967925332486629486083984375p-185 {+ 2760956731438631 -185 (3.28927e-056)}
; Y = 1.9848920546727433222855552230612374842166900634765625p-480 {+ 4435559490424329 -480 (6.35827e-145)}
; 1.6130555466473965875451312967925332486629486083984375p-185 = 1.9848920546727433222855552230612374842166900634765625p-480 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000110 #b1001110011110001001101010101001101111011011000100111)))
(assert (= y (fp #b0 #b01000011111 #b1111110000100001111000101011110011101000111000001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
