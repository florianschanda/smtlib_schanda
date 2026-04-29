(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8823192886556856517898950187372975051403045654296875p-542 {+ 3973612819611547 -542 (1.30748e-163)}
; 1.8823192886556856517898950187372975051403045654296875p-542 S == 1.3719764169458910085808156509301625192165374755859375p-271
; [HW: 1.3719764169458910085808156509301625192165374755859375p-271] 

; mpf : + 1675232852748127 -271
; mpfd: + 1675232852748127 -271 (3.61591e-082) class: Pos. norm. non-zero
; hwf : + 1675232852748127 -271 (3.61591e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100001 #b1110000111011111101011010100100101100111111110011011)))
(assert (= r (fp #b0 #b01011110000 #b0101111100111001110110001011000110101010011101011111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
