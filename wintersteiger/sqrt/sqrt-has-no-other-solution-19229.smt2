(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.809590793450393420016553136520087718963623046875p126 {+ 3646072795705776 126 (1.53943e+038)}
; 1.809590793450393420016553136520087718963623046875p126 S == 1.3452103156943129302902661947882734239101409912109375p63
; [HW: 1.3452103156943129302902661947882734239101409912109375p63] 

; mpf : + 1554689049125359 63
; mpfd: + 1554689049125359 63 (1.24074e+019) class: Pos. norm. non-zero
; hwf : + 1554689049125359 63 (1.24074e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111101 #b1100111101000001010101111001110100000011000110110000)))
(assert (= r (fp #b0 #b10000111110 #b0101100001011111101101000000100000100110000111101111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
