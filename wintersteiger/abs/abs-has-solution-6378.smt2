(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.68694533436315641239389151451177895069122314453125p692 {+ 3093726751861812 692 (3.46624e+208)}
; 1.68694533436315641239389151451177895069122314453125p692 | == 1.68694533436315641239389151451177895069122314453125p692
; [HW: 1.68694533436315641239389151451177895069122314453125p692] 

; mpf : + 3093726751861812 692
; mpfd: + 3093726751861812 692 (3.46624e+208) class: Pos. norm. non-zero
; hwf : + 3093726751861812 692 (3.46624e+208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110011 #b1010111111011011101001100100000100111010110000110100)))
(assert (= r (fp #b0 #b11010110011 #b1010111111011011101001100100000100111010110000110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
