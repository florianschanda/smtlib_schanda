(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.38657784985228982321814328315667808055877685546875p416 {+ 1740991860544460 416 (2.34651e+125)}
; Y = -0.726187534861634009786257593077607452869415283203125p-1022 {- 3270457911403954 -1023 (-1.61582e-308)}
; 1.38657784985228982321814328315667808055877685546875p416 / -0.726187534861634009786257593077607452869415283203125p-1022 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011111 #b0110001011110110110001000001011001111001001111001100)))
(assert (= y (fp #b1 #b00000000000 #b1011100111100111011011010010000011111110010110110010)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
