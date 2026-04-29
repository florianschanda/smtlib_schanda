(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.410904719682835928296071870136074721813201904296875p6 {- 1850550342448398 6 (-90.2979)}
; -1.410904719682835928296071870136074721813201904296875p6 | == 1.410904719682835928296071870136074721813201904296875p6
; [HW: 1.410904719682835928296071870136074721813201904296875p6] 

; mpf : + 1850550342448398 6
; mpfd: + 1850550342448398 6 (90.2979) class: Pos. norm. non-zero
; hwf : + 1850550342448398 6 (90.2979) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000101 #b0110100100110001000011010011110011001111010100001110)))
(assert (= r (fp #b0 #b10000000101 #b0110100100110001000011010011110011001111010100001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
