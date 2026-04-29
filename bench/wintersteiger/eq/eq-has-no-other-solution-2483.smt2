(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.96622489065172612043852495844475924968719482421875p-31 {+ 4351490057495212 -31 (9.15595e-010)}
; Y = -1.345706188416614157432604770292527973651885986328125p872 {- 1556922261332738 872 (-4.23747e+262)}
; 1.96622489065172612043852495844475924968719482421875p-31 = -1.345706188416614157432604770292527973651885986328125p872 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100000 #b1111011101011010100000111011000111101110001010101100)))
(assert (= y (fp #b1 #b11101100111 #b0101100010000000001100110110010101000110001100000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
