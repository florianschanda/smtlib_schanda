(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.478869911519647306619162918650545179843902587890625p-140 {- 2156638355078826 -140 (-1.06104e-042)}
; Y = -1.958891727760210255127049094880931079387664794921875p-983 {- 4318464427829534 -983 (-2.39621e-296)}
; -1.478869911519647306619162918650545179843902587890625p-140 > -1.958891727760210255127049094880931079387664794921875p-983 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110011 #b0111101010010111001101111111000100000011111010101010)))
(assert (= y (fp #b1 #b00000101000 #b1111010101111001111011011010001100100010100100011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
