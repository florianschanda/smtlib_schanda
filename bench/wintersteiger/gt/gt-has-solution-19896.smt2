(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.383645705591494579067557424423284828662872314453125p-601 {+ 1727786656744146 -601 (1.66724e-181)}
; Y = 1.8893847240030845480163179672672413289546966552734375p-474 {+ 4005432711609303 -474 (3.87349e-143)}
; 1.383645705591494579067557424423284828662872314453125p-601 > 1.8893847240030845480163179672672413289546966552734375p-474 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100110 #b0110001000110110100110101101111011000100001011010010)))
(assert (= y (fp #b0 #b01000100101 #b1110001110101110101101111001111100100111101111010111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
