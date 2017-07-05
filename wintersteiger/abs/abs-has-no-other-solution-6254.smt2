(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.732323308215327539727468320052139461040496826171875p912 {+ 3298090977993278 912 (5.9977e+274)}
; 1.732323308215327539727468320052139461040496826171875p912 | == 1.732323308215327539727468320052139461040496826171875p912
; [HW: 1.732323308215327539727468320052139461040496826171875p912] 

; mpf : + 3298090977993278 912
; mpfd: + 3298090977993278 912 (5.9977e+274) class: Pos. norm. non-zero
; hwf : + 3298090977993278 912 (5.9977e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001111 #b1011101101111001100010100101001011100010001000111110)))
(assert (= r (fp #b0 #b11110001111 #b1011101101111001100010100101001011100010001000111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
