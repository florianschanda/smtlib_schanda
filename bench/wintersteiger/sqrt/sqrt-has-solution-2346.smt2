(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4731330812061471657870015405933372676372528076171875p-723 {+ 2130801968216659 -723 (3.33853e-218)}
; 1.4731330812061471657870015405933372676372528076171875p-723 S == 1.71646909742421360789421669323928654193878173828125p-362
; [HW: 1.71646909742421360789421669323928654193878173828125p-362] 

; mpf : + 3226689960182164 -362
; mpfd: + 3226689960182164 -362 (1.82716e-109) class: Pos. norm. non-zero
; hwf : + 3226689960182164 -362 (1.82716e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101100 #b0111100100011111001111111110011001101111101001010011)))
(assert (= r (fp #b0 #b01010010101 #b1011011101101010100001001100111000001000000110010100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
