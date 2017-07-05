(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.86211003691418053307415902963839471340179443359375p253 {- 3882598440999068 253 (-2.69522e+076)}
; Y = 1.6165532783295171181947580407722853124141693115234375p127 {+ 2776709114538871 127 (2.75042e+038)}
; -1.86211003691418053307415902963839471340179443359375p253 < 1.6165532783295171181947580407722853124141693115234375p127 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111100 #b1101110010110011001111100100111000011001100010011100)))
(assert (= y (fp #b0 #b10001111110 #b1001110111010110011011111000011010101010101101110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
