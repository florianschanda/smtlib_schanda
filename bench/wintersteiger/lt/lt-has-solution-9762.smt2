(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9893122453915730307727471881662495434284210205078125p-826 {- 4455466259698557 -826 (-4.44556e-249)}
; Y = 1.1400346884548770987066745874471962451934814453125p-883 {+ 630660170744328 -883 (1.76779e-266)}
; -1.9893122453915730307727471881662495434284210205078125p-826 < 1.1400346884548770987066745874471962451934814453125p-883 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000101 #b1111110101000011100100010011101101111101001101111101)))
(assert (= y (fp #b0 #b00010001100 #b0010001111011001010100000011011100111000001000001000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
