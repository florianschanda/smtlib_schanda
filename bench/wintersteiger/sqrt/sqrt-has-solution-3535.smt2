(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.12526158961176125927750035771168768405914306640625p-173 {+ 564128048299364 -173 (9.39862e-053)}
; 1.12526158961176125927750035771168768405914306640625p-173 S == 1.5001743829380378425497610805905424058437347412109375p-87
; [HW: 1.5001743829380378425497610805905424058437347412109375p-87] 

; mpf : + 2252585164620015 -87
; mpfd: + 2252585164620015 -87 (9.69465e-027) class: Pos. norm. non-zero
; hwf : + 2252585164620015 -87 (9.69465e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010010 #b0010000000010001001001001011111011010011110101100100)))
(assert (= r (fp #b0 #b01110101000 #b1000000000001011011011011010100100000100000011101111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
