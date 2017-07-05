(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3115966925934554598853765128296799957752227783203125p-735 {+ 1403306748653765 -735 (7.25694e-222)}
; 1.3115966925934554598853765128296799957752227783203125p-735 S == 1.6196275452050421517213862898643128573894500732421875p-368
; [HW: 1.6196275452050421517213862898643128573894500732421875p-368] 

; mpf : + 2790554381693923 -368
; mpfd: + 2790554381693923 -368 (2.69387e-111) class: Pos. norm. non-zero
; hwf : + 2790554381693923 -368 (2.69387e-111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100000 #b0100111111000100110011010000010000111011000011000101)))
(assert (= r (fp #b0 #b01010001111 #b1001111010011111111010010010101001011011001111100011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
