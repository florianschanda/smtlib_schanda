(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5780503588109950907636402916978113353252410888671875p507 {+ 2603307380542579 507 (6.61194e+152)}
; 1.5780503588109950907636402916978113353252410888671875p507 S == 1.776541786061332839352644441532902419567108154296875p253
; [HW: 1.776541786061332839352644441532902419567108154296875p253] 

; mpf : + 3497233298343438 253
; mpfd: + 3497233298343438 253 (2.57137e+076) class: Pos. norm. non-zero
; hwf : + 3497233298343438 253 (2.57137e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111010 #b1001001111111011000110111011101010001000110001110011)))
(assert (= r (fp #b0 #b10011111100 #b1100011011001011011100010100011100011100011000001110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
