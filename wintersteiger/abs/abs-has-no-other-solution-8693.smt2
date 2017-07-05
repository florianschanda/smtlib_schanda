(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.97368515078073158974802936427295207977294921875p-722 {- 4385088082232288 -722 (-8.94584e-218)}
; -1.97368515078073158974802936427295207977294921875p-722 | == 1.97368515078073158974802936427295207977294921875p-722
; [HW: 1.97368515078073158974802936427295207977294921875p-722] 

; mpf : + 4385088082232288 -722
; mpfd: + 4385088082232288 -722 (8.94584e-218) class: Pos. norm. non-zero
; hwf : + 4385088082232288 -722 (8.94584e-218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101101 #b1111100101000011011011100001011100110100001111100000)))
(assert (= r (fp #b0 #b00100101101 #b1111100101000011011011100001011100110100001111100000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
