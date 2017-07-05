(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7936256323893218223020085133612155914306640625p216 {- 3574172102300224 216 (-1.88891e+065)}
; -1.7936256323893218223020085133612155914306640625p216 | == 1.7936256323893218223020085133612155914306640625p216
; [HW: 1.7936256323893218223020085133612155914306640625p216] 

; mpf : + 3574172102300224 216
; mpfd: + 3574172102300224 216 (1.88891e+065) class: Pos. norm. non-zero
; hwf : + 3574172102300224 216 (1.88891e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010111 #b1100101100101011000011001010100001100001001001000000)))
(assert (= r (fp #b0 #b10011010111 #b1100101100101011000011001010100001100001001001000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
