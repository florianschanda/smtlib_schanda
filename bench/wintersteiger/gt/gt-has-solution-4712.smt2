(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3057889764145074185108796882559545338153839111328125p-659 {- 1377151120234381 -659 (-5.45891e-199)}
; Y = 1.9220435661504742252958521930850110948085784912109375p-999 {+ 4152515060934639 -999 (3.58755e-301)}
; -1.3057889764145074185108796882559545338153839111328125p-659 > 1.9220435661504742252958521930850110948085784912109375p-999 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101100 #b0100111001001000001011111011010100101101011110001101)))
(assert (= y (fp #b0 #b00000011000 #b1110110000001011000011000001001000011010011111101111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
