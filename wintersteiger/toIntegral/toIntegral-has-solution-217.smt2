(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.32778538345223839911568575189448893070220947265625 967 {+ 1476214130772996 967 (1.65628e+291)}
; 1.32778538345223839911568575189448893070220947265625 967 I == 1.32778538345223839911568575189448893070220947265625 967
; [HW: 1.32778538345223839911568575189448893070220947265625 967] 

; mpf : + 1476214130772996 967
; mpfd: + 1476214130772996 967 (1.65628e+291) class: Pos. norm. non-zero
; hwf : + 1476214130772996 967 (1.65628e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b0101001111101001101111100010111000001000110000000100)))
(assert (= r (fp #b0 #b11111000110 #b0101001111101001101111100010111000001000110000000100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
