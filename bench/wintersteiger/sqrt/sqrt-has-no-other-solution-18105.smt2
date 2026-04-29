(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.146402459450395650009113523992709815502166748046875p-979 {+ 659338061826926 -979 (2.24373e-295)}
; 1.146402459450395650009113523992709815502166748046875p-979 S == 1.514201082716820412343849966418929398059844970703125p-490
; [HW: 1.514201082716820412343849966418929398059844970703125p-490] 

; mpf : + 2315755804516978 -490
; mpfd: + 2315755804516978 -490 (4.73681e-148) class: Pos. norm. non-zero
; hwf : + 2315755804516978 -490 (4.73681e-148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101100 #b0010010101111010101000011010111101100100101101101110)))
(assert (= r (fp #b0 #b01000010101 #b1000001110100010101011101010000111010110001001110010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
