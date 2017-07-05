(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.763871296527660614827937024529092013835906982421875p569 {+ 3440170486400990 569 (3.40827e+171)}
; 1.763871296527660614827937024529092013835906982421875p569 S == 1.8782285784896686209322069771587848663330078125p284
; [HW: 1.8782285784896686209322069771587848663330078125p284] 

; mpf : + 3955189898832192 284
; mpfd: + 3955189898832192 284 (5.83804e+085) class: Pos. norm. non-zero
; hwf : + 3955189898832192 284 (5.83804e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111000 #b1100001110001101000100011011110011110000011111011110)))
(assert (= r (fp #b0 #b10100011011 #b1110000011010011100101101000111100000110100101000000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
