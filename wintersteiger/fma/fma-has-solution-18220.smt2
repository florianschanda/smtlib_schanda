(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.288968782307513993856673550908453762531280517578125p236 {- 1301399700321826 236 (-1.42338e+071)}
; Y = -1.1981223896630284198039362308918498456478118896484375p924 {- 892263920260167 924 (-1.69909e+278)}
; Z = -1.27997031308230813095860867178998887538909912109375p-421 {- 1260874197672284 -421 (-2.36359e-127)}
; -1.288968782307513993856673550908453762531280517578125p236 x -1.1981223896630284198039362308918498456478118896484375p924 -1.27997031308230813095860867178998887538909912109375p-421 == 1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b1 #b10011101011 #b0100100111111001110110111010110110010011011000100010)))
(assert (= y (fp #b1 #b11110011011 #b0011001010111000001001100010000000110101010001000111)))
(assert (= z (fp #b1 #b01001011010 #b0100011110101100001000100110101010001010000101011100)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
