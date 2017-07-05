(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.23002041793985750217643726500682532787322998046875p-621 {- 1035919868521548 -621 (-1.41346e-187)}
; -1.23002041793985750217643726500682532787322998046875p-621 | == 1.23002041793985750217643726500682532787322998046875p-621
; [HW: 1.23002041793985750217643726500682532787322998046875p-621] 

; mpf : + 1035919868521548 -621
; mpfd: + 1035919868521548 -621 (1.41346e-187) class: Pos. norm. non-zero
; hwf : + 1035919868521548 -621 (1.41346e-187) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010010 #b0011101011100010100111100011110001110110110001001100)))
(assert (= r (fp #b0 #b00110010010 #b0011101011100010100111100011110001110110110001001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
