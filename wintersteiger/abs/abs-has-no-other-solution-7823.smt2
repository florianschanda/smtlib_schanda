(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.54325135829444359814033305156044661998748779296875p-264 {+ 2446586614783372 -264 (5.20616e-080)}
; 1.54325135829444359814033305156044661998748779296875p-264 | == 1.54325135829444359814033305156044661998748779296875p-264
; [HW: 1.54325135829444359814033305156044661998748779296875p-264] 

; mpf : + 2446586614783372 -264
; mpfd: + 2446586614783372 -264 (5.20616e-080) class: Pos. norm. non-zero
; hwf : + 2446586614783372 -264 (5.20616e-080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110111 #b1000101100010010100001010110000101100001110110001100)))
(assert (= r (fp #b0 #b01011110111 #b1000101100010010100001010110000101100001110110001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
