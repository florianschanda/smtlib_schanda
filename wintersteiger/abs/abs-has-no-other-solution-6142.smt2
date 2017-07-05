(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.421883869936925837151875384734012186527252197265625p203 {+ 1899996039441562 203 (1.8279e+061)}
; 1.421883869936925837151875384734012186527252197265625p203 | == 1.421883869936925837151875384734012186527252197265625p203
; [HW: 1.421883869936925837151875384734012186527252197265625p203] 

; mpf : + 1899996039441562 203
; mpfd: + 1899996039441562 203 (1.8279e+061) class: Pos. norm. non-zero
; hwf : + 1899996039441562 203 (1.8279e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001010 #b0110110000000000100101001101000000010110110010011010)))
(assert (= r (fp #b0 #b10011001010 #b0110110000000000100101001101000000010110110010011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
