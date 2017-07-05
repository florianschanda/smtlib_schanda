(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3177619678584837625834325081086717545986175537109375p-662 {- 1431072680039983 -662 (-6.8862e-200)}
; Y = -1.8436803161117272242819353778031654655933380126953125p-467 {- 3799598357260597 -467 (-4.83813e-141)}
; -1.3177619678584837625834325081086717545986175537109375p-662 / -1.8436803161117272242819353778031654655933380126953125p-467 == 1.4294907380012700226501465294859372079372406005859375p-196
; [HW: 1.4294907380012700226501465294859372079372406005859375p-196] 

; mpf : + 1934254327621599 -196
; mpfd: + 1934254327621599 -196 (1.42332e-059) class: Pos. norm. non-zero
; hwf : + 1934254327621599 -196 (1.42332e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101001 #b0101000101011000110110010010101111011101011000101111)))
(assert (= y (fp #b1 #b01000101100 #b1101011111111011011011101110010111111010100100110101)))
(assert (= r (fp #b0 #b01100111011 #b0110110111110011000110101110000110100110011111011111)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
