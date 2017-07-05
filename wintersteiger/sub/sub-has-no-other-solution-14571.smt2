(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4333726184260251468316482714726589620113372802734375p-654 {- 1951736762856023 -654 (-1.91753e-197)}
; Y = 1.851516265269369743151628426858223974704742431640625p353 {+ 3834888334967050 353 (3.39716e+106)}
; -1.4333726184260251468316482714726589620113372802734375p-654 - 1.851516265269369743151628426858223974704742431640625p353 == -1.851516265269369743151628426858223974704742431640625p353
; [HW: -1.851516265269369743151628426858223974704742431640625p353] 

; mpf : - 3834888334967050 353
; mpfd: - 3834888334967050 353 (-3.39716e+106) class: Neg. norm. non-zero
; hwf : - 3834888334967050 353 (-3.39716e+106) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110001 #b0110111011110001100000100000011100011111001001010111)))
(assert (= y (fp #b0 #b10101100000 #b1101100111111100111110000100111101011000000100001010)))
(assert (= r (fp #b1 #b10101100000 #b1101100111111100111110000100111101011000000100001010)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
