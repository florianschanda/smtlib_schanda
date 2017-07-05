(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9558406191992070422003280327771790325641632080078125p162 {- 4304723456451133 162 (-1.14339e+049)}
; Y = -1.82155501083892712443912387243472039699554443359375p901 {- 3699954840678556 901 (-3.07942e+271)}
; -1.9558406191992070422003280327771790325641632080078125p162 * -1.82155501083892712443912387243472039699554443359375p901 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010100001 #b1111010010110001111110001000011110100110001000111101)))
(assert (= y (fp #b1 #b11110000100 #b1101001001010001011011011101111101101011000010011100)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
