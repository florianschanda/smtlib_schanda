(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.171392410779437565082616856670938432216644287109375p-462 {+ 771882797320406 -462 (9.83659e-140)}
; 1.171392410779437565082616856670938432216644287109375p-462 S == 1.0823088333647830072692386238486506044864654541015625p-231
; [HW: 1.0823088333647830072692386238486506044864654541015625p-231] 

; mpf : + 370686031270937 -231
; mpfd: + 370686031270937 -231 (3.13633e-070) class: Pos. norm. non-zero
; hwf : + 370686031270937 -231 (3.13633e-070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110001 #b0010101111100000010111110111111100010100100011010110)))
(assert (= r (fp #b0 #b01100011000 #b0001010100010010001100010001001101111001010000011001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
