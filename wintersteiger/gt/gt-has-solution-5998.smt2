(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9759458277099926082343017696985043585300445556640625p-378 {- 4395269266008513 -378 (-3.20949e-114)}
; Y = -1.205161620743688377643820786033757030963897705078125p43 {- 923965798732002 43 (-1.06007e+013)}
; -1.9759458277099926082343017696985043585300445556640625p-378 > -1.205161620743688377643820786033757030963897705078125p43 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000101 #b1111100111010111100101011111010010101110100111000001)))
(assert (= y (fp #b1 #b10000101010 #b0011010010000101011110001101001101111101000011100010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
