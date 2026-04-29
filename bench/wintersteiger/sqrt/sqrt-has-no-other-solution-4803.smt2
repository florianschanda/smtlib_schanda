(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.553229241209816979818469917518086731433868408203125p-930 {+ 2491523004562994 -930 (1.71135e-280)}
; 1.553229241209816979818469917518086731433868408203125p-930 S == 1.246286179498840684942706502624787390232086181640625p-465
; [HW: 1.246286179498840684942706502624787390232086181640625p-465] 

; mpf : + 1109174346217482 -465
; mpfd: + 1109174346217482 -465 (1.30819e-140) class: Pos. norm. non-zero
; hwf : + 1109174346217482 -465 (1.30819e-140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011101 #b1000110110100000011011100111101000101111111000110010)))
(assert (= r (fp #b0 #b01000101110 #b0011111100001100100111000110111001100111100000001010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
