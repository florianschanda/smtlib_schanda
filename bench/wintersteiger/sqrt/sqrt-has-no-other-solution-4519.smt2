(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0940635723583576055517596614663489162921905517578125p-375 {+ 423624669422237 -375 (1.42165e-113)}
; 1.0940635723583576055517596614663489162921905517578125p-375 S == 1.4792319441915509070639700439642183482646942138671875p-188
; [HW: 1.4792319441915509070639700439642183482646942138671875p-188] 

; mpf : + 2158268805285107 -188
; mpfd: + 2158268805285107 -188 (3.77048e-057) class: Pos. norm. non-zero
; hwf : + 2158268805285107 -188 (3.77048e-057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001000 #b0001100000010100100011001101111100000110001010011101)))
(assert (= r (fp #b0 #b01101000011 #b0111101010101110111100011101011110000000010011110011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
