(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4904131040679102770951658385456539690494537353515625p-1018 {+ 2208624272737849 -1018 (5.30605e-307)}
; 1.4904131040679102770951658385456539690494537353515625p-1018 S == 1.220824763865768769477426758385263383388519287109375p-509
; [HW: 1.220824763865768769477426758385263383388519287109375p-509] 

; mpf : + 994506324260054 -509
; mpfd: + 994506324260054 -509 (7.28426e-154) class: Pos. norm. non-zero
; hwf : + 994506324260054 -509 (7.28426e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000101 #b0111110110001011101101101001001110000000011000111001)))
(assert (= r (fp #b0 #b01000000010 #b0011100010000111111110001100001011110011010011010110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
