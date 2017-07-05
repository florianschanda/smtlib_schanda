(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.017344982200512948367077115108259022235870361328125p988 {- 78114855374978 988 (-2.66136e+297)}
; Y = -1.002424087984703948706055598449893295764923095703125p-491 {- 10917121744626 -491 (-1.56792e-148)}
; -1.017344982200512948367077115108259022235870361328125p988 / -1.002424087984703948706055598449893295764923095703125p-491 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011011 #b0000010001110000101110001000001101001101000010000010)))
(assert (= y (fp #b1 #b01000010100 #b0000000010011110110111010111001010011101111011110010)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
