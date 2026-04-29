(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8272027914484276767126402774010784924030303955078125p-672 {+ 3725390183326973 -672 (9.32459e-203)}
; 1.8272027914484276767126402774010784924030303955078125p-672 S == 1.3517406524361199604555849873577244579792022705078125p-336
; [HW: 1.3517406524361199604555849873577244579792022705078125p-336] 

; mpf : + 1584099071242365 -336
; mpfd: + 1584099071242365 -336 (9.65639e-102) class: Pos. norm. non-zero
; hwf : + 1584099071242365 -336 (9.65639e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011111 #b1101001111000011100011111110100001101110010011111101)))
(assert (= r (fp #b0 #b01010101111 #b0101101000001011101011001110011011100011000001111101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
