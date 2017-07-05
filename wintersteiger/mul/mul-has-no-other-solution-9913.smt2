(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6932405184436618572618726830114610493183135986328125p691 {- 3122077740541005 691 (-1.73959e+208)}
; Y = -1.7707582590242030295968334030476398766040802001953125p763 {- 3471186608134133 763 (-8.59104e+229)}
; -1.6932405184436618572618726830114610493183135986328125p691 * -1.7707582590242030295968334030476398766040802001953125p763 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110010 #b1011000101111000001101011110101011111010010001001101)))
(assert (= y (fp #b1 #b11011111010 #b1100010101010000011010011100101110100001011111110101)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
