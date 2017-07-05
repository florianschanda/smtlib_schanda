(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9724327466656019769430940868915058672428131103515625p547 {- 4379447755526073 547 (-9.08678e+164)}
; Y = -1.7047591633300898106284648747532628476619720458984375p-689 {- 3173953105359335 -689 (-6.63737e-208)}
; -1.9724327466656019769430940868915058672428131103515625p547 = -1.7047591633300898106284648747532628476619720458984375p-689 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100010 #b1111100011110001010110100011110001111100111110111001)))
(assert (= y (fp #b1 #b00101001110 #b1011010001101011000110001011011000001111000111100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
