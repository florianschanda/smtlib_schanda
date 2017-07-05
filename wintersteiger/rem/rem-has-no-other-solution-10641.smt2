(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.441144021379854311959434198797680437564849853515625p-784 {+ 1986736050303034 -784 (1.41642e-236)}
; Y = -1.3070586902056813283223846156033687293529510498046875p259 {- 1382869402791179 259 (-1.21078e+078)}
; 1.441144021379854311959434198797680437564849853515625p-784 % -1.3070586902056813283223846156033687293529510498046875p259 == 1.441144021379854311959434198797680437564849853515625p-784
; [HW: 1.441144021379854311959434198797680437564849853515625p-784] 

; mpf : + 1986736050303034 -784
; mpfd: + 1986736050303034 -784 (1.41642e-236) class: Pos. norm. non-zero
; hwf : + 1986736050303034 -784 (1.41642e-236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101111 #b0111000011101110110100001000100010100111000000111010)))
(assert (= y (fp #b1 #b10100000010 #b0100111010011011011001011111100001100010110100001011)))
(assert (= r (fp #b0 #b00011101111 #x70eed088a703a)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
