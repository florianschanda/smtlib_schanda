(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.16196547830381735622040650923736393451690673828125p702 {- 729427667735956 702 (-2.44484e+211)}
; Y = -1.6083984219525457870503259982797317206859588623046875p394 {- 2739982906398283 394 (-6.48951e+118)}
; -1.16196547830381735622040650923736393451690673828125p702 * -1.6083984219525457870503259982797317206859588623046875p394 == 1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b1 #b11010111101 #b0010100101110110100100011101000001100101010110010100)))
(assert (= y (fp #b1 #b10110001001 #b1001101110111111111111111011110100111001011001001011)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
