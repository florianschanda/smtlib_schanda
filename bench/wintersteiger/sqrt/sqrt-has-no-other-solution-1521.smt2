(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0126408136757694133933682678616605699062347412109375p-491 {+ 56929163759855 -491 (1.5839e-148)}
; 1.0126408136757694133933682678616605699062347412109375p-491 S == 1.4231238974002013986108750032144598662853240966796875p-246
; [HW: 1.4231238974002013986108750032144598662853240966796875p-246] 

; mpf : + 1905580626663099 -246
; mpfd: + 1905580626663099 -246 (1.25853e-074) class: Pos. norm. non-zero
; hwf : + 1905580626663099 -246 (1.25853e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010100 #b0000001100111100011011011010100101010101000011101111)))
(assert (= r (fp #b0 #b01100001001 #b0110110001010001110110010000010101111101011010111011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
