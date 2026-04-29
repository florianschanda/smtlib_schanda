(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.603369552303902434431392975966446101665496826171875p61 {- 2717334890922558 61 (-3.69712e+018)}
; Y = -1.6478831764747188248776410546270199120044708251953125p-139 {- 2917806432151157 -139 (-2.3646e-042)}
; -1.603369552303902434431392975966446101665496826171875p61 < -1.6478831764747188248776410546270199120044708251953125p-139 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111100 #b1001101001110110011011010100111010001100001000111110)))
(assert (= y (fp #b1 #b01101110100 #b1010010111011011101010111111111010010110011001110101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
