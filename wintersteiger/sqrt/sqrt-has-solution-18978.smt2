(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.54286359563751762635774866794236004352569580078125p259 {+ 2444840287026132 259 (1.42921e+078)}
; 1.54286359563751762635774866794236004352569580078125p259 S == 1.75662380471034129669760659453459084033966064453125p129
; [HW: 1.75662380471034129669760659453459084033966064453125p129] 

; mpf : + 3407530684953140 129
; mpfd: + 3407530684953140 129 (1.1955e+039) class: Pos. norm. non-zero
; hwf : + 3407530684953140 129 (1.1955e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000010 #b1000101011111001000110111100110101110011101111010100)))
(assert (= r (fp #b0 #b10010000000 #b1100000110110010000110010000000010011011001000110100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
