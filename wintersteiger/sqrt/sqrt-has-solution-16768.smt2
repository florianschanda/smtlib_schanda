(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.881141409480667103792939087725244462490081787109375p-317 {+ 3968308123397846 -317 (7.04552e-096)}
; 1.881141409480667103792939087725244462490081787109375p-317 S == 1.9396604906429717463112183395423926413059234619140625p-159
; [HW: 1.9396604906429717463112183395423926413059234619140625p-159] 

; mpf : + 4231854635514465 -159
; mpfd: + 4231854635514465 -159 (2.65434e-048) class: Pos. norm. non-zero
; hwf : + 4231854635514465 -159 (2.65434e-048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000010 #b1110000110010010011110111100000011011110111011010110)))
(assert (= r (fp #b0 #b01101100000 #b1111000010001101100101110000010010100111101001100001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
