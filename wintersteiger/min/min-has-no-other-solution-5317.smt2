(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4736234714562892467171195676201023161411285400390625p-3 {+ 2133010489564465 -3 (0.184203)}
; Y = 1.173285132917022632881298704887740314006805419921875p-97 {+ 780406860033950 -97 (7.40447e-030)}
; 1.4736234714562892467171195676201023161411285400390625p-3 m 1.173285132917022632881298704887740314006805419921875p-97 == 1.173285132917022632881298704887740314006805419921875p-97
; [HW: 1.173285132917022632881298704887740314006805419921875p-97] 

; mpf : + 780406860033950 -97
; mpfd: + 780406860033950 -97 (7.40447e-030) class: Pos. norm. non-zero
; hwf : + 780406860033950 -97 (7.40447e-030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111100 #b0111100100111111011000110100100010000101110100110001)))
(assert (= y (fp #b0 #b01110011110 #b0010110001011100011010100001101011000010111110011110)))
(assert (= r (fp #b0 #b01110011110 #b0010110001011100011010100001101011000010111110011110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
