(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.175753656509885392011938165524043142795562744140625p-3 {- 791524101966922 -3 (-0.146969)}
; -1.175753656509885392011938165524043142795562744140625p-3 | == 1.175753656509885392011938165524043142795562744140625p-3
; [HW: 1.175753656509885392011938165524043142795562744140625p-3] 

; mpf : + 791524101966922 -3
; mpfd: + 791524101966922 -3 (0.146969) class: Pos. norm. non-zero
; hwf : + 791524101966922 -3 (0.146969) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111100 #b0010110011111110001100010000111011011100110001001010)))
(assert (= r (fp #b0 #b01111111100 #b0010110011111110001100010000111011011100110001001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
