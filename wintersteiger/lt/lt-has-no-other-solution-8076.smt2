(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4136252568151232988924448363832198083400726318359375p585 {+ 1862802552463615 585 (1.79012e+176)}
; Y = 1.674661006737227619822760971146635711193084716796875p948 {+ 3038403058543182 948 (3.9844e+285)}
; 1.4136252568151232988924448363832198083400726318359375p585 < 1.674661006737227619822760971146635711193084716796875p948 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001000 #b0110100111100011010110000100011011010010000011111111)))
(assert (= y (fp #b0 #b11110110011 #b1010110010110110100101010110111111010010101001001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
