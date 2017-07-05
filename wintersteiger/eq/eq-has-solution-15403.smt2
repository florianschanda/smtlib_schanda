(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3084048158671308659251053541083820164203643798828125p-574 {- 1388931813818477 -574 (-2.11604e-173)}
; Y = -1.2243626105204461484987632502452470362186431884765625p678 {- 1010439369135753 678 (-1.53549e+204)}
; -1.3084048158671308659251053541083820164203643798828125p-574 = -1.2243626105204461484987632502452470362186431884765625p678 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000001 #b0100111011110011100111100011011000010100000001101101)))
(assert (= y (fp #b1 #b11010100101 #b0011100101101111110100111111101010100001011010001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
