(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6043265129929793477714383698184974491596221923828125p-89 {- 2721644658725293 -89 (-2.59193e-027)}
; Y = -1.3035719490027501965556666618795134127140045166015625p-842 {- 1367166516408921 -842 (-4.44507e-254)}
; -1.6043265129929793477714383698184974491596221923828125p-89 = -1.3035719490027501965556666618795134127140045166015625p-842 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100110 #b1001101010110101001001000111000101101001000110101101)))
(assert (= y (fp #b1 #b00010110101 #b0100110110110110111001000010100011110011001001011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
