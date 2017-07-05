(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5716620302669905839820785331539809703826904296875p-799 {- 2574536906492280 -799 (-4.71403e-241)}
; -1.5716620302669905839820785331539809703826904296875p-799 | == 1.5716620302669905839820785331539809703826904296875p-799
; [HW: 1.5716620302669905839820785331539809703826904296875p-799] 

; mpf : + 2574536906492280 -799
; mpfd: + 2574536906492280 -799 (4.71403e-241) class: Pos. norm. non-zero
; hwf : + 2574536906492280 -799 (4.71403e-241) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100000 #b1001001001011000011100010101110001011100100101111000)))
(assert (= r (fp #b0 #b00011100000 #b1001001001011000011100010101110001011100100101111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
