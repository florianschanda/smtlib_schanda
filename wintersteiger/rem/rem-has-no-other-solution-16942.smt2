(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.084367328950294417921895728795789182186126708984375p441 {+ 379956671222790 441 (6.1575e+132)}
; Y = -1.11748432301393574306302980403415858745574951171875p1 {- 529102353347436 1 (-2.23497)}
; 1.084367328950294417921895728795789182186126708984375p441 % -1.11748432301393574306302980403415858745574951171875p1 == 1.03148903616777687375360983423888683319091796875p1
; [HW: 1.03148903616777687375360983423888683319091796875p1] 

; mpf : + 141814011551456 1
; mpfd: + 141814011551456 1 (2.06298) class: Pos. norm. non-zero
; hwf : + 141814011551456 1 (2.06298) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111000 #b0001010110011001000110001110011010110001010000000110)))
(assert (= y (fp #b1 #b10000000000 #b0001111000010011011100111101110100100011001101101100)))
(assert (= r (fp #b1 #b01111111100 #x603c9809d48c0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
