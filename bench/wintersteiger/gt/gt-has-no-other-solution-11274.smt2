(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.21616138620945601900302790454588830471038818359375p-903 {- 973504338384796 -903 (-1.79848e-272)}
; Y = -1.240913952100096917519067574176006019115447998046875p896 {- 1084979984906350 896 (-6.55568e+269)}
; -1.21616138620945601900302790454588830471038818359375p-903 > -1.240913952100096917519067574176006019115447998046875p896 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111000 #b0011011101010110010110100100010001101101011110011100)))
(assert (= y (fp #b1 #b11101111111 #b0011110110101100100010010110100101101011100001101110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
