(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4108874813063707609472885451395995914936065673828125p-970 {+ 1850472707702573 -970 (1.41383e-292)}
; 1.4108874813063707609472885451395995914936065673828125p-970 S == 1.187807846962786850752991085755638778209686279296875p-485
; [HW: 1.187807846962786850752991085755638778209686279296875p-485] 

; mpf : + 845811349598862 -485
; mpfd: + 845811349598862 -485 (1.18905e-146) class: Pos. norm. non-zero
; hwf : + 845811349598862 -485 (1.18905e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110101 #b0110100100101111111011000000011010001011111100101101)))
(assert (= r (fp #b0 #b01000011010 #b0011000000010100001011001101000010100011001010001110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
