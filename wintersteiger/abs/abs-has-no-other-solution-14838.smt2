(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.281365045188664009145895761321298778057098388671875p-240 {- 1267155512666750 -240 (-7.25227e-073)}
; -1.281365045188664009145895761321298778057098388671875p-240 | == 1.281365045188664009145895761321298778057098388671875p-240
; [HW: 1.281365045188664009145895761321298778057098388671875p-240] 

; mpf : + 1267155512666750 -240
; mpfd: + 1267155512666750 -240 (7.25227e-073) class: Pos. norm. non-zero
; hwf : + 1267155512666750 -240 (7.25227e-073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001111 #b0100100000000111100010100010001101010010101001111110)))
(assert (= r (fp #b0 #b01100001111 #b0100100000000111100010100010001101010010101001111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
