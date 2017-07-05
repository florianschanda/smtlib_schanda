(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1902868738802878656457551187486387789249420166015625p697 {+ 856975894300761 697 (7.82634e+209)}
; Y = 1.0999849142161737258760467739193700253963470458984375p359 {+ 450292022406631 359 (1.29168e+108)}
; Z = -1.1949387696334294872713144286535680294036865234375p-266 {- 877926170281176 -266 (-1.00778e-080)}
; 1.1902868738802878656457551187486387789249420166015625p697 x 1.0999849142161737258760467739193700253963470458984375p359 -1.1949387696334294872713144286535680294036865234375p-266 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010111000 #b0011000010110110101000111111110000101100100001011001)))
(assert (= y (fp #b0 #b10101100110 #b0001100110011000100111001000000010100110110111100111)))
(assert (= z (fp #b1 #b01011110101 #b0011000111100111100000011101100001001100010011011000)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
