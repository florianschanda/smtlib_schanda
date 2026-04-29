(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.194932810068648709744820735068060457706451416015625p-866 {- 877899330787450 -866 (-2.42866e-261)}
; -1.194932810068648709744820735068060457706451416015625p-866 | == 1.194932810068648709744820735068060457706451416015625p-866
; [HW: 1.194932810068648709744820735068060457706451416015625p-866] 

; mpf : + 877899330787450 -866
; mpfd: + 877899330787450 -866 (2.42866e-261) class: Pos. norm. non-zero
; hwf : + 877899330787450 -866 (2.42866e-261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011101 #b0011000111100111000111011101110000101001100001111010)))
(assert (= r (fp #b0 #b00010011101 #b0011000111100111000111011101110000101001100001111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
