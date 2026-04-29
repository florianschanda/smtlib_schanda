(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2034718541940654379374109339551068842411041259765625p250 {- 916355766728777 250 (-2.17738e+075)}
; Y = -1.6770746045330897633363065324374474585056304931640625p-570 {- 3049272936677249 -570 (-4.33965e-172)}
; -1.2034718541940654379374109339551068842411041259765625p250 < -1.6770746045330897633363065324374474585056304931640625p-570 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111001 #b0011010000010110101110110011111101101011100001001001)))
(assert (= y (fp #b1 #b00111000101 #b1010110101010100110000101110001101101011111110000001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
