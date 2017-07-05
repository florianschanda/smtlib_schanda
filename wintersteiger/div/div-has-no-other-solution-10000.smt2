(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.38922579557407299688520652125589549541473388671875p221 {- 1752917147910380 221 (-4.68168e+066)}
; Y = -1.47554587826108107861955431872047483921051025390625p142 {- 2141668240134180 142 (-8.22644e+042)}
; -1.38922579557407299688520652125589549541473388671875p221 / -1.47554587826108107861955431872047483921051025390625p142 == 1.8829991205848026769587022499763406813144683837890625p78
; [HW: 1.8829991205848026769587022499763406813144683837890625p78] 

; mpf : + 3976674510434193 78
; mpfd: + 3976674510434193 78 (5.69102e+023) class: Pos. norm. non-zero
; hwf : + 3976674510434193 78 (5.69102e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011100 #b0110001110100100010011010011111011000000000011101100)))
(assert (= y (fp #b1 #b10010001101 #b0111100110111101010111111110101011100001000000100100)))
(assert (= r (fp #b0 #b10001001101 #b1110001000001100001110101111100101001110111110010001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
