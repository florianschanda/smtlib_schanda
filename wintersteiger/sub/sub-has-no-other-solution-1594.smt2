(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60217084233819928584807712468318641185760498046875p580 {+ 2711936381167692 580 (6.34025e+174)}
; Y = -1.992547211437132315126063986099325120449066162109375p197 {- 4470035251575894 197 (-4.00237e+059)}
; 1.60217084233819928584807712468318641185760498046875p580 - -1.992547211437132315126063986099325120449066162109375p197 == 1.60217084233819928584807712468318641185760498046875p580
; [HW: 1.60217084233819928584807712468318641185760498046875p580] 

; mpf : + 2711936381167692 580
; mpfd: + 2711936381167692 580 (6.34025e+174) class: Pos. norm. non-zero
; hwf : + 2711936381167692 580 (6.34025e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000011 #b1001101000100111110111100100101001110010100001001100)))
(assert (= y (fp #b1 #b10011000100 #b1111111000010111100100101111010011011011110001010110)))
(assert (= r (fp #b0 #b11001000011 #b1001101000100111110111100100101001110010100001001100)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
