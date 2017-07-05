(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.86855749063480214289256764459423720836639404296875p-388 {+ 3911635191172748 -388 (2.96393e-117)}
; 1.86855749063480214289256764459423720836639404296875p-388 S == 1.3669518977033543460919418066623620688915252685546875p-194
; [HW: 1.3669518977033543460919418066623620688915252685546875p-194] 

; mpf : + 1652604429759723 -194
; mpfd: + 1652604429759723 -194 (5.4442e-059) class: Pos. norm. non-zero
; hwf : + 1652604429759723 -194 (5.4442e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111011 #b1101111001011001110010001010000011111000111010001100)))
(assert (= r (fp #b0 #b01100111101 #b0101110111110000100011110011111111010111010011101011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
