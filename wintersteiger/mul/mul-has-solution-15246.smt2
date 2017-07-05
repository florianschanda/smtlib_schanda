(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02981152481947191290601040236651897430419921875p555 {+ 134259172068320 555 (1.21452e+167)}
; Y = 1.22751707755417527323515969328582286834716796875p561 {+ 1024645825693408 561 (9.26521e+168)}
; 1.02981152481947191290601040236651897430419921875p555 * 1.22751707755417527323515969328582286834716796875p561 == 1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b0 #b11000101010 #b0000011110100001101110100110010000100100101111100000)))
(assert (= y (fp #b0 #b11000110000 #b0011101000111110100011110010011101100000011011100000)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
