(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.12671738814075705903405832941643893718719482421875p-917 {- 570684382012076 -917 (-1.01697e-276)}
; Y = -1.744888104402331663322911481373012065887451171875p868 {- 3354677789419056 868 (-3.43403e+261)}
; -1.12671738814075705903405832941643893718719482421875p-917 % -1.744888104402331663322911481373012065887451171875p868 == -1.12671738814075705903405832941643893718719482421875p-917
; [HW: -1.12671738814075705903405832941643893718719482421875p-917] 

; mpf : - 570684382012076 -917
; mpfd: - 570684382012076 -917 (-1.01697e-276) class: Neg. norm. non-zero
; hwf : - 570684382012076 -917 (-1.01697e-276) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101010 #b0010000001110000100011001111110111100110001010101100)))
(assert (= y (fp #b1 #b11101100011 #b1011111010110000111111001001111110010110011000110000)))
(assert (= r (fp #b1 #b00001101010 #x20708cfde62ac)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
