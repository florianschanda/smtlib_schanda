(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9707519567602467258637943814392201602458953857421875p-990 {+ 4371878150734627 -990 (1.88337e-298)}
; 1.9707519567602467258637943814392201602458953857421875p-990 S == 1.4038347327090348048983514672727324068546295166015625p-495
; [HW: 1.4038347327090348048983514672727324068546295166015625p-495] 

; mpf : + 1818709951747673 -495
; mpfd: + 1818709951747673 -495 (1.37236e-149) class: Pos. norm. non-zero
; hwf : + 1818709951747673 -495 (1.37236e-149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000100001 #b1111100010000011001100110100001011010000001100100011)))
(assert (= r (fp #b0 #b01000010000 #b0110011101100001101101101000100111111001011001011001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
