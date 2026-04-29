(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1215025989280957841032204669318161904811859130859375p-881 {+ 547199059257119 -881 (6.95623e-266)}
; 1.1215025989280957841032204669318161904811859130859375p-881 S == 1.4976665843425205348893314294400624930858612060546875p-441
; [HW: 1.4976665843425205348893314294400624930858612060546875p-441] 

; mpf : + 2241291043799723 -441
; mpfd: + 2241291043799723 -441 (2.63747e-133) class: Pos. norm. non-zero
; hwf : + 2241291043799723 -441 (2.63747e-133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001110 #b0001111100011010110010110101100011000110011100011111)))
(assert (= r (fp #b0 #b01001000110 #b0111111101100111000100111100100000010000001010101011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
