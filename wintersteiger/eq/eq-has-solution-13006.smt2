(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9153447268364527378281536584836430847644805908203125p-242 {+ 4122346170696197 -242 (2.71012e-073)}
; Y = -1.1421982035500850560794106058892793953418731689453125p-710 {- 640403776520917 -710 (-2.12053e-214)}
; 1.9153447268364527378281536584836430847644805908203125p-242 = -1.1421982035500850560794106058892793953418731689453125p-710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001101 #b1110101001010100000010000011001001010100001000000101)))
(assert (= y (fp #b1 #b00100111001 #b0010010001100111000110011111100111001100001011010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
