(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8332035066405689693880276536219753324985504150390625p944 {+ 3752415002030257 944 (2.726e+284)}
; 1.8332035066405689693880276536219753324985504150390625p944 | == 1.8332035066405689693880276536219753324985504150390625p944
; [HW: 1.8332035066405689693880276536219753324985504150390625p944] 

; mpf : + 3752415002030257 944
; mpfd: + 3752415002030257 944 (2.726e+284) class: Pos. norm. non-zero
; hwf : + 3752415002030257 944 (2.726e+284) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101111 #b1101010101001100110100110011001111101111000010110001)))
(assert (= r (fp #b0 #b11110101111 #b1101010101001100110100110011001111101111000010110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
