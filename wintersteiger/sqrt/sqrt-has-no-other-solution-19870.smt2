(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.393224343151361122039588735788129270076751708984375p949 {+ 1770925005289478 949 (6.62959e+285)}
; 1.393224343151361122039588735788129270076751708984375p949 S == 1.6692659124006341553325682980357669293880462646484375p474
; [HW: 1.6692659124006341553325682980357669293880462646484375p474] 

; mpf : + 3014105713699271 474
; mpfd: + 3014105713699271 474 (8.14223e+142) class: Pos. norm. non-zero
; hwf : + 3014105713699271 474 (8.14223e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110100 #b0110010010101010010110011011110111010011100000000110)))
(assert (= r (fp #b0 #b10111011001 #b1010101101010101000000101100011000010110100111000111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
