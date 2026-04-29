(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.905983486709032614925263260374777019023895263671875p-947 {- 4080186893146622 -947 (-1.60219e-285)}
; -1.905983486709032614925263260374777019023895263671875p-947 | == 1.905983486709032614925263260374777019023895263671875p-947
; [HW: 1.905983486709032614925263260374777019023895263671875p-947] 

; mpf : + 4080186893146622 -947
; mpfd: + 4080186893146622 -947 (1.60219e-285) class: Pos. norm. non-zero
; hwf : + 4080186893146622 -947 (1.60219e-285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001100 #b1110011111101110100010001010011000100001100111111110)))
(assert (= r (fp #b0 #b00001001100 #b1110011111101110100010001010011000100001100111111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
