(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8833411628410681171175156123354099690914154052734375p716 {- 3978214931812055 716 (-6.49241e+215)}
; Y = 1.390784482091504958845007422496564686298370361328125p583 {+ 1759936847929474 583 (4.40299e+175)}
; -1.8833411628410681171175156123354099690914154052734375p716 M 1.390784482091504958845007422496564686298370361328125p583 == 1.390784482091504958845007422496564686298370361328125p583
; [HW: 1.390784482091504958845007422496564686298370361328125p583] 

; mpf : + 1759936847929474 583
; mpfd: + 1759936847929474 583 (4.40299e+175) class: Pos. norm. non-zero
; hwf : + 1759936847929474 583 (4.40299e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011001011 #b1110001000100010101001010111110110011100111011010111)))
(assert (= y (fp #b0 #b11001000110 #b0110010000001010011100111010101001011110000010000010)))
(assert (= r (fp #b0 #b11001000110 #b0110010000001010011100111010101001011110000010000010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
