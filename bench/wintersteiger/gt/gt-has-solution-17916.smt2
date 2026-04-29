(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1071157229242836184113230046932585537433624267578125p-807 {+ 482406329847325 -807 (1.29714e-243)}
; Y = -1.02619180635208362417643002117983996868133544921875p-982 {- 117957409327404 -982 (-2.51057e-296)}
; 1.1071157229242836184113230046932585537433624267578125p-807 > -1.02619180635208362417643002117983996868133544921875p-982 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011000 #b0001101101101011111011111001111011011000111000011101)))
(assert (= y (fp #b1 #b00000101001 #b0000011010110100100000011001011110110100100100101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
