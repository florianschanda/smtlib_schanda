(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.704665492272852578281572277774102985858917236328125p-369 {+ 3173531248420866 -369 (1.41766e-111)}
; Y = -1.87512825686636563915499209542758762836456298828125p-151 {- 3941227291524756 -151 (-6.56904e-046)}
; 1.704665492272852578281572277774102985858917236328125p-369 < -1.87512825686636563915499209542758762836456298828125p-151 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001110 #b1011010001100100111101010010101111101110100000000010)))
(assert (= y (fp #b1 #b01101101000 #b1110000000001000011001111100101100001011111010010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
