(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.01580635641574001937215143698267638683319091796875p-420 {- 71185500864012 -420 (-3.75157e-127)}
; -1.01580635641574001937215143698267638683319091796875p-420 | == 1.01580635641574001937215143698267638683319091796875p-420
; [HW: 1.01580635641574001937215143698267638683319091796875p-420] 

; mpf : + 71185500864012 -420
; mpfd: + 71185500864012 -420 (3.75157e-127) class: Pos. norm. non-zero
; hwf : + 71185500864012 -420 (3.75157e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011011 #b0000010000001011111000101010011111011111111000001100)))
(assert (= r (fp #b0 #b01001011011 #b0000010000001011111000101010011111011111111000001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
