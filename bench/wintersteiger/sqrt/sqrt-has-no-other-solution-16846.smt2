(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9366921976751763079249712973251007497310638427734375p774 {+ 4218486632410775 774 (1.92432e+233)}
; 1.9366921976751763079249712973251007497310638427734375p774 S == 1.3916508892948604714234761559055186808109283447265625p387
; [HW: 1.3916508892948604714234761559055186808109283447265625p387] 

; mpf : + 1763838799087657 387
; mpfd: + 1763838799087657 387 (4.38671e+116) class: Pos. norm. non-zero
; hwf : + 1763838799087657 387 (4.38671e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000101 #b1110111111001011000011110101001101101110111010010111)))
(assert (= r (fp #b0 #b10110000010 #b0110010001000011001110111001000011111000100000101001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
