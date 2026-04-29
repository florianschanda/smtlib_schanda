(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1090610122677773130561718062381260097026824951171875p370 {+ 491167134209811 370 (2.66719e+111)}
; 1.1090610122677773130561718062381260097026824951171875p370 S == 1.053119657146222465371465659700334072113037109375p185
; [HW: 1.053119657146222465371465659700334072113037109375p185] 

; mpf : + 239229668129776 185
; mpfd: + 239229668129776 185 (5.16448e+055) class: Pos. norm. non-zero
; hwf : + 239229668129776 185 (5.16448e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110001 #b0001101111101011011011000010100011110101011100010011)))
(assert (= r (fp #b0 #b10010111000 #b0000110110011001001111111111011000110111101111110000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
