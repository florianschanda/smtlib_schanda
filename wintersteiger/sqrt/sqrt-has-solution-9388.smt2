(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.430261021915012253913346285116858780384063720703125p-300 {+ 1937723377968498 -300 (7.02129e-091)}
; 1.430261021915012253913346285116858780384063720703125p-300 S == 1.195935208075676658978636623942293226718902587890625p-150
; [HW: 1.195935208075676658978636623942293226718902587890625p-150] 

; mpf : + 882413730078378 -150
; mpfd: + 882413730078378 -150 (8.37931e-046) class: Pos. norm. non-zero
; hwf : + 882413730078378 -150 (8.37931e-046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010011 #b0110111000100101100101100001100111011110010101110010)))
(assert (= r (fp #b0 #b01101101001 #b0011001000101000110011110100111011010001111010101010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
