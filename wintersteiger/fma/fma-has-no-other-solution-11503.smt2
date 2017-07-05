(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5908049749191877086929025608696974813938140869140625p337 {+ 2660749064894689 337 (4.45375e+101)}
; Y = 1.273362640024565894947272681747563183307647705078125p963 {+ 1231115883751650 963 (9.92746e+289)}
; Z = -1.6997961043596594432614210745668970048427581787109375p690 {- 3151601474829487 690 (-8.7316e+207)}
; 1.5908049749191877086929025608696974813938140869140625p337 x 1.273362640024565894947272681747563183307647705078125p963 -1.6997961043596594432614210745668970048427581787109375p690 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010000 #b1001011100111110111111101010110110010111100011100001)))
(assert (= y (fp #b0 #b11111000010 #b0100010111111011000110000000111011011010100011100010)))
(assert (= z (fp #b1 #b11010110001 #b1011001100100101110101100110011000010111110010101111)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
