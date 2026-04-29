(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4622261476486879683278630182030610740184783935546875p-574 {+ 2081681506311531 -574 (2.36481e-173)}
; 1.4622261476486879683278630182030610740184783935546875p-574 S == 1.2092254329316298733232315498753450810909271240234375p-287
; [HW: 1.2092254329316298733232315498753450810909271240234375p-287] 

; mpf : + 942267581787319 -287
; mpfd: + 942267581787319 -287 (4.86294e-087) class: Pos. norm. non-zero
; hwf : + 942267581787319 -287 (4.86294e-087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000001 #b0111011001010100011100111110101110000001110101101011)))
(assert (= r (fp #b0 #b01011100000 #b0011010110001111110011000100011111101110110010110111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
