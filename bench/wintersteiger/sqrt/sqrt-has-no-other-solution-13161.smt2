(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.231554242134263343899647225043736398220062255859375p358 {+ 1042827598591926 358 (7.23089e+107)}
; 1.231554242134263343899647225043736398220062255859375p358 S == 1.1097541358941913625102415608125738799571990966796875p179
; [HW: 1.1097541358941913625102415608125738799571990966796875p179] 

; mpf : + 494288685515451 179
; mpfd: + 494288685515451 179 (8.50347e+053) class: Pos. norm. non-zero
; hwf : + 494288685515451 179 (8.50347e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100101 #b0011101101000111001000111000100100110111011110110110)))
(assert (= r (fp #b0 #b10010110010 #b0001110000011000110110001101100001000100001010111011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
