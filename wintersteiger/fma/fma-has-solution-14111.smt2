(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4598584016952791397869759748573414981365203857421875p941 {- 2071018126518051 941 (-2.71354e+283)}
; Y = -1.575801413562970765269710682332515716552734375p870 {- 2593179031561600 870 (-1.2405e+262)}
; Z = 1.8037788670719734351877150402287952601909637451171875p-614 {+ 3619898206233619 -614 (2.65318e-185)}
; -1.4598584016952791397869759748573414981365203857421875p941 x -1.575801413562970765269710682332515716552734375p870 1.8037788670719734351877150402287952601909637451171875p-614 == 1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b1 #b11110101100 #b0111010110111001010001111011110000010010011100100011)))
(assert (= y (fp #b1 #b11101100101 #b1001001101100111101110001011000000111110010110000000)))
(assert (= z (fp #b0 #b00110011001 #b1100110111000100011100111010101101001010010000010011)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
